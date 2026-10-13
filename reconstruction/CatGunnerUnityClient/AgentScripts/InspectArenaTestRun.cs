using System;
using System.Linq;
using System.Reflection;
using UnityEditor;
using UnityEditor.SceneManagement;
using UnityEditor.TestTools.TestRunner.Api;
using UnityEngine;

public static class InspectArenaTestRun
{
    public static string Inspect()
    {
        var flags=BindingFlags.Static|BindingFlags.NonPublic;
        var active=typeof(TestRunnerApi).GetMethod("IsRunActive",flags).Invoke(null,null);
        var holder=typeof(TestRunnerApi).GetProperty("m_testJobDataHolder",flags).GetValue(null);
        var runners=(Array)holder.GetType().GetMethod("GetAllRunners").Invoke(holder,null);
        return Newtonsoft.Json.JsonConvert.SerializeObject(new{
            scene=EditorSceneManager.GetActiveScene().path,playing=Application.isPlaying,paused=EditorApplication.isPaused,
            timeScale=Time.timeScale,active,runnerCount=runners.Length,
            jobs=runners.Cast<object>().Select(r=>r.GetType().GetMethod("GetData").Invoke(r,null)).Select(d=>d.GetType().GetFields().Where(f=>f.FieldType.IsPrimitive||f.FieldType==typeof(string)).ToDictionary(f=>f.Name,f=>f.GetValue(d)))
        });
    }
}
