/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2a9f624, Ghidra VA 02b9f624. */

void DailyCheck_Reward_Reload(long param_1,int param_2)

{
  long lVar1;
  
  if (*(long *)(param_1 + 0x28) != 0) {
    GameObject_SetActive_0x6000cfe(*(long *)(param_1 + 0x28),param_2 == 1,0);
    if (*(long *)(param_1 + 0x30) != 0) {
      GameObject_SetActive_0x6000cfe(*(long *)(param_1 + 0x30),param_2 == 2,0);
      if (param_2 != 1) {
        return;
      }
      lVar1 = Component_get_transform_0x6000c82(param_1,0);
      if (lVar1 != 0) {
        Transform_SetAsLastSibling_0x6000f7e(lVar1,0);
        return;
      }
    }
  }
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

