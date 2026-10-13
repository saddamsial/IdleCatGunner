using System;
using System.IO;
using System.Linq;
using System.Reflection;
using UnityEditor.TestTools.TestRunner.Api;
using UnityEngine;

// Targeted fallback for a stalled Pipeline RetrieveTestList callback.
// Runs the same native Unity tests and retains Pipeline's domain-safe reporter.
public static class RunArenaChecks
{
    public static string Raised()=>Run("RaisedSnowArenaTests");
    public static string Footprints()=>Run("CircularForestMapTests");
    static string Run(string fixture)
    {
        if(Application.isPlaying)throw new InvalidOperationException("Stop Play first.");
        var type=AppDomain.CurrentDomain.GetAssemblies().Select(a=>a.GetType(fixture)).FirstOrDefault(t=>t!=null);
        if(type==null)throw new InvalidOperationException("Missing compiled fixture: "+fixture);
        var names=type.GetMethods().Where(m=>m.GetCustomAttributesData().Any(a=>a.AttributeType.FullName=="UnityEngine.TestTools.UnityTestAttribute")).Select(m=>type.FullName+"."+m.Name).ToArray();
        if(names.Length==0)throw new InvalidOperationException("No Unity tests found.");
        File.WriteAllText("Temp/pipeline_test_request.json",Newtonsoft.Json.JsonConvert.SerializeObject(new{filter=fixture,filterType="testname",mode="PlayMode",includeExplicit=false,isSync=false}));
        if(File.Exists("Temp/pipeline_test_status.json"))File.Delete("Temp/pipeline_test_status.json");
        var reporter=AppDomain.CurrentDomain.GetAssemblies().Select(a=>a.GetType("Unity.Pipeline.Editor.Testing.PipelineTestRunner")).First(t=>t!=null);
        reporter.GetMethod("CheckForPendingTests",BindingFlags.Public|BindingFlags.Static).Invoke(null,null);
        var api=ScriptableObject.CreateInstance<TestRunnerApi>();
        var id=api.Execute(new ExecutionSettings(new Filter{testMode=TestMode.PlayMode,testNames=names}));
        return Newtonsoft.Json.JsonConvert.SerializeObject(new{job=id,fixture,count=names.Length,names});
    }
}
