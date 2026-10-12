/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2ba4d0c, Ghidra VA 02ca4d0c. */

void StepUp_popup_OnEnable(long param_1)

{
  undefined8 uVar1;
  
  uVar1 = StepUp_popup_TimerRoutine();
  uVar1 = MonoBehaviour_StartCoroutine_0x6000d43(param_1,uVar1,0);
  *(undefined8 *)(param_1 + 0x38) = uVar1;
  Managed_WriteBarrier((undefined8 *)(param_1 + 0x38),uVar1);
  return;
}

