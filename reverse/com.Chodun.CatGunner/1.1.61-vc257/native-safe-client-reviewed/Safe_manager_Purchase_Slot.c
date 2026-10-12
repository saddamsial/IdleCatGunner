/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b6c408, Ghidra VA 02c6c408. */

void Safe_manager_Purchase_Slot(long param_1,uint param_2)

{
  uint uVar1;
  int iVar2;
  undefined *puVar3;
  char cVar4;
  int iVar5;
  long lVar6;
  
  if ((bRam000000000625c295 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e5d338);
    bRam000000000625c295 = 1;
  }
  puVar3 = PTR_DAT_05e5d338;
  uVar1 = *(int *)(param_1 + 0x28) + 6;
  if (0xf < (int)uVar1) {
    uVar1 = 0x10;
  }
  if (((int)param_2 < 0x10) && ((uVar1 & ((int)uVar1 >> 0x1f ^ 0xffffffffU)) == param_2)) {
    iVar2 = *(int *)(param_1 + 0x28) * 0x32 + 0x32;
    lVar6 = *(long *)PTR_DAT_05e5d338;
    if (*(int *)(lVar6 + 0xe4) == 0) {
      func_0x029f5bd0();
      lVar6 = *(long *)puVar3;
    }
    iVar5 = ObscuredInt_op_Implicit_0x6000412
                      (*(undefined8 *)(*(long *)(lVar6 + 0xb8) + 0x90),
                       *(undefined8 *)(*(long *)(lVar6 + 0xb8) + 0x98),0);
    if (iVar5 < iVar2) {
      if (cRam000000000625ba57 == '\0') {
        func_0x029f5a50(PTR_DAT_05e5dd70);
        cRam000000000625ba57 = '\x01';
      }
      if (**(long **)(*(long *)PTR_DAT_05e5dd70 + 0xb8) != 0) {
        Sound_manager_PlaySfx_0x600054a
                  (0x3f800000,**(long **)(*(long *)PTR_DAT_05e5dd70 + 0xb8),5,0,0);
        return;
      }
    }
    else {
      if (*(int *)(*(long *)puVar3 + 0xe4) == 0) {
        func_0x029f5bd0();
      }
      Gamemanager_Lose_Dia_0x600007d(iVar2,5,0);
      cVar4 = cRam000000000625ba57;
      *(int *)(param_1 + 0x28) = *(int *)(param_1 + 0x28) + 1;
      if (cVar4 == '\0') {
        func_0x029f5a50(PTR_DAT_05e5dd70);
        cRam000000000625ba57 = '\x01';
      }
      if (**(long **)(*(long *)PTR_DAT_05e5dd70 + 0xb8) != 0) {
        Sound_manager_PlaySfx_0x600054a
                  (0x3f800000,**(long **)(*(long *)PTR_DAT_05e5dd70 + 0xb8),1,0,0);
        Safe_manager_UI_Reload(param_1);
        SaveSystem_Save_0x600048a(0);
        return;
      }
    }
                    /* WARNING: Subroutine does not return */
    Throw_NullReference_Wrapper();
  }
  return;
}

