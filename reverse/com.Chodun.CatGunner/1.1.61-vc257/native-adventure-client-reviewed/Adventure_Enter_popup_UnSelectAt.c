/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b33c08, Ghidra VA 02c33c08. */

void Adventure_Enter_popup_UnSelectAt(long param_1,int param_2)

{
  long lVar1;
  
  if ((bRam000000000625c04d & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e63118);
    func_0x029f5a50(PTR_DAT_05e62fd0);
    bRam000000000625c04d = 1;
  }
  if (param_2 < 0) {
    return;
  }
  lVar1 = *(long *)(param_1 + 200);
  if (lVar1 != 0) {
    if (*(int *)(lVar1 + 0x18) <= param_2) {
      return;
    }
    func_0x045c2cf0(lVar1,param_2,*(undefined8 *)PTR_DAT_05e63118);
    Adventure_Enter_popup_Reload(param_1);
    if (cRam000000000625ba57 == '\0') {
      func_0x029f5a50(PTR_DAT_05e5dd70);
      cRam000000000625ba57 = '\x01';
    }
    if (**(long **)(*(long *)PTR_DAT_05e5dd70 + 0xb8) != 0) {
      Sound_manager_PlaySfx_0x600054a
                (0x3f800000,**(long **)(*(long *)PTR_DAT_05e5dd70 + 0xb8),0xd,0,0);
      return;
    }
  }
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

