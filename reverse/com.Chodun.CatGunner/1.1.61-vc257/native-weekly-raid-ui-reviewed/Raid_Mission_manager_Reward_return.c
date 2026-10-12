/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b52dc4, Ghidra VA 02c52dc4. */

undefined4 Raid_Mission_manager_Reward_return(long param_1,uint param_2)

{
  long lVar1;
  
  if (7 < param_2) {
    return 0;
  }
  lVar1 = *(long *)(param_1 + 0x20);
  if (lVar1 != 0) {
    if (*(uint *)(lVar1 + 0x18) <= param_2) {
                    /* WARNING: Subroutine does not return */
      Throw_Index_Wrapper();
    }
    lVar1 = *(long *)(lVar1 + (ulong)param_2 * 8 + 0x20);
    if (lVar1 != 0) {
      return *(undefined4 *)(lVar1 + 0x18);
    }
  }
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

