/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2ba43b4, Ghidra VA 02ca43b4. */

void StepUp_Hud__OnDisable(long param_1)

{
  long lVar1;
  
  lVar1 = *(long *)(param_1 + 0x30);
  if (lVar1 != 0) {
    MonoBehaviour_StopCoroutine_0x6000d46(param_1,lVar1,0);
    *(undefined8 *)(param_1 + 0x30) = 0;
    Managed_WriteBarrier((long *)(param_1 + 0x30),0);
    return;
  }
  return;
}

