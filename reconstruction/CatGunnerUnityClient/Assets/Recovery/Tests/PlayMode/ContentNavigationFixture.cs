using System;
using CatGunner.Recovery;

// Independent test fixture for already-unlocked feature acceptance. Never applied
// to the user's profile or to startup in the production recovery client.
public static class ContentNavigationFixture
{
    public static void Unlock(RecoveryForestClient c,Content_Type type)
    {
        c.Forest.Stage_Value_Max=Math.Max(c.Forest.Stage_Value_Max,(Contents_Unlock_manager.Unlock_Stage_return(type)-1)*10);
        c.ContentUnlock?.Reload();
    }
}
