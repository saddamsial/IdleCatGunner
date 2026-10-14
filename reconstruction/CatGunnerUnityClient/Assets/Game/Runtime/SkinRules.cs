using System;
using System.Linq;
using UnityEngine;
namespace CatGunner.Runtime
{
    [Serializable] [UnityEngine.Scripting.APIUpdating.MovedFrom(true, sourceNamespace: "CatGunner.Recovery", sourceAssembly: "CatGunner.Recovery", sourceClassName: "OriginalSkinCatalogue")] public sealed class SkinCatalogue
    {
        public Skin_info[] Rows;public int[] Prices;public string PercentFormat,PriceFormat;
        private static SkinCatalogue cached;
        public static SkinCatalogue Load()
        {
            if(cached!=null)return cached;
            var text=Resources.Load<TextAsset>("SkinCatalogue");
            if(text==null)throw new InvalidOperationException("Original skin catalogue missing");
            var c=JsonUtility.FromJson<SkinCatalogue>(text.text);
            if(c.Rows==null||c.Rows.Length!=25||c.Prices==null||c.Prices.Length!=25)throw new InvalidOperationException("Original skin table incomplete");
            for(int i=0;i<25;i++)if(c.Rows[i].Damage!=16*i||c.Rows[i].Speed!=10*i||c.Rows[i].Money!=5*i||c.Prices[i]!=100*i)throw new InvalidOperationException("Original skin table changed");
            return cached=c;
        }
    }
    [UnityEngine.Scripting.APIUpdating.MovedFrom(true, sourceNamespace: "CatGunner.Recovery", sourceAssembly: "CatGunner.Recovery", sourceClassName: "OriginalSkinRules")] public static class SkinRules
    {
        public const int Count=25;
        public static bool Valid(int i)=>i>=0&&i<Count;
        public static void ValidateState(SaveData s)
        {
            if(s.Skin_Unlock==null||s.Skin_Unlock.Length==0)
            {
                if(s.Skin_Selected_num!=0)throw new InvalidOperationException("Missing ownership for selected skin; save preserved");
                s.Skin_Unlock=new bool[Count];s.Skin_Unlock[0]=true;
            }
            if(s.Skin_Unlock.Length!=Count||!Valid(s.Skin_Selected_num)||!s.Skin_Unlock[s.Skin_Selected_num]||!s.Skin_Unlock[0]||s.Dia<0||s._useDia<0)
                throw new InvalidOperationException("Unsupported skin ownership/wallet; save preserved");
        }
    }
    [UnityEngine.Scripting.APIUpdating.MovedFrom(true, sourceNamespace: "CatGunner.Recovery", sourceAssembly: "CatGunner.Recovery", sourceClassName: "OriginalSkinProgression")] public sealed class SkinProgression
    {
        public readonly SaveData State;
        public readonly SkinCatalogue Catalogue;
        public SkinProgression(SaveData state){SkinRules.ValidateState(state);State=state;Catalogue=SkinCatalogue.Load();}
        public bool Unlocked(int i)=>SkinRules.Valid(i)&&State.Skin_Unlock[i];
        public int Bonus(int stat)
        {
            int sum=0;for(int i=0;i<25;i++)if(Unlocked(i)){var r=Catalogue.Rows[i];sum+=stat==0?r.Damage:stat==1?r.Speed:r.Money;}return sum;
        }
        public bool Purchase(int i)
        {
            if(!SkinRules.Valid(i)||Unlocked(i)||State.Dia<Catalogue.Prices[i])return false;
            int price=Catalogue.Prices[i],used=checked(State._useDia+price*3);
            State.Dia-=price;State._useDia=used;State.Skin_Unlock[i]=true;return true;
        }
        public bool Select(int i){if(!Unlocked(i))return false;State.Skin_Selected_num=i;return true;}
    }
}
