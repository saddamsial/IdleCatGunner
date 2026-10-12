/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2ba3de0, Ghidra VA 02ca3de0. */

void StepUp_Banner__OnEnable(long param_1)

{
  undefined8 uVar1;
  
  uVar1 = StepUp_Banner__TimerRoutine();
  uVar1 = MonoBehaviour_StartCoroutine_0x6000d43(param_1,uVar1,0);
  *(undefined8 *)(param_1 + 0x38) = uVar1;
  Managed_WriteBarrier((undefined8 *)(param_1 + 0x38),uVar1);
  return;
}

