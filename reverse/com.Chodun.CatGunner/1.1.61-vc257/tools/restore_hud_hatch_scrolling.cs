if(UnityEditor.EditorApplication.isPlaying)throw new Exception("EditMode required");
var c=UnityEngine.Object.FindFirstObjectByType<CatGunner.Recovery.RecoveryForestClient>();
var raw=c.Slider.Value_Fill.GetComponentInChildren<UnityEngine.UI.RawImage>(true);
if(UnityEditor.GlobalObjectId.GetGlobalObjectIdSlow(raw.gameObject).targetObjectId!=11797)throw new Exception("Expected original Hatch11797");
var scroll=raw.GetComponent<Scrolling>()??raw.gameObject.AddComponent<Scrolling>();scroll.Speed=new Vector2(-1,0);
UnityEditor.SceneManagement.EditorSceneManager.MarkSceneDirty(c.gameObject.scene);
if(!UnityEditor.SceneManagement.EditorSceneManager.SaveScene(c.gameObject.scene))throw new Exception("Cannot save original component restoration");
return new {objectId=11797,originalComponent=148332,speed=scroll.Speed.ToString(),rect=raw.rectTransform.rect.ToString(),uv=raw.uvRect.ToString()};
