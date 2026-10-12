/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b5d1b8, Ghidra VA 02c5d1b8. */

void Fish_manager_Awake(undefined8 param_1)

{
  undefined *puVar1;
  
  puVar1 = PTR_DAT_05e5dd38;
  if ((bRam000000000625c1f6 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e5dd38);
    bRam000000000625c1f6 = 1;
  }
  **(undefined8 **)(*(long *)puVar1 + 0xb8) = param_1;
  Managed_WriteBarrier(*(undefined8 *)(*(long *)puVar1 + 0xb8),param_1);
  return;
}

