/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b884dc, Ghidra VA 02c884dc. */

bool Rebirth_manager_UpgradeRebirth_IAP_Able_return(long param_1)

{
  bool bVar1;
  ulong uVar2;
  
  uVar2 = Rebirth_manager_UpgradeRebirth_IAP_Unlocked_return();
  if ((uVar2 & 1) == 0) {
    bVar1 = false;
  }
  else {
    Rebirth_manager_UpgradeRebirth_DayCheck_0x6000c92(param_1);
    bVar1 = *(int *)(param_1 + 0x50) < 1;
  }
  return bVar1;
}

