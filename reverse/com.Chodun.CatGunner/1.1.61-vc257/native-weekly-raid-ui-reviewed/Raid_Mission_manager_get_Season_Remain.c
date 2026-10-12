/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b54730, Ghidra VA 02c54730. */

void Raid_Mission_manager_get_Season_Remain(void)

{
  undefined *puVar1;
  
  puVar1 = PTR_DAT_05e5e070;
  if ((bRam000000000625c178 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e5e070);
    bRam000000000625c178 = 1;
  }
  if (*(int *)(*(long *)puVar1 + 0xe4) == 0) {
    func_0x029f5bd0();
  }
  Raid_manager_Season_Remain_Duration_0x6000925();
  return;
}

