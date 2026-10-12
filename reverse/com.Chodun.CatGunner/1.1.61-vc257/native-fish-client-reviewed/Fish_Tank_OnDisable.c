/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b631ec, Ghidra VA 02c631ec. */

void Fish_Tank_OnDisable(long param_1)

{
  long lVar1;
  
  lVar1 = *(long *)(param_1 + 0x58);
  if (lVar1 != 0) {
    MonoBehaviour_StopCoroutine_0x6000d46(param_1,lVar1,0);
    *(undefined8 *)(param_1 + 0x58) = 0;
    Managed_WriteBarrier((long *)(param_1 + 0x58),0);
    return;
  }
  return;
}

