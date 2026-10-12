var assembly=typeof(UnityEditor.EditorApplication).Assembly;
var t=assembly.GetType("UnityEditor.LogEntries");var entryType=assembly.GetType("UnityEditor.LogEntry");
var flags=System.Reflection.BindingFlags.Public|System.Reflection.BindingFlags.NonPublic|System.Reflection.BindingFlags.Static;
object[] counts={0,0,0};t.GetMethod("GetCountsByType",flags).Invoke(null,counts);
var list=new List<object>();int n=(int)t.GetMethod("StartGettingEntries",flags).Invoke(null,null);
try{for(int i=0;i<n;i++){var entry=Activator.CreateInstance(entryType);t.GetMethod("GetEntryInternal",flags).Invoke(null,new[]{(object)i,entry});var f=System.Reflection.BindingFlags.Public|System.Reflection.BindingFlags.NonPublic|System.Reflection.BindingFlags.Instance;list.Add(new{message=entryType.GetField("message",f).GetValue(entry),mode=entryType.GetField("mode",f).GetValue(entry)});}}
finally{t.GetMethod("EndGettingEntries",flags).Invoke(null,null);}
var before=new{counts,entries=list,compiling=UnityEditor.EditorApplication.isCompiling,playing=UnityEditor.EditorApplication.isPlaying};
System.IO.File.WriteAllText("/Volumes/ZHITAI_1T/IdleCatGunner/reverse/com.Chodun.CatGunner/1.1.61-vc257/reports/mission-rejection-final-console.json",Newtonsoft.Json.JsonConvert.SerializeObject(before,Newtonsoft.Json.Formatting.Indented));

return before;
