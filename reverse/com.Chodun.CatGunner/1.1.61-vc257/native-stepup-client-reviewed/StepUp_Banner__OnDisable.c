/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2ba3e7c, Ghidra VA 02ca3e7c. */

void StepUp_Banner__OnDisable(long param_1)

{
  long lVar1;
  
  lVar1 = *(long *)(param_1 + 0x38);
  if (lVar1 != 0) {
    MonoBehaviour_StopCoroutine_0x6000d46(param_1,lVar1,0);
    *(undefined8 *)(param_1 + 0x38) = 0;
    Managed_WriteBarrier((long *)(param_1 + 0x38),0);
    return;
  }
  return;
}

