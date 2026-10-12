/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b5952c, Ghidra VA 02c5952c. */

void Raid_manager_Buff_GunNum_return(long param_1)

{
  undefined4 uVar1;
  undefined *puVar2;
  
  puVar2 = PTR_DAT_05e5e070;
  if ((bRam000000000625c1be & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e5e070);
    bRam000000000625c1be = 1;
  }
  uVar1 = *(undefined4 *)(param_1 + 0x20);
  if (*(int *)(*(long *)puVar2 + 0xe4) == 0) {
    func_0x029f5bd0();
  }
  Raid_manager_Buff_GunType_return(uVar1);
  return;
}

