/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b53ad0, Ghidra VA 02c53ad0. */

void Raid_Mission_manager_EnsureArrays(long param_1)

{
  Raid_Mission_manager_Resize(param_1 + 0x30);
  Raid_Mission_manager_Resize(param_1 + 0x38);
  Raid_Mission_manager_Resize(param_1 + 0x40);
  return;
}

