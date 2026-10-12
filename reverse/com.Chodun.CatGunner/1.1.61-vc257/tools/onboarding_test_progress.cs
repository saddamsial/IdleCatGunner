var type=AppDomain.CurrentDomain.GetAssemblies().Select(a=>a.GetType("Unity.Pipeline.Editor.Testing.PipelineTestRunner")).FirstOrDefault(t=>t!=null);
var collector=type?.GetField("m_ActiveCollector",System.Reflection.BindingFlags.Static|System.Reflection.BindingFlags.NonPublic)?.GetValue(null);
return new{playing=UnityEditor.EditorApplication.isPlaying,compiling=UnityEditor.EditorApplication.isCompiling,step=Tutorial_manager.instance!=null?Tutorial_manager.instance.CurrentStep.ToString():null,collector=collector?.GetType().GetProperty("Results")?.GetValue(collector)};
