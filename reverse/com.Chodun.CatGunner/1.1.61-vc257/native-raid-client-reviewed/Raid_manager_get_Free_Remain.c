/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b576fc, Ghidra VA 02c576fc. */

uint Raid_manager_get_Free_Remain(long param_1)

{
  uint uVar1;
  
  uVar1 = 2 - *(int *)(param_1 + 0x70);
  return uVar1 & ((int)uVar1 >> 0x1f ^ 0xffffffffU);
}

