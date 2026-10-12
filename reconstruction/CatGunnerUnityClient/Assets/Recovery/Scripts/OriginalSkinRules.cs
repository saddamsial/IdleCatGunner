using System;
using System.Linq;
using UnityEngine;
namespace CatGunner.Recovery
{
    [Serializable] public sealed class OriginalSkinCatalogue
    {
        public Skin_info[] Rows;public int[] Prices;public string PercentFormat,PriceFormat;
        private static OriginalSkinCatalogue cached;
        public static OriginalSkinCatalogue Load()
        {
            if(cached!=null)return cached;
            var text=Resources.Load<TextAsset>("OriginalSkinCatalogue");
            if(text==null)throw new InvalidOperationException("Original skin catalogue missing");
            var c=JsonUtility.FromJson<OriginalSkinCatalogue>(text.text);
            if(c.Rows==null||c.Rows.Length!=25||c.Prices==null||c.Prices.Length!=25)throw new InvalidOperationException("Original skin table incomplete");
            for(int i=0;i<25;i++)if(c.Rows[i].Damage!=16*i||c.Rows[i].Speed!=10*i||c.Rows[i].Money!=5*i||c.Prices[i]!=100*i)throw new InvalidOperationException("Original skin table changed");
            return cached=c;
        }
    }
    public static class OriginalSkinRules
    {
        public const int Count=25;
        public static bool Valid(int i)=>i>=0&&i<Count;
        public static void ValidateState(OriginalSaveData s)
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
    public sealed class OriginalSkinProgression
    {
        public readonly OriginalSaveData State;
        public readonly OriginalSkinCatalogue Catalogue;
        public OriginalSkinProgression(OriginalSaveData state){OriginalSkinRules.ValidateState(state);State=state;Catalogue=OriginalSkinCatalogue.Load();}
        public bool Unlocked(int i)=>OriginalSkinRules.Valid(i)&&State.Skin_Unlock[i];
        public int Bonus(int stat)
        {
            int sum=0;for(int i=0;i<25;i++)if(Unlocked(i)){var r=Catalogue.Rows[i];sum+=stat==0?r.Damage:stat==1?r.Speed:r.Money;}return sum;
        }
        public bool Purchase(int i)
        {
            if(!OriginalSkinRules.Valid(i)||Unlocked(i)||State.Dia<Catalogue.Prices[i])return false;
            int price=Catalogue.Prices[i],used=checked(State._useDia+price*3);
            State.Dia-=price;State._useDia=used;State.Skin_Unlock[i]=true;return true;
        }
        public bool Select(int i){if(!Unlocked(i))return false;State.Skin_Selected_num=i;return true;}
    }
}
