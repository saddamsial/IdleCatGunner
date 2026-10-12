/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b31a4c, Ghidra VA 02c31a4c. */

void Relic_manager_Relic_Upgrade(undefined8 param_1,long param_2)

{
  int iVar1;
  long lVar2;
  undefined8 uVar3;
  int iVar4;
  int iVar5;
  
  if ((bRam000000000625c041 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e5d4d8);
    bRam000000000625c041 = 1;
  }
  if (param_2 != 0) {
    iVar1 = *(int *)(param_2 + 0x18);
    iVar4 = iVar1;
    if (*(int *)(*(long *)PTR_DAT_05e5d4d8 + 0xe4) == 0) {
      func_0x029f5bd0();
      iVar4 = *(int *)(param_2 + 0x18);
    }
    iVar1 = iVar1 * 2 + 2;
    if (0x31 < iVar1) {
      iVar1 = 0x32;
    }
    if (iVar1 < 3) {
      iVar1 = 2;
    }
    iVar5 = 300;
    if (8 < *(uint *)(param_2 + 0x10)) {
      iVar5 = 0x32;
    }
    if ((iVar4 < iVar5) && (iVar1 <= *(int *)(param_2 + 0x1c))) {
      *(int *)(param_2 + 0x18) = iVar4 + 1;
      *(int *)(param_2 + 0x1c) = *(int *)(param_2 + 0x1c) - iVar1;
      Relic_manager_Value_Reload(param_1);
      if (cRam000000000625ba57 == '\0') {
        func_0x029f5a50(PTR_DAT_05e5dd70);
        cRam000000000625ba57 = '\x01';
      }
      lVar2 = **(long **)(*(long *)PTR_DAT_05e5dd70 + 0xb8);
      if (lVar2 == 0) goto LAB_02c31b98;
      uVar3 = 4;
    }
    else {
      if (cRam000000000625ba57 == '\0') {
        func_0x029f5a50(PTR_DAT_05e5dd70);
        cRam000000000625ba57 = '\x01';
      }
      lVar2 = **(long **)(*(long *)PTR_DAT_05e5dd70 + 0xb8);
      if (lVar2 == 0) goto LAB_02c31b98;
      uVar3 = 5;
    }
    Sound_manager_PlaySfx_0x600054a(0x3f800000,lVar2,uVar3,0,0);
    Relic_manager_UI_Reload(param_1);
    return;
  }
LAB_02c31b98:
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

