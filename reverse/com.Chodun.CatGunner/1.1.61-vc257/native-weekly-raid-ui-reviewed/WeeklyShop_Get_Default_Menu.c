/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2ba72c8, Ghidra VA 02ca72c8. */

undefined4 WeeklyShop_Get_Default_Menu(long param_1)

{
  int iVar1;
  undefined4 uVar2;
  ulong uVar3;
  
  if ((bRam000000000625c4de & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e649c0);
    bRam000000000625c4de = 1;
  }
  uVar3 = WeeklyShop_Is_VIP_Unlocked();
  if ((uVar3 & 1) == 0) {
    uVar2 = 0;
  }
  else {
    iVar1 = PlayerPrefs_GetInt_0x6000b77(*(undefined8 *)PTR_DAT_05e649c0,0,0);
    if (iVar1 == 0) {
      uVar2 = 1;
    }
    else {
      uVar2 = *(undefined4 *)(param_1 + 0x28);
    }
  }
  return uVar2;
}

