/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b883f0, Ghidra VA 02c883f0. */

bool Rebirth_manager_UpgradeRebirth_Able_return(long param_1)

{
  Rebirth_manager_UpgradeRebirth_DayCheck();
  return *(int *)(param_1 + 0x4c) < 1;
}

