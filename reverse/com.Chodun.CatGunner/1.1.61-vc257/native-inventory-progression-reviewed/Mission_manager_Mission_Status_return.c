/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2aa5a7c, Ghidra VA 02ba5a7c. */

undefined4 Mission_manager_Mission_Status_return(long param_1,long param_2)

{
  int iVar1;
  int iVar2;
  undefined4 uVar3;
  
  if (param_2 == 0) {
                    /* WARNING: Subroutine does not return */
    Throw_NullReference_Wrapper();
  }
  iVar1 = *(int *)(param_2 + 0x18);
  iVar2 = 0;
  if (iVar1 < 2) {
    if (iVar1 == 0) {
      iVar2 = *(int *)(param_1 + 0x50);
    }
    else if (iVar1 == 1) {
      iVar2 = *(int *)(param_1 + 0x54);
    }
  }
  else if (iVar1 == 2) {
    iVar2 = *(int *)(param_1 + 0x58);
  }
  else if (iVar1 == 3) {
    iVar2 = *(int *)(param_1 + 0x5c);
  }
  if (iVar2 < *(int *)(param_2 + 0x1c)) {
    return 0;
  }
  if (*(char *)(param_2 + 0x24) != '\0') {
    uVar3 = 2;
    if (*(char *)(param_2 + 0x25) == '\0') {
      uVar3 = 3;
    }
    return uVar3;
  }
  return 1;
}

