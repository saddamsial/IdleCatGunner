/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2bb1884, Ghidra VA 02cb1884. */

void Upgrade_Ingame_OnPointerDown(long param_1)

{
  undefined8 uVar1;
  long lVar2;
  
  lVar2 = *(long *)(param_1 + 0xd0);
  if (lVar2 != 0) {
    MonoBehaviour_StopCoroutine_0x6000d46(param_1,lVar2,0);
  }
  uVar1 = Upgrade_Ingame_HoldUpgradeRoutine_0x6000f79(param_1);
  uVar1 = MonoBehaviour_StartCoroutine_0x6000d43(param_1,uVar1,0);
  *(undefined8 *)(param_1 + 0xd0) = uVar1;
  Managed_WriteBarrier((long *)(param_1 + 0xd0));
  return;
}

