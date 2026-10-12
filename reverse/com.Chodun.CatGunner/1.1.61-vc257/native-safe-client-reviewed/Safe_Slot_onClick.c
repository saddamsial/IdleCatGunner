/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b6cc38, Ghidra VA 02c6cc38. */

void Safe_Slot_onClick(long param_1)

{
  int iVar1;
  undefined8 uVar2;
  
  if ((bRam000000000625c29c & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e63b00);
    bRam000000000625c29c = 1;
  }
  iVar1 = *(int *)(param_1 + 0x78);
  if (iVar1 == 0) {
    uVar2 = Gun_manager_Loc_0x6000a7a(*(undefined8 *)PTR_DAT_05e63b00);
    UI_manager_Alert_0x6000602(uVar2,0);
    if (cRam000000000625ba57 == '\0') {
      func_0x029f5a50(PTR_DAT_05e5dd70);
      cRam000000000625ba57 = '\x01';
    }
    if (**(long **)(*(long *)PTR_DAT_05e5dd70 + 0xb8) != 0) {
      Sound_manager_PlaySfx_0x600054a
                (0x3f800000,**(long **)(*(long *)PTR_DAT_05e5dd70 + 0xb8),5,0,0);
      return;
    }
                    /* WARNING: Subroutine does not return */
    Throw_NullReference_Wrapper();
  }
  if (iVar1 == 1) {
    Safe_Slot_onClick_Purchase(param_1);
    return;
  }
  if (iVar1 == 3) {
    Safe_Slot_onClick_Gun(param_1);
    return;
  }
  return;
}

