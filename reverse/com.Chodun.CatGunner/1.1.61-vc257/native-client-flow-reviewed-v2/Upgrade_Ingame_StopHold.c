/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2bb1948, Ghidra VA 02cb1948. */

void Upgrade_Ingame_StopHold(long param_1)

{
  long lVar1;
  
  lVar1 = *(long *)(param_1 + 0xd0);
  if (lVar1 != 0) {
    MonoBehaviour_StopCoroutine_0x6000d46(param_1,lVar1,0);
    *(undefined8 *)(param_1 + 0xd0) = 0;
    Managed_WriteBarrier((long *)(param_1 + 0xd0),0);
    return;
  }
  return;
}

