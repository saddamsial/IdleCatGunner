/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2aa3bb0, Ghidra VA 02ba3bb0. */

void Mission_manager_RestartAlertLoop(long param_1)

{
  undefined8 uVar1;
  long lVar2;
  
  lVar2 = *(long *)(param_1 + 0x80);
  if (lVar2 != 0) {
    MonoBehaviour_StopCoroutine_0x6000d46(param_1,lVar2,0);
  }
  uVar1 = Mission_manager_AlertLoop_Co(param_1);
  uVar1 = MonoBehaviour_StartCoroutine_0x6000d43(param_1,uVar1,0);
  *(undefined8 *)(param_1 + 0x80) = uVar1;
  Managed_WriteBarrier((long *)(param_1 + 0x80));
  return;
}

