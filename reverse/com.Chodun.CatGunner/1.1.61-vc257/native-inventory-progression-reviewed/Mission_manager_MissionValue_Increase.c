/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2aa6a18, Ghidra VA 02ba6a18. */

void Mission_manager_MissionValue_Increase(long param_1,int param_2)

{
  long lVar1;
  ulong uVar2;
  
  Mission_manager_Mission_Reload();
  if (param_2 < 2) {
    if (param_2 == 0) {
      *(int *)(param_1 + 0x50) = *(int *)(param_1 + 0x50) + 1;
    }
    else if (param_2 == 1) {
      *(int *)(param_1 + 0x54) = *(int *)(param_1 + 0x54) + 1;
    }
  }
  else if (param_2 == 2) {
    *(int *)(param_1 + 0x58) = *(int *)(param_1 + 0x58) + 1;
  }
  else if (param_2 == 3) {
    *(int *)(param_1 + 0x5c) = *(int *)(param_1 + 0x5c) + 1;
  }
  if ((*(long *)(param_1 + 0x88) != 0) &&
     (lVar1 = Component_get_gameObject_0x6000c83(*(long *)(param_1 + 0x88),0), lVar1 != 0)) {
    uVar2 = GameObject_get_activeInHierarchy_0x6000d00(lVar1,0);
    if ((uVar2 & 1) != 0) {
      Mission_manager_Mission_UI_Reload_0x6000351(param_1);
      return;
    }
    return;
  }
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

