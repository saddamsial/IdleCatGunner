/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b06ba4, Ghidra VA 02c06ba4. */

void OfflineProgressManager_ShowResult(long param_1)

{
  undefined8 uVar1;
  
  if (*(long *)(param_1 + 0x38) != 0) {
    uVar1 = OfflineProgressManager_ShowAfterFrame();
    MonoBehaviour_StartCoroutine_0x6000d43(param_1,uVar1,0);
    return;
  }
  return;
}

