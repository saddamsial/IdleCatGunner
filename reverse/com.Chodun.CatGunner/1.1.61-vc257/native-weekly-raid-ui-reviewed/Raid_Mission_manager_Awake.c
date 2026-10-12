/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b53a38, Ghidra VA 02c53a38. */

void Raid_Mission_manager_Awake(long param_1)

{
  undefined *puVar1;
  
  puVar1 = PTR_DAT_05e5e068;
  if ((bRam000000000625c16e & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e5e068);
    bRam000000000625c16e = 1;
  }
  **(long **)(*(long *)puVar1 + 0xb8) = param_1;
  Managed_WriteBarrier(*(undefined8 *)(*(long *)puVar1 + 0xb8),param_1);
  if ((*(long *)(param_1 + 0x20) == 0) || (*(int *)(*(long *)(param_1 + 0x20) + 0x18) != 8)) {
    Raid_Mission_manager_Balance_Reload(param_1);
  }
  Raid_Mission_manager_EnsureArrays(param_1);
  return;
}

