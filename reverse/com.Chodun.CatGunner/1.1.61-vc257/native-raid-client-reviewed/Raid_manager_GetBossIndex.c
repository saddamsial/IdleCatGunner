/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b58974, Ghidra VA 02c58974. */

void Raid_manager_GetBossIndex(void)

{
  undefined *puVar1;
  
  puVar1 = PTR_DAT_05e62660;
  if ((bRam000000000625c1bb & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e62660);
    bRam000000000625c1bb = 1;
  }
  if (*(int *)(*(long *)puVar1 + 0xe4) == 0) {
    func_0x029f5bd0();
  }
  DailyGun_Week_Offset_return_0x6000ccd(0);
  return;
}

