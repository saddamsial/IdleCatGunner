/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2a82934, Ghidra VA 02b82934. */

void DamageTextAnimationCurve_Bake(long param_1)

{
  undefined8 uVar1;
  
  uVar1 = DamageTextAnimationCurve_BakeCurve(*(undefined8 *)(param_1 + 0x10));
  *(undefined8 *)(param_1 + 0x38) = uVar1;
  Managed_WriteBarrier();
  uVar1 = DamageTextAnimationCurve_BakeCurve(*(undefined8 *)(param_1 + 0x18));
  *(undefined8 *)(param_1 + 0x40) = uVar1;
  Managed_WriteBarrier();
  uVar1 = DamageTextAnimationCurve_BakeCurve(*(undefined8 *)(param_1 + 0x20));
  *(undefined8 *)(param_1 + 0x48) = uVar1;
  Managed_WriteBarrier();
  uVar1 = DamageTextAnimationCurve_BakeCurve(*(undefined8 *)(param_1 + 0x28));
  *(undefined8 *)(param_1 + 0x50) = uVar1;
  Managed_WriteBarrier((undefined8 *)(param_1 + 0x50),uVar1);
  *(undefined1 *)(param_1 + 0x30) = 1;
  return;
}

