/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b60fe0, Ghidra VA 02c60fe0. */

void Fish_Item_StopPressCoroutine(long param_1)

{
  long lVar1;
  
  lVar1 = *(long *)(param_1 + 0xa8);
  if (lVar1 != 0) {
    MonoBehaviour_StopCoroutine_0x6000d46(param_1,lVar1,0);
    *(undefined8 *)(param_1 + 0xa8) = 0;
    Managed_WriteBarrier((long *)(param_1 + 0xa8),0);
    return;
  }
  return;
}

