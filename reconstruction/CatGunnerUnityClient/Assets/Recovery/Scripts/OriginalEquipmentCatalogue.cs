using System;
using System.Linq;
using UnityEngine;

namespace CatGunner.Recovery
{
    [Serializable] public sealed class OriginalEquipmentCatalogue
    {
        public Gun_Info[] Gun_list;
        public int[] Selected_items, Star_Slot_Lv;
        public bool[] Gun_Collect;
        public int Skin_Damage_Percent, Skin_Speed_Percent, Pet_Speed_Percent, Relic_MoveSpeed_Add;
        public int Rebirth_Damage_Percent, Rebirth_Speed_Percent, Relic_Damage_Percent, Relic_Critical_Percent;
        public int Fish_Damage_Add, Fish_Critical_Add, Fish_Critical_Chance;
        [NonSerialized] public DecimalAmount? RecoveryRebirthPower,RecoveryRelicPower,RecoveryRelicCritical;
        [NonSerialized] public int RecoveryBuffMultiplier=1;
        [NonSerialized] public int RecoverySpeedBuffMultiplier;
        [NonSerialized] public bool RecoveryBossMode;
        [NonSerialized] public bool RecoveryMonsterMode;
        [NonSerialized] public bool RecoveryRaidMode;
        [NonSerialized] public GunType RecoveryRaidWeakType;

        public static OriginalEquipmentCatalogue Load()
        {
            var asset=Resources.Load<TextAsset>("OriginalEquipmentCatalogue");
            if(asset==null) throw new InvalidOperationException("Original equipment catalogue missing");
            var data=JsonUtility.FromJson<OriginalEquipmentCatalogue>(asset.text);
            if(data.Gun_list.Length!=65 || data.Gun_Collect.Length!=65 || data.Selected_items.Length!=3 || data.Star_Slot_Lv.Length!=3)
                throw new InvalidOperationException("Original equipment catalogue contract incomplete");
            return data;
        }

        // Cat_manager.Balance_Reload 0x2b43744 compacts slots by removing -1,
        // retaining order and duplicate guns. Paused slots are not filtered here.
        public static int[] CompactSelected(int[] selected) => selected.Where(gun=>gun!=-1).ToArray();

        // Ordinary forest part of Cat.Balance_Reload 0x2b38f10, explicit package
        // initial profile. Managers, saved ownership and remote sheet remain separate.
        public bool ApplyPackageForest(Cat cat,int compactSlot=0,int powerLevel=0,int speedLevel=0,int wave=0)
        {
            var selected=CompactSelected(Selected_items);
            if(compactSlot<0 || compactSlot>=selected.Length) return false;
            ValidateStars();
            return ApplyWeapon(cat,selected[compactSlot],compactSlot,Star_Slot_Lv[compactSlot],powerLevel,speedLevel,wave);
        }

        // Native Cat.is_Helper uses a separate weapon and the minimum of all three stars.
        public bool ApplyRaidHelper(Cat cat,int gunNum,int starLevel)
        {
            if(!RecoveryRaidMode)throw new InvalidOperationException("Helper balance requires raid mode");
            return ApplyWeapon(cat,gunNum,-1,starLevel,0,0,0);
        }
        private bool ApplyWeapon(Cat cat,int gunNum,int slot,int starLevel,int powerLevel,int speedLevel,int wave)
        {
            if(gunNum<0 || gunNum>=Gun_list.Length) throw new IndexOutOfRangeException("Equipped gun outside original catalogue");
            ValidateStars();
            var balance=OriginalBalanceCatalogue.Load();
            var gun=Gun_list[gunNum];
            // Native UI modes 3/4/5 skip forest power and speed upgrades.
            bool skipForestUpgrade=RecoveryBossMode||RecoveryMonsterMode||RecoveryRaidMode;
            var damage=gun.Damage.Value.Percent(skipForestUpgrade?new DecimalAmount(100):balance.Power(powerLevel))
                .Percent(RecoveryRaidMode?new DecimalAmount(100):(RecoveryRebirthPower??new DecimalAmount(Rebirth_Damage_Percent)))
                .Percent(new DecimalAmount(Skin_Damage_Percent))
                .Percent(new DecimalAmount(100+Fish_Damage_Add))
                .Percent(RecoveryRelicPower??new DecimalAmount(Relic_Damage_Percent)).DiscardFraction();
            // Native SlotNum is Array.IndexOf(Cat_list,this), retaining compact
            // cat position even when the weapon loadout has an empty slot.
            damage*=new DecimalAmount(RecoveryBuffMultiplier);
            cat.SlotNum=slot;damage=OriginalStarRules.DamageApply(damage,starLevel);
            if(RecoveryRaidMode&&gun.type==RecoveryRaidWeakType)damage*=new DecimalAmount(10);
            var critical=damage.Percent(new DecimalAmount(125+Fish_Critical_Add))
                .Percent(RecoveryRelicCritical??new DecimalAmount(Relic_Critical_Percent)).DiscardFraction();
            cat._gunInfo=gun;
            cat.Damage=OriginalAmount.FromValue(damage);cat.CriDmg=OriginalAmount.FromValue(critical);
            // Native abbreviation presentation; arithmetic remains DecimalAmount.
            cat.Damage_str=OriginalNumberText.Format(damage);cat.CriDmg_str=OriginalNumberText.Format(critical);
            cat.CriPer=Fish_Critical_Chance/100f;
            cat.moveSpeed=(cat.is_AI?17f:15f)*(Pet_Speed_Percent+Relic_MoveSpeed_Add)/100f;
            var client=RecoveryForestClient.Instance;
            // Cat.Balance_Reload 0x2b38f10 doubles both hero and AI in cleared forest stages.
            if(client!=null&&client.Mode==0&&client.Forest.Stage_Now*10+client.Forest.Level_Now<client.Forest.Stage_Value_Max)cat.moveSpeed*=2;
            cat.RayCount=RecoveryMonsterMode?60:36;cat.Attack_Length=RecoveryMonsterMode?60:40;
            cat.AtkCool_Max=CalculateAttackCooldown(gun.AtkSpeed,Skin_Speed_Percent,Rebirth_Speed_Percent,
                balance.Speed(speedLevel),wave,!skipForestUpgrade,skipForestUpgrade,RecoveryRaidMode,RecoverySpeedBuffMultiplier>0?RecoverySpeedBuffMultiplier:RecoveryBuffMultiplier);
            cat.ReloadGunPresentation(gunNum);
            return true;
        }

        private void ValidateStars()
        {if(Star_Slot_Lv==null||Star_Slot_Lv.Length!=3||Star_Slot_Lv.Any(level=>level<0||level>20))throw new NotSupportedException("Invalid original three-slot star levels");}

        // Cat.CalculateAtkCoolMax 0x2b399cc. ASM confirms additive percentages,
        // forest wave penalty before clamp, division by buff then final clamp.
        public static float CalculateAttackCooldown(float baseInterval,int skinSpeed,int rebirthSpeed,
            int upgradeSpeed,int forestWave,bool isForest,bool skipUpgrade,bool isRaid,int buffMultiplier)
        {
            int speed=skinSpeed+(isRaid?-100:rebirthSpeed-200);
            if(!skipUpgrade) speed+=upgradeSpeed;
            if(isForest) speed-=30*forestWave;
            speed=Mathf.Clamp(speed,100,10000);
            float cooldown=(baseInterval/speed)*100f;
            cooldown/=buffMultiplier;
            return Mathf.Clamp(cooldown,.05f,2f);
        }
    }
}
