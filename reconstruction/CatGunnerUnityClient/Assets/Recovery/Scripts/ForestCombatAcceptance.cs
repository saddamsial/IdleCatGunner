using UnityEngine;

namespace CatGunner.Recovery
{
    // Forest hero update ordering, including automatic movement. The original
    // Gamemanager, other modes, companions and progression remain separate. Equipment is loaded
    // from the explicit package initial profile, not an existing player save.
    [RequireComponent(typeof(Cat))]
    public sealed class ForestCombatAcceptance : MonoBehaviour
    {
        public bool EnableTargeting=true;
        public bool EnableSingleAttacks;
        public bool EnableShotgunAttacks;
        public bool EnablePenetratingAttacks;
        public bool EnableExplosiveAttacks;
        public bool EnableMissileAttacks;
        public bool LoadPackageEquipment=true;
        private Cat cat;
        private void Awake() => cat=GetComponent<Cat>();
        private void Start()
        {
            cat.InitializeHandPose();
            if(LoadPackageEquipment)
            {
                bool equipped=OriginalEquipmentCatalogue.Load().ApplyPackageForest(cat);
                EnableSingleAttacks=equipped && cat._gunInfo.type==GunType.SINGLE;
                EnableShotgunAttacks=equipped && cat._gunInfo.type==GunType.SHOTGUN;
                EnablePenetratingAttacks=equipped && (cat._gunInfo.type==GunType.PIERCE || cat._gunInfo.type==GunType.LASER);
                EnableExplosiveAttacks=equipped && (cat._gunInfo.type==GunType.EXPLOSIVE || cat._gunInfo.type==GunType.BLAST_SNIPER);
                EnableMissileAttacks=equipped && cat._gunInfo.type==GunType.MISSILE;
            }
        }
        public void RefreshWeaponFlags()
        {
            EnableSingleAttacks=cat._gunInfo!=null&&cat._gunInfo.type==GunType.SINGLE;
            EnableShotgunAttacks=cat._gunInfo!=null&&cat._gunInfo.type==GunType.SHOTGUN;
            EnablePenetratingAttacks=cat._gunInfo!=null&&(cat._gunInfo.type==GunType.PIERCE||cat._gunInfo.type==GunType.LASER);
            EnableExplosiveAttacks=cat._gunInfo!=null&&(cat._gunInfo.type==GunType.EXPLOSIVE||cat._gunInfo.type==GunType.BLAST_SNIPER);
            EnableMissileAttacks=cat._gunInfo!=null&&cat._gunInfo.type==GunType.MISSILE;
        }
        private void Update()
        {
            if(!EnableTargeting) return;
            if(cat.is_AI)
            {
                if(ForestRuntimeAcceptance.IsGaming)cat.TickCompanion();
                else{cat.SmoothCompanionStop();cat.ClearNearObj();cat.UpdateHandRotation();cat.UpdateFaceRotation();}
                return;
            }
            var movement=GetComponent<ForestMovementAcceptance>();
            if(!ForestRuntimeAcceptance.IsGaming)
            {
                if(movement!=null && movement.isActiveAndEnabled) cat.HandleMovement();
                cat.ClearNearObj();cat.ClearAutoTarget();cat.UpdateHandRotation();cat.UpdateFaceRotation();return;
            }
            cat.HandleRaycastTimer();cat.ResolveAttackTarget();cat.UpdateSpreadState();
            cat.RecordLeaderTrail();
            if(movement!=null && movement.isActiveAndEnabled) cat.TickForestMovement();
            if(RecoveryForestClient.Instance!=null&&RecoveryForestClient.Instance.Mode==4)cat.ClampToMonsterRadius();
            cat.UpdateHandRotation();
            cat.UpdateFaceRotation();
            if(cat._gunInfo!=null && ((EnableSingleAttacks && cat._gunInfo.type==GunType.SINGLE) ||
                (EnableShotgunAttacks && cat._gunInfo.type==GunType.SHOTGUN) ||
                (EnablePenetratingAttacks && (cat._gunInfo.type==GunType.PIERCE || cat._gunInfo.type==GunType.LASER)) ||
                (EnableExplosiveAttacks && (cat._gunInfo.type==GunType.EXPLOSIVE || cat._gunInfo.type==GunType.BLAST_SNIPER)) ||
                (EnableMissileAttacks && cat._gunInfo.type==GunType.MISSILE)))
                cat.TickProjectileAttackCooldown();
        }
    }
}
