/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b57710, Ghidra VA 02c57710. */

undefined4 Raid_manager_Enter_Type_Now(long param_1)

{
  undefined4 uVar1;
  
  Raid_manager_Ticket_Reload();
  if (*(int *)(param_1 + 0x70) < 2) {
    uVar1 = 1;
  }
  else if (*(char *)(param_1 + 0x74) == '\0') {
    uVar1 = 2;
  }
  else {
    uVar1 = 3;
    if (*(char *)(param_1 + 0x75) != '\0') {
      uVar1 = 0;
    }
  }
  return uVar1;
}

