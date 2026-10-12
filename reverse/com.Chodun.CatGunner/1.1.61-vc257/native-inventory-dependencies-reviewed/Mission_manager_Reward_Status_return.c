/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2aa6acc, Ghidra VA 02ba6acc. */

undefined1 Mission_manager_Reward_Status_return(long param_1,int param_2,uint param_3)

{
  undefined1 uVar1;
  long lVar2;
  
  if (param_2 == 0) {
    lVar2 = *(long *)(param_1 + 0x38);
  }
  else {
    lVar2 = *(long *)(param_1 + 0x40);
  }
  if (lVar2 != 0) {
    if (*(uint *)(lVar2 + 0x18) <= param_3) {
                    /* WARNING: Subroutine does not return */
      Throw_Index_Wrapper();
    }
    if (*(char *)(lVar2 + (int)param_3 + 0x20) == '\0') {
      uVar1 = (int)param_3 < *(int *)(param_1 + 0x48);
    }
    else {
      uVar1 = 2;
    }
    return uVar1;
  }
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

