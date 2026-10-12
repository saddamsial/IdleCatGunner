/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b0a358, Ghidra VA 02c0a358. */

void __c__RunCoroutine_b__13_3(void)

{
  undefined *puVar1;
  
  puVar1 = PTR_DAT_05e5dd38;
  if ((bRam000000000625be92 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e5dd38);
    bRam000000000625be92 = 1;
  }
  if (**(long **)(*(long *)puVar1 + 0xb8) != 0) {
    Fish_manager_GetTotalDamage_0x60009a3(**(long **)(*(long *)puVar1 + 0xb8),0);
    return;
  }
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

