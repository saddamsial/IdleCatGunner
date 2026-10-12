/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2bae6c8, Ghidra VA 02cae6c8. */

void TutorialArrow_UI_OnDisable(long param_1)

{
  long lVar1;
  
  lVar1 = *(long *)(param_1 + 0x50);
  if (lVar1 != 0) {
    MonoBehaviour_StopCoroutine_0x6000d46(param_1,lVar1,0);
    *(undefined8 *)(param_1 + 0x50) = 0;
    Managed_WriteBarrier((long *)(param_1 + 0x50),0);
    return;
  }
  return;
}

