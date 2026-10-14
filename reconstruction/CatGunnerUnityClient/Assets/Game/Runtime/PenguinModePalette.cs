using UnityEngine;
namespace CatGunner.Runtime {
 [CreateAssetMenu(menuName="Penguin/UI/Mode palette")]
 [UnityEngine.Scripting.APIUpdating.MovedFrom(true, sourceNamespace: "CatGunner.Recovery", sourceAssembly: "CatGunner.Recovery", sourceClassName: "PenguinModePalette")] public sealed class PenguinModePalette : ScriptableObject {
  public Color Background,Title,Text,Content,Reward,Button,OnButton,Disabled,Outline,GradeA;
  public Color HoverTint,PressedTint,DisabledTint;
  public Color Get(PenguinModePaletteBindings.Role role){switch(role){case PenguinModePaletteBindings.Role.Background:return Background;case PenguinModePaletteBindings.Role.Title:return Title;case PenguinModePaletteBindings.Role.Text:return Text;case PenguinModePaletteBindings.Role.Content:return Content;case PenguinModePaletteBindings.Role.Reward:return Reward;case PenguinModePaletteBindings.Role.Button:return Button;case PenguinModePaletteBindings.Role.OnButton:return OnButton;case PenguinModePaletteBindings.Role.Disabled:return Disabled;case PenguinModePaletteBindings.Role.Outline:return Outline;case PenguinModePaletteBindings.Role.GradeA:return GradeA;default:return Text;}}
 }
}
