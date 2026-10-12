/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b6b8a4, Ghidra VA 02c6b8a4. */

void Safe_manager_Open_UI(long param_1)

{
  ulong uVar1;
  undefined8 uVar2;
  
  if ((bRam000000000625c296 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e591c0);
    bRam000000000625c296 = 1;
  }
  uVar1 = Safe_manager_get_Is_Unlocked();
  if ((uVar1 & 1) == 0) {
    Safe_manager_Alert_Locked();
    return;
  }
  if (cRam000000000625ba57 == '\0') {
    func_0x029f5a50(PTR_DAT_05e5dd70);
    cRam000000000625ba57 = '\x01';
  }
  if (**(long **)(*(long *)PTR_DAT_05e5dd70 + 0xb8) != 0) {
    Sound_manager_PlaySfx_0x600054a(0x3f800000,**(long **)(*(long *)PTR_DAT_05e5dd70 + 0xb8),1,0,0);
    uVar2 = *(undefined8 *)(param_1 + 0x30);
    if (*(int *)(*(long *)PTR_DAT_05e591c0 + 0xe4) == 0) {
      func_0x029f5bd0();
    }
    uVar1 = Object_op_Inequality_0x6000ded(uVar2,0,0);
    if ((uVar1 & 1) == 0) {
      return;
    }
    if (*(long *)(param_1 + 0x30) != 0) {
      Safe_UI_Open();
      return;
    }
  }
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

