/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2ba6eb0, Ghidra VA 02ca6eb0. */

void WeeklyShop_Awake(undefined8 param_1)

{
  undefined *puVar1;
  
  puVar1 = PTR_DAT_05e63828;
  if ((bRam000000000625c4d9 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e63828);
    bRam000000000625c4d9 = 1;
  }
  **(undefined8 **)(*(long *)puVar1 + 0xb8) = param_1;
  Managed_WriteBarrier(*(undefined8 *)(*(long *)puVar1 + 0xb8),param_1);
  return;
}

