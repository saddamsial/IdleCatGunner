/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b68e50, Ghidra VA 02c68e50. */

void Gun_manager_DrawGun_Degree(long param_1,uint param_2,uint param_3)

{
  uint uVar1;
  undefined8 uVar2;
  long lVar3;
  
  if ((bRam000000000625c266 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e63a70);
    func_0x029f5a50(PTR_DAT_05e63a78);
    bRam000000000625c266 = 1;
  }
  if ((0xc < param_2) || (4 < param_3)) {
    return;
  }
  uVar1 = Gun_manager_FindFirstEmptyOwned(param_1);
  if (uVar1 == 0xffffffff) {
    uVar2 = Gun_manager_Loc_0x6000a7a(*(undefined8 *)PTR_DAT_05e63a78);
  }
  else {
    lVar3 = *(long *)(param_1 + 0x40);
    if (lVar3 == 0) {
                    /* WARNING: Subroutine does not return */
      Throw_NullReference_Wrapper();
    }
    if (*(uint *)(lVar3 + 0x18) <= uVar1) {
                    /* WARNING: Subroutine does not return */
      Throw_Index_Wrapper();
    }
    *(uint *)(lVar3 + (long)(int)uVar1 * 4 + 0x20) = param_2 * 5 + param_3;
    Gun_manager_Owned_Pause_Set_0x6000a50(param_1,uVar1,0);
    Gun_manager_ReloadGunUI_0x6000a6b(param_1);
    uVar2 = *(undefined8 *)PTR_DAT_05e63a70;
  }
  UI_manager_Alert_0x6000602(uVar2,0);
  return;
}

