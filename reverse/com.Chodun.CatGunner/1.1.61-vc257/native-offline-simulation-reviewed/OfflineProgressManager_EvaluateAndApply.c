/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b063dc, Ghidra VA 02c063dc. */

void OfflineProgressManager_EvaluateAndApply(undefined8 param_1)

{
  undefined8 uVar1;
  
  uVar1 = OfflineProgressManager_EvaluateRoutine();
  MonoBehaviour_StartCoroutine_0x6000d43(param_1,uVar1,0);
  return;
}

