/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b6a910, Ghidra VA 02c6a910. */

void Gun_manager_AdRewardGun_TryWatch(long param_1)

{
  double dVar1;
  
  if ((bRam000000000625c281 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e5d910);
    bRam000000000625c281 = 1;
  }
  if ((*(int *)(param_1 + 0xc0) != -1) &&
     (dVar1 = (double)Gun_manager_get_AD_Gun_RemainSec(param_1), 0.0 < dVar1)) {
    if (**(long **)(*(long *)PTR_DAT_05e5d910 + 0xb8) != 0) {
      Admob_ShowRewardAd_0x6000163(**(long **)(*(long *)PTR_DAT_05e5d910 + 0xb8),9,0);
      return;
    }
                    /* WARNING: Subroutine does not return */
    Throw_NullReference_Wrapper();
  }
  return;
}

