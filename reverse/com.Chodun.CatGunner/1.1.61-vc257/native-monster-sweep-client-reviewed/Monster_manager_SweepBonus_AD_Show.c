/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b4f944, Ghidra VA 02c4f944. */

void Monster_manager_SweepBonus_AD_Show(void)

{
  undefined *puVar1;
  
  puVar1 = PTR_DAT_05e5d910;
  if ((bRam000000000625c147 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e5d910);
    bRam000000000625c147 = 1;
  }
  if (**(long **)(*(long *)puVar1 + 0xb8) != 0) {
    Admob_ShowRewardAd_0x6000163(**(long **)(*(long *)puVar1 + 0xb8),5,0);
    return;
  }
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

