/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b8dcb4, Ghidra VA 02c8dcb4. */

void DiaPig_UI_Get_Dia(void)

{
  undefined *puVar1;
  
  puVar1 = PTR_DAT_05e62668;
  if ((bRam000000000625c3c3 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e62668);
    bRam000000000625c3c3 = 1;
  }
  if (**(long **)(*(long *)puVar1 + 0xb8) != 0) {
    DiaPig_Dia_Get();
    return;
  }
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

