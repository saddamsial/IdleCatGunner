/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b549a0, Ghidra VA 02c549a0. */

void Raid_manager_get_Season_Index_Now(void)

{
  undefined *puVar1;
  
  puVar1 = PTR_DAT_05e62660;
  if ((bRam000000000625c1ba & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e62660);
    bRam000000000625c1ba = 1;
  }
  if (*(int *)(*(long *)puVar1 + 0xe4) == 0) {
    func_0x029f5bd0();
  }
  DailyGun_WeekIndex_return_0x6000ccc(0);
  return;
}

