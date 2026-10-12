/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b3788c, Ghidra VA 02c3788c. */

void Buff_manager_TryStartCoroutine(long param_1)

{
  undefined8 uVar1;
  
  if (*(long *)(param_1 + 0x40) != 0) {
    return;
  }
  uVar1 = Buff_manager_BuffTickCoroutine();
  uVar1 = MonoBehaviour_StartCoroutine_0x6000d43(param_1,uVar1,0);
  *(undefined8 *)(param_1 + 0x40) = uVar1;
  Managed_WriteBarrier((long *)(param_1 + 0x40));
  return;
}

