/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b5e568, Ghidra VA 02c5e568. */

void Fish_manager_FreeGacha(long param_1)

{
  undefined8 uVar1;
  
  if ((bRam000000000625c205 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e5d910);
    func_0x029f5a50(PTR_DAT_05e62fe8);
    bRam000000000625c205 = 1;
  }
  Fish_manager_FreeGacha_Reload(param_1);
  if (*(long *)(param_1 + 0x90) != 0) {
    if (*(int *)(*(long *)(param_1 + 0x90) + 0x18) < 0x14) {
      if (*(int *)(param_1 + 0x78) < 5) {
        if (*(int *)(param_1 + 0x78) < 3) {
          Fish_manager_FreeGacha_RewardGet(param_1);
          return;
        }
        if (**(long **)(*(long *)PTR_DAT_05e5d910 + 0xb8) != 0) {
          Admob_ShowRewardAd_0x6000163(**(long **)(*(long *)PTR_DAT_05e5d910 + 0xb8),7,0);
          return;
        }
        goto LAB_02c5e630;
      }
      uVar1 = Alarm_get_MaxFreeGacha_0x60012ed(0);
    }
    else {
      uVar1 = Alarm_get_MaxFish_0x60012ec(0);
    }
    UI_manager_Alert_0x6000602(uVar1,0);
    return;
  }
LAB_02c5e630:
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

