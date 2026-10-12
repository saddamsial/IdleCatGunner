/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2a82d00, Ghidra VA 02b82d00. */

void DamageTextAnimationSetting_Awake(undefined8 param_1)

{
  undefined *puVar1;
  
  puVar1 = PTR_DAT_05e5d6d8;
  if ((bRam000000000625b8e0 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e5d6d8);
    bRam000000000625b8e0 = 1;
  }
  **(undefined8 **)(*(long *)puVar1 + 0xb8) = param_1;
  Managed_WriteBarrier(*(undefined8 *)(*(long *)puVar1 + 0xb8),param_1);
  return;
}

