// Run with Unity CLI eval_file in EditMode. Uses Editor APIs; preserves original events.
if (UnityEditor.EditorApplication.isPlaying) throw new InvalidOperationException("EditMode required");
var scene = UnityEngine.SceneManagement.SceneManager.GetActiveScene();
if (scene.path != "Assets/Recovery/Scenes/RecoveredClient.unity") throw new InvalidOperationException("Open normal RecoveredClient scene first");
if (scene.isDirty) throw new InvalidOperationException("Preserve unsaved scene changes first");
var c = UnityEngine.Object.FindFirstObjectByType<CatGunner.Recovery.RecoveryForestClient>();
var p = c.PetUI.pet_info_ui;
foreach (var g in new[] {p.LeftBtn_obj, p.RightBtn_obj}) g.GetComponent<UnityEngine.UI.Button>().interactable = true;
UnityEditor.SceneManagement.EditorSceneManager.MarkSceneDirty(scene);
if (!UnityEditor.SceneManagement.EditorSceneManager.SaveScene(scene)) throw new InvalidOperationException("Scene save failed");
var report = new {scene=scene.path, dirty=scene.isDirty, original_arrow_methods=new[]{p.LeftBtn_obj,p.RightBtn_obj}.Select(g=>g.GetComponent<UnityEngine.UI.Button>().onClick.GetPersistentMethodName(0)).ToArray(), arrow_buttons_enabled=true, hold_rows=c.RebirthUI.rebirth_panel_ui.Upgrade_item_list.Select(u=>new {u._num,u.holdDelay,u.holdInterval,events=u.Upgrade_btn.GetComponent<UnityEngine.EventSystems.EventTrigger>().triggers.Select(e=>new {type=e.eventID.ToString(),method=e.callback.GetPersistentMethodName(0),original_target=e.callback.GetPersistentTarget(0)==u}).ToArray()}).ToArray()};
System.IO.File.WriteAllText("/Volumes/ZHITAI_1T/IdleCatGunner/reverse/com.Chodun.CatGunner/1.1.61-vc257/reports/detail-hold-scene-integration-final.json", Newtonsoft.Json.JsonConvert.SerializeObject(report,Newtonsoft.Json.Formatting.Indented));
return report;
