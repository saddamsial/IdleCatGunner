/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b6cd18, Ghidra VA 02c6cd18. */

void Safe_Slot_onClick_Gun(long param_1)

{
  long lVar1;
  
  if ((bRam000000000625c29d & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e5dd40);
    bRam000000000625c29d = 1;
  }
  if ((*(int *)(param_1 + 0x78) == 3) && (*(int *)(param_1 + 0x7c) != -1)) {
    if (cRam000000000625ba57 == '\0') {
      func_0x029f5a50(PTR_DAT_05e5dd70);
      cRam000000000625ba57 = '\x01';
    }
    if (**(long **)(*(long *)PTR_DAT_05e5dd70 + 0xb8) != 0) {
      Sound_manager_PlaySfx_0x600054a
                (0x3f800000,**(long **)(*(long *)PTR_DAT_05e5dd70 + 0xb8),1,0,0);
      if ((**(long **)(*(long *)PTR_DAT_05e5dd40 + 0xb8) != 0) &&
         (lVar1 = *(long *)(**(long **)(*(long *)PTR_DAT_05e5dd40 + 0xb8) + 0xa0), lVar1 != 0)) {
        Gun_Info_UI_Reload_Safe
                  (lVar1,*(undefined4 *)(param_1 + 0x7c),*(undefined4 *)(param_1 + 0x20),0);
        return;
      }
    }
                    /* WARNING: Subroutine does not return */
    Throw_NullReference_Wrapper();
  }
  return;
}

