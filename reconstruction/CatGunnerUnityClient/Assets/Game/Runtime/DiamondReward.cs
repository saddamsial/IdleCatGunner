namespace CatGunner.Runtime
{
    // Get_Dia(int), vc257 VA2a7ed10: wallet += amount, _getDia += amount*3.
    // Ordinary integer arithmetic only; native ObscuredInt/storage and save
    // service are replaced by the existing local archive/lifecycle adapters.
    [UnityEngine.Scripting.APIUpdating.MovedFrom(true, sourceNamespace: "CatGunner.Recovery", sourceAssembly: "CatGunner.Recovery", sourceClassName: "OriginalDiamondReward")] public static class DiamondReward
    {
        public static void Apply(SaveData state,int amount)
        {
            state.Dia=unchecked(state.Dia+amount);
            state._getDia=unchecked(state._getDia+amount*3);
        }
    }
}
