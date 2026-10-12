/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b34b50, Ghidra VA 02c34b50. */

void Adventure_Map_info_item_StopTimer(long param_1)

{
  long lVar1;
  
  lVar1 = *(long *)(param_1 + 0x98);
  if (lVar1 != 0) {
    MonoBehaviour_StopCoroutine_0x6000d46(param_1,lVar1,0);
    *(undefined8 *)(param_1 + 0x98) = 0;
    Managed_WriteBarrier((long *)(param_1 + 0x98),0);
    return;
  }
  return;
}

