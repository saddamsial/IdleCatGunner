/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2aa0c24, Ghidra VA 02ba0c24. */

void DailyCheck_Reward_Click(long param_1)

{
  undefined *puVar1;
  
  puVar1 = PTR_DAT_05e5e4f8;
  if ((bRam000000000625ba0f & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e5e4f8);
    bRam000000000625ba0f = 1;
  }
  if (**(long **)(*(long *)puVar1 + 0xb8) != 0) {
    DailyCheck_DailyReward_Get(**(long **)(*(long *)puVar1 + 0xb8),*(undefined4 *)(param_1 + 0x20));
    return;
  }
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

