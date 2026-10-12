/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b8953c, Ghidra VA 02c8953c. */

void Rebirth_Upgrade_Item_OnHoldStart(long param_1)

{
  undefined8 uVar1;
  long lVar2;
  
  lVar2 = *(long *)(param_1 + 0x60);
  if (lVar2 != 0) {
    MonoBehaviour_StopCoroutine_0x6000d46(param_1,lVar2,0);
  }
  uVar1 = Rebirth_Upgrade_Item_HoldUpgradeRoutine(param_1);
  uVar1 = MonoBehaviour_StartCoroutine_0x6000d43(param_1,uVar1,0);
  *(undefined8 *)(param_1 + 0x60) = uVar1;
  Managed_WriteBarrier((long *)(param_1 + 0x60));
  return;
}

