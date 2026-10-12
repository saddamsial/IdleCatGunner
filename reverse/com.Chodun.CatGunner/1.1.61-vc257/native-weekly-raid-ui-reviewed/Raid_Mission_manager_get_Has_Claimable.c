/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b52828, Ghidra VA 02c52828. */

bool Raid_Mission_manager_get_Has_Claimable(long param_1)

{
  bool bVar1;
  int iVar2;
  uint uVar3;
  
  uVar3 = 0;
  bVar1 = true;
  do {
    iVar2 = Raid_Mission_manager_State_return(param_1,uVar3);
    if (iVar2 == 2) {
      if (*(char *)(param_1 + 0x48) != '\0') {
        return bVar1;
      }
    }
    else if (iVar2 == 1) {
      return bVar1;
    }
    bVar1 = uVar3 < 7;
    uVar3 = uVar3 + 1;
  } while (uVar3 != 8);
  return bVar1;
}

