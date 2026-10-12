/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b2f5c8, Ghidra VA 02c2f5c8. */

void Adventure_Ticket_UI_OnEnable(long param_1)

{
  undefined8 uVar1;
  
  uVar1 = Adventure_Ticket_UI_Ticket_Check_Routine();
  uVar1 = MonoBehaviour_StartCoroutine_0x6000d43(param_1,uVar1,0);
  *(undefined8 *)(param_1 + 0x30) = uVar1;
  Managed_WriteBarrier((undefined8 *)(param_1 + 0x30),uVar1);
  return;
}

