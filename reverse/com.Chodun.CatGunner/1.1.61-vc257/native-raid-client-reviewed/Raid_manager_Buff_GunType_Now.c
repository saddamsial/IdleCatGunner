/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b59868, Ghidra VA 02c59868. */

void Raid_manager_Buff_GunType_Now(void)

{
  undefined *puVar1;
  
  puVar1 = PTR_DAT_05e5e070;
  if ((bRam000000000625c1bf & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e5e070);
    bRam000000000625c1bf = 1;
  }
  if (*(int *)(*(long *)puVar1 + 0xe4) == 0) {
    func_0x029f5bd0();
  }
  Raid_manager_GetBossIndex();
  Raid_manager_Buff_GunType_return();
  return;
}

