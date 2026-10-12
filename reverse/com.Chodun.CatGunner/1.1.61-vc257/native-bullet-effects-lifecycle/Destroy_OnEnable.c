/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b178fc, Ghidra VA 02c178fc. */

void Destroy_OnEnable(long param_1)

{
  undefined8 uVar1;
  long lVar2;
  
  lVar2 = *(long *)(param_1 + 0x28);
  if (lVar2 != 0) {
    MonoBehaviour_StopCoroutine_0x6000d45(param_1,lVar2,0);
  }
  uVar1 = Destroy_Disable(param_1);
  *(undefined8 *)(param_1 + 0x28) = uVar1;
  func_0x029f59f4((long *)(param_1 + 0x28),uVar1);
  MonoBehaviour_StartCoroutine_0x6000d43(param_1,*(undefined8 *)(param_1 + 0x28),0);
  return;
}

