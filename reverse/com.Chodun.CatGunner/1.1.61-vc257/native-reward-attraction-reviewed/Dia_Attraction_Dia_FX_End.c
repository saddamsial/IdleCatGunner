/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b26ba8, Ghidra VA 02c26ba8. */

void Dia_Attraction_Dia_FX_End(long param_1)

{
  long lVar1;
  
  if ((bRam000000000625bfb3 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e62d28);
    func_0x029f5a50(PTR_DAT_05e62d30);
    bRam000000000625bfb3 = 1;
  }
  if (cRam000000000625ba57 == '\0') {
    func_0x029f5a50(PTR_DAT_05e5dd70);
    cRam000000000625ba57 = '\x01';
  }
  if (**(long **)(*(long *)PTR_DAT_05e5dd70 + 0xb8) != 0) {
    Sound_manager_PlaySfx_0x600054a(0x3f800000,**(long **)(*(long *)PTR_DAT_05e5dd70 + 0xb8),0xe,0);
    lVar1 = *(long *)(param_1 + 0x28);
    if (lVar1 != 0) {
      if (*(int *)(lVar1 + 0x18) < 1) {
        return;
      }
      lVar1 = func_0x0452c8d8(lVar1,*(int *)(lVar1 + 0x18) + -1,*(undefined8 *)PTR_DAT_05e62d30);
      if (lVar1 != 0) {
        Dia_Attraction_Target_Bounce_Start();
        return;
      }
    }
  }
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

