using System;
using System.Collections;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Reflection;
using UnityEngine;

// Runs the existing PlayMode fixture coroutines and NUnit assertions in the
// live Editor when Pipeline's test-result collector does not finish a run.
public static class RunWaveRadiusTests
{
    static string Dir=>"/Volumes/ZHITAI_1T/IdleCatGunner/art/maps/wave-radius-v1";
    static Exception failure;
    public static object Main(string phase="after")
    {
        if(Application.dataPath!="/Volumes/ZHITAI_1T/IdleCatGunner/reconstruction/CatGunnerUnityClient/Assets"||!Application.isPlaying)
            throw new Exception("Correct isolated PlayMode required");
        if(!UnityEditor.SessionState.GetString("CatGunner.Recovery.TestHostFolder","").Contains("WaveRadius"))throw new Exception("Isolated host required");
        var host=new GameObject("Wave radius fixture runner");UnityEngine.Object.DontDestroyOnLoad(host);
        var runner=host.AddComponent<CatGunner.Runtime.PenguinSceneryFacing>();runner.enabled=false;
        // Use a dedicated coroutine host without running the game's startup.
        runner.StartCoroutine(Run(host,phase));return new{started=true,phase};
    }
    static Type Find(string name)=>AppDomain.CurrentDomain.GetAssemblies().Select(a=>a.GetType(name)).First(t=>t!=null);
    static IEnumerator Drain(IEnumerator routine)
    {
        var stack=new Stack<IEnumerator>();stack.Push(routine);
        while(stack.Count>0)
        {
            object next=null;bool moved=false;
            try{moved=stack.Peek().MoveNext();if(moved)next=stack.Peek().Current;}
            catch(Exception ex){failure=ex;while(stack.Count>0)(stack.Pop() as IDisposable)?.Dispose();yield break;}
            if(!moved){stack.Pop();continue;}
            if(next is IEnumerator nested){stack.Push(nested);continue;}
            yield return next;
        }
    }
    static IEnumerator Run(GameObject host,string phase)
    {
        var rows=new List<object>();int passed=0,failed=0;
        foreach(string fixtureName in phase=="before"?new[]{"CircularForestMapTests"}:new[]{"CircularForestMapTests","RaisedSnowArenaTests"})
        {
            var type=Find(fixtureName);
            var methods=type.GetMethods().Where(m=>m.GetCustomAttributes(false).Any(a=>a.GetType().Name=="UnityTestAttribute")&&
                (phase!="before"||m.Name=="RadiusGrowsWithOriginalWavesAndTerrainFollows")).OrderBy(m=>m.Name).ToArray();
            foreach(var method in methods)
            {
                var fixture=Activator.CreateInstance(type);failure=null;
                yield return Drain((IEnumerator)type.GetMethod("Setup").Invoke(fixture,null));
                if(failure==null)yield return Drain((IEnumerator)method.Invoke(fixture,null));
                var testError=failure;failure=null;
                yield return Drain((IEnumerator)type.GetMethod("Cleanup").Invoke(fixture,null));
                var error=testError??failure;
                if(error==null)passed++;else failed++;
                rows.Add(new{name=fixtureName+"."+method.Name,passed=error==null,error=error?.ToString()});
                File.WriteAllText(Path.Combine(Dir,"fixtures-"+phase+".json"),Newtonsoft.Json.JsonConvert.SerializeObject(new{
                    status="running",runner="Live Editor coroutine harness using existing PlayMode fixture setup, NUnit assertions and cleanup",passed,failed,results=rows},Newtonsoft.Json.Formatting.Indented));
            }
        }
        File.WriteAllText(Path.Combine(Dir,"fixtures-"+phase+".json"),Newtonsoft.Json.JsonConvert.SerializeObject(new{
            status="completed",runner="Live Editor coroutine harness using existing PlayMode fixture setup, NUnit assertions and cleanup",passed,failed,total=passed+failed,results=rows},Newtonsoft.Json.Formatting.Indented));
        UnityEngine.Object.Destroy(host);
    }
}
