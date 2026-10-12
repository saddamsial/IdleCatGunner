/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b548dc, Ghidra VA 02c548dc. */

void Raid_manager_Season_Check(long param_1)

{
  undefined *puVar1;
  int iVar2;
  
  puVar1 = PTR_DAT_05e5e070;
  if ((bRam000000000625c1a7 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e5e070);
    bRam000000000625c1a7 = 1;
  }
  if (*(int *)(*(long *)puVar1 + 0xe4) == 0) {
    func_0x029f5bd0();
  }
  iVar2 = Raid_manager_get_Season_Index_Now_0x6000923();
  if (*(int *)(param_1 + 0x78) != iVar2) {
    *(undefined4 *)(param_1 + 0x7c) = 0;
    *(undefined4 *)(param_1 + 0x80) = 0;
    *(int *)(param_1 + 0x78) = iVar2;
  }
  return;
}

