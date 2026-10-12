/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b54b24, Ghidra VA 02c54b24. */

int Raid_Mission_manager_Reward_GetAll(long param_1)

{
  int iVar1;
  uint uVar2;
  int iVar3;
  int iVar4;
  
  iVar3 = 0;
  iVar4 = 0;
  do {
    iVar1 = Raid_Mission_manager_State_return(param_1,iVar4);
    if (iVar1 == 2) {
      if (*(char *)(param_1 + 0x48) != '\0') {
        uVar2 = Raid_Mission_manager_Reward_ReGet(param_1,iVar4);
        goto LAB_02c54b78;
      }
    }
    else if (iVar1 == 1) {
      uVar2 = Raid_Mission_manager_Reward_Get(param_1,iVar4);
LAB_02c54b78:
      iVar3 = iVar3 + (uVar2 & 1);
    }
    iVar4 = iVar4 + 1;
    if (iVar4 == 8) {
      return iVar3;
    }
  } while( true );
}

