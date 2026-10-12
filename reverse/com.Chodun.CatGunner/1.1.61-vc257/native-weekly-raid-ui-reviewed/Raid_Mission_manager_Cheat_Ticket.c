/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b551f8, Ghidra VA 02c551f8. */

void Raid_Mission_manager_Cheat_Ticket(undefined8 param_1)

{
  ulong uVar1;
  
  uVar1 = Cheat_manager_get_IsCheatBuild_0x6000281(0);
  if ((uVar1 & 1) != 0) {
    Raid_Mission_manager_Ticket_Apply(param_1);
    return;
  }
  return;
}

