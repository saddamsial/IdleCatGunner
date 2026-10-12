/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b53ab4, Ghidra VA 02c53ab4. */

void Raid_Mission_manager_EnsureMissions(long param_1)

{
  if ((*(long *)(param_1 + 0x20) != 0) && (*(int *)(*(long *)(param_1 + 0x20) + 0x18) == 8)) {
    return;
  }
  Raid_Mission_manager_Balance_Reload();
  return;
}

