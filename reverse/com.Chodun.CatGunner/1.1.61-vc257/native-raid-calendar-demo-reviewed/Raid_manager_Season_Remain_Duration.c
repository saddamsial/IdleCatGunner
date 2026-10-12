/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b5477c, Ghidra VA 02c5477c. */

void Raid_manager_Season_Remain_Duration(void)

{
  undefined *puVar1;
  
  puVar1 = PTR_DAT_05e62660;
  if ((bRam000000000625c1bc & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e62660);
    bRam000000000625c1bc = 1;
  }
  if (*(int *)(*(long *)puVar1 + 0xe4) == 0) {
    func_0x029f5bd0();
  }
  DailyGun_Remain_return_0x6000cca(0);
  return;
}

