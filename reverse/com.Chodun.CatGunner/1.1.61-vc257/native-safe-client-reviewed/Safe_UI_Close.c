/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b6d01c, Ghidra VA 02c6d01c. */

void Safe_UI_Close(undefined8 param_1)

{
  long lVar1;
  
  if (cRam000000000625ba57 == '\0') {
    func_0x029f5a50(PTR_DAT_05e5dd70);
    cRam000000000625ba57 = '\x01';
  }
  if (**(long **)(*(long *)PTR_DAT_05e5dd70 + 0xb8) != 0) {
    Sound_manager_PlaySfx_0x600054a(0x3f800000,**(long **)(*(long *)PTR_DAT_05e5dd70 + 0xb8),1,0,0);
    lVar1 = Component_get_gameObject_0x6000c83(param_1,0);
    if (lVar1 != 0) {
      GameObject_SetActive_0x6000cfe(lVar1,0,0);
      return;
    }
  }
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

