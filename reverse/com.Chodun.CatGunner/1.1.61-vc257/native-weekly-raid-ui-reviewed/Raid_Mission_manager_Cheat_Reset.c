/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b55220, Ghidra VA 02c55220. */

void Raid_Mission_manager_Cheat_Reset(long param_1)

{
  ulong uVar1;
  
  uVar1 = Cheat_manager_get_IsCheatBuild_0x6000281(0);
  if ((uVar1 & 1) != 0) {
    *(undefined4 *)(param_1 + 0x28) = 0xffffffff;
    Raid_Mission_manager_Season_Check(param_1);
    Raid_Mission_manager_Refresh_Clear(param_1);
    return;
  }
  return;
}

