/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b8b940, Ghidra VA 02c8b940. */

void DailyGun_Btn_Reload(void)

{
  undefined *puVar1;
  
  puVar1 = PTR_DAT_05e63828;
  if ((bRam000000000625c3ae & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e63828);
    bRam000000000625c3ae = 1;
  }
  if (**(long **)(*(long *)puVar1 + 0xb8) != 0) {
    WeeklyShop_Btn_Reload_0x6000e7c(**(long **)(*(long *)puVar1 + 0xb8),0);
    return;
  }
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

