/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b6d2f8, Ghidra VA 02c6d2f8. */

void StarUpgrade_manager_Awake(undefined8 param_1)

{
  undefined *puVar1;
  long lVar2;
  
  puVar1 = PTR_DAT_05e5e058;
  if ((bRam000000000625c2a5 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e5e058);
    bRam000000000625c2a5 = 1;
  }
  lVar2 = *(long *)puVar1;
  if (*(int *)(lVar2 + 0xe4) == 0) {
    func_0x029f5bd0();
    lVar2 = *(long *)puVar1;
  }
  **(undefined8 **)(lVar2 + 0xb8) = param_1;
  Managed_WriteBarrier(*(undefined8 *)(*(long *)puVar1 + 0xb8),param_1);
  StarUpgrade_manager_EnsureTables();
  StarUpgrade_manager_EnsureArrays(param_1);
  return;
}

