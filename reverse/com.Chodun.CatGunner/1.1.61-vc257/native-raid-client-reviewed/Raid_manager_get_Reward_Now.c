/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b570d8, Ghidra VA 02c570d8. */

void Raid_manager_get_Reward_Now(long param_1)

{
  undefined4 uVar1;
  undefined *puVar2;
  
  puVar2 = PTR_DAT_05e5e070;
  if ((bRam000000000625c19e & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e5e070);
    bRam000000000625c19e = 1;
  }
  uVar1 = *(undefined4 *)(param_1 + 0xb0);
  if (*(int *)(*(long *)puVar2 + 0xe4) == 0) {
    func_0x029f5bd0();
  }
  Raid_manager_StarGem_Reward_return(uVar1);
  return;
}

