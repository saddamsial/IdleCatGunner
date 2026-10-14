using System;
using System.IO;
using System.Linq;
using System.Reflection;
using UnityEditor.TestTools.TestRunner.Api;
using UnityEngine;

public static class RunPenguinMovementChecks
{
    public static string Run()=>Start(null);
    public static string Raid()=>Start("RaidNativeEntryJoystickAndTeamStayInsideCircularGround");
    static string Start(string method)
    {
        const string fixture="PenguinMovementBoundsTests";
        if(Application.isPlaying)throw new InvalidOperationException("Stop Play first.");
        var type=AppDomain.CurrentDomain.GetAssemblies().Select(a=>a.GetType(fixture)).First(t=>t!=null);
        var names=type.GetMethods().Where(m=>(method==null||m.Name==method)&&m.GetCustomAttributesData().Any(a=>a.AttributeType.FullName=="UnityEngine.TestTools.UnityTestAttribute")).Select(m=>type.FullName+"."+m.Name).ToArray();
        File.WriteAllText("Temp/pipeline_test_request.json",Newtonsoft.Json.JsonConvert.SerializeObject(new{filter=fixture,filterType="testname",mode="PlayMode",includeExplicit=false,isSync=false}));
        if(File.Exists("Temp/pipeline_test_status.json"))File.Delete("Temp/pipeline_test_status.json");
        var reporter=AppDomain.CurrentDomain.GetAssemblies().Select(a=>a.GetType("Unity.Pipeline.Editor.Testing.PipelineTestRunner")).First(t=>t!=null);
        reporter.GetMethod("CheckForPendingTests",BindingFlags.Public|BindingFlags.Static).Invoke(null,null);
        var api=ScriptableObject.CreateInstance<TestRunnerApi>();
        var id=api.Execute(new ExecutionSettings(new Filter{testMode=TestMode.PlayMode,testNames=names}));
        return Newtonsoft.Json.JsonConvert.SerializeObject(new{job=id,fixture,count=names.Length,names});
    }
}
