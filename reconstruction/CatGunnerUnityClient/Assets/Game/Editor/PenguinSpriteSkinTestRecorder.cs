using System;
using System.IO;
using System.Linq;
using System.Collections.Generic;
using UnityEditor;
using UnityEditor.TestTools.TestRunner.Api;
using UnityEngine;

// Persist this batch's evidence independently of Pipeline's shared status file.
[InitializeOnLoad]
public static class PenguinSpriteSkinTestRecorder
{
    const string Key="CatGunner.Runtime.PenguinSpriteSkinRecording";
    static TestRunnerApi api;
    static Recorder recorder;
    static PenguinSpriteSkinTestRecorder(){EditorApplication.delayCall+=RegisterPending;}
    public static void Begin(){SessionState.SetBool(Key,true);RegisterPending();}
    static void RegisterPending()
    {
        if(!SessionState.GetBool(Key,false)||recorder!=null)return;
        api=ScriptableObject.CreateInstance<TestRunnerApi>();recorder=new Recorder();api.RegisterCallbacks(recorder);
    }
    static IEnumerable<ITestResultAdaptor> Leaves(ITestResultAdaptor result)
    {
        if(!result.HasChildren){if(!result.Test.IsSuite)yield return result;yield break;}
        foreach(var child in result.Children)foreach(var leaf in Leaves(child))yield return leaf;
    }
    sealed class Recorder:ICallbacks
    {
        public void RunStarted(ITestAdaptor tests){}
        public void TestStarted(ITestAdaptor test){}
        public void TestFinished(ITestResultAdaptor result){}
        public void RunFinished(ITestResultAdaptor result)
        {
            var leaves=Leaves(result).ToArray();
            string[] expected={
                "PenguinActionTests.NativeShotsExpressFocusAndNativeWinMakesThreeVisualHopsOnce",
                "PenguinActionTests.ShortWingTracksEquipmentWithoutMovingNativeMuzzle",
                "PenguinFullReskinTests.AllThreePenguinsAnimateSelectedSkinBlinkAndHonorPause",
                "PenguinSpriteSkinTests.CostumeChangesPreserveSkeletonAndSelectedTexture",
                "PenguinSpriteSkinTests.VisiblePenguinsUsePersistedBindPosesAndRealSpriteSkin",
                "PenguinThemeTests.NaturalCombatUsesPenguinAndIceWithoutFractureEffects",
                "PenguinThemeTests.PenguinIdleAndSideToSideWaddleMoveAndHonorPause",
                "PenguinThemeTests.SuccessfulShotRecoilTriggersOnceAndReturnsToRest"};
            if(!leaves.Select(r=>r.Test.FullName).OrderBy(n=>n).SequenceEqual(expected.OrderBy(n=>n)))return;
            var dir=Path.GetFullPath(Application.dataPath+"/../../../art/reskin/penguin-expedition/sprite-skin-v1");
            TestRunnerApi.SaveResultToFile(result,Path.Combine(dir,"tests-final.xml"));
            File.WriteAllText(Path.Combine(dir,"tests-final.json"),Newtonsoft.Json.JsonConvert.SerializeObject(new{
                status="completed",duration=result.Duration,summary=new{total=leaves.Length,passed=leaves.Count(r=>r.TestStatus==TestStatus.Passed),
                failed=leaves.Count(r=>r.TestStatus==TestStatus.Failed)},results=leaves.Select(r=>new{FullName=r.Test.FullName,Status=r.TestStatus.ToString(),r.Duration,r.Message,r.StackTrace})},Newtonsoft.Json.Formatting.Indented));
            SessionState.EraseBool(Key);
            EditorApplication.delayCall+=()=>{if(api!=null){api.UnregisterCallbacks(recorder);UnityEngine.Object.DestroyImmediate(api);}api=null;recorder=null;};
        }
    }
}
