/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b89600, Ghidra VA 02c89600. */

void Rebirth_Upgrade_Item_StopHold(long param_1)

{
  long lVar1;
  
  lVar1 = *(long *)(param_1 + 0x60);
  if (lVar1 != 0) {
    MonoBehaviour_StopCoroutine_0x6000d46(param_1,lVar1,0);
    *(undefined8 *)(param_1 + 0x60) = 0;
    Managed_WriteBarrier((long *)(param_1 + 0x60),0);
    return;
  }
  return;
}

