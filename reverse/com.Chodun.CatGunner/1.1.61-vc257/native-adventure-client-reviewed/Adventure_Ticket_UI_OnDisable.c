/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b2f664, Ghidra VA 02c2f664. */

void Adventure_Ticket_UI_OnDisable(long param_1)

{
  long *plVar1;
  
  plVar1 = (long *)(param_1 + 0x30);
  if (*plVar1 != 0) {
    MonoBehaviour_StopCoroutine_0x6000d46(param_1,*plVar1,0);
  }
  *plVar1 = 0;
  Managed_WriteBarrier(plVar1,0);
  return;
}

