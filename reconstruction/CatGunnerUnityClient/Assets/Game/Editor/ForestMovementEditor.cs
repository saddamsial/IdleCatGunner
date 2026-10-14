using System;
using System.IO;
using System.Linq;
using System.Reflection;
using System.Collections.Generic;
using Newtonsoft.Json.Linq;
using UnityEditor;
using UnityEditor.SceneManagement;
using UnityEngine;
using UnityEngine.SceneManagement;

public static class ForestMovementEditor
{
    public static void RestoreOriginalMovement()
    {
        if(EditorApplication.isPlaying) throw new InvalidOperationException("Restore movement in EditMode");
        GameProjectEditor.OpenForest();
        var forest=SceneManager.GetActiveScene();
        var objects=UnityEngine.Object.FindObjectsByType<UnityEngine.Component>(FindObjectsInactive.Include)
            .ToDictionary(c=>(long)GlobalObjectId.GetGlobalObjectIdSlow(c).targetObjectId,c=>(UnityEngine.Object)c);
        foreach(var go in UnityEngine.Object.FindObjectsByType<GameObject>(FindObjectsInactive.Include))
            objects[(long)GlobalObjectId.GetGlobalObjectIdSlow(go).targetObjectId]=go;
        if(UnityEngine.Object.FindAnyObjectByType<FloatingJoystick>(FindObjectsInactive.Include)==null)
        {
            var input=EditorSceneManager.OpenScene("Assets/Game/Scenes/Joystick.unity",OpenSceneMode.Additive);
            foreach(var root in input.GetRootGameObjects())
                SceneManager.MoveGameObjectToScene(root,forest);
            EditorSceneManager.CloseScene(input,true);
        }
        SceneManager.SetActiveScene(forest);
        var reportPath=Path.GetFullPath(Path.Combine(Application.dataPath,
            "../../../reverse/com.Chodun.CatGunner/1.1.61-vc257/reports"));
        var data=JObject.Parse(File.ReadAllText(Path.Combine(reportPath,"../serialized-components/level0-147400.json")))["data"];
        var hero=(GameObject)objects[(long)data["m_GameObject"]["m_PathID"]];
        var cat=hero.GetComponent<Cat>() ?? hero.AddComponent<Cat>();
        var report=new List<string>();
        foreach(var field in typeof(Cat).GetFields(BindingFlags.Public|BindingFlags.Instance))
        {
            var value=data[field.Name];if(value==null) continue;
            object resolved;
            if(field.Name=="joystick") resolved=UnityEngine.Object.FindAnyObjectByType<FloatingJoystick>(FindObjectsInactive.Include);
            else if(typeof(UnityEngine.Object).IsAssignableFrom(field.FieldType))
            {
                long id=(long)value["m_PathID"];resolved=id==0?null:objects.TryGetValue(id,out var found)?found:null;
                if(id!=0 && resolved==null) report.Add(field.Name+" | outside movement slice, pending reference="+id);
                report.Add(field.Name+" | original component="+id);
            }
            else if(field.FieldType.IsArray && typeof(UnityEngine.Object).IsAssignableFrom(field.FieldType.GetElementType()))
            {
                var entries=(JArray)value;var array=Array.CreateInstance(field.FieldType.GetElementType(),entries.Count);
                for(int i=0;i<entries.Count;i++)
                {
                    long id=(long)entries[i]["m_PathID"];array.SetValue(id==0?null:objects.TryGetValue(id,out var found)?found:null,i);
                    if(id!=0 && !objects.ContainsKey(id)) report.Add(field.Name+"["+i+"] | outside movement slice, pending reference="+id);
                }
                resolved=array;
            }
            else if(field.FieldType==typeof(LayerMask)) resolved=(LayerMask)(int)value["m_Bits"];
            else resolved=value.ToObject(field.FieldType);
            field.SetValue(cat,resolved);
        }
        if(cat.joystick==null || cat.rb==null || cat.anim==null || cat.Pivot_trans==null)
            throw new InvalidOperationException("Original movement dependency unresolved");
        if(hero.GetComponent<CatGunner.Runtime.ForestMovementAcceptance>()==null)
            hero.AddComponent<CatGunner.Runtime.ForestMovementAcceptance>();
        EditorUtility.SetDirty(cat);
        EditorSceneManager.MarkSceneDirty(forest);EditorSceneManager.SaveScene(forest);
        report.Add("Original hero=29892, Cat document=147400. Correct-package original joystick hierarchy merged from input slice.");
        report.Add("Manual movement, Walk animator and Rigidbody are restored. Explicit acceptance bridge invokes HandleMovement; full Cat.Update/AutoMove/AI/attack pending.");
        File.WriteAllLines(Path.Combine(reportPath,"forest-movement-reference-restoration.txt"),report);
        GameProjectEditor.SetPortraitGameView();
    }
}
