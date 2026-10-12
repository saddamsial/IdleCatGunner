/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b444d8, Ghidra VA 02c444d8. */

bool Raid_manager__get_Is_Helper_Active(long param_1)

{
  int iVar1;
  bool bVar2;
  int iVar3;
  
  if ((bRam000000000625c1c6 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e5e070);
    bRam000000000625c1c6 = 1;
  }
  iVar1 = *(int *)(param_1 + 0x100);
  if (iVar1 == -1) {
    bVar2 = false;
  }
  else {
    if (*(int *)(*(long *)PTR_DAT_05e5e070 + 0xe4) == 0) {
      func_0x029f5bd0();
    }
    iVar3 = Raid_manager_get_Season_Index_Now_0x6000923();
    bVar2 = iVar1 == iVar3;
  }
  return bVar2;
}

