/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2aa6b60, Ghidra VA 02ba6b60. */

int Mission_manager_Scroll_Target_Lv_return(long param_1)

{
  int iVar1;
  int iVar2;
  int iVar3;
  long lVar4;
  
  iVar3 = Mission_manager_First_Unclaimed_Reward_Lv_return();
  if ((iVar3 == -1) || (*(int *)(param_1 + 0x48) <= iVar3)) {
    lVar4 = *(long *)(param_1 + 0x98);
    if (lVar4 != 0) {
      iVar3 = *(int *)(param_1 + 0x48);
      goto LAB_02ba6b98;
    }
  }
  else {
    lVar4 = *(long *)(param_1 + 0x98);
    if (lVar4 != 0) {
LAB_02ba6b98:
      iVar2 = *(int *)(lVar4 + 0x18) + -1;
      iVar1 = iVar3;
      if (iVar2 <= iVar3) {
        iVar1 = iVar2;
      }
      iVar2 = 0;
      if (-1 < iVar3) {
        iVar2 = iVar1;
      }
      return iVar2;
    }
  }
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

