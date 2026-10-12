/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b63144, Ghidra VA 02c63144. */

void Fish_Tank_OnEnable(long param_1)

{
  undefined8 uVar1;
  
  if (*(char *)(param_1 + 0x50) != '\0') {
    *(undefined1 *)(param_1 + 0x50) = 0;
    uVar1 = Fish_Tank_ReloadNextFrame(param_1);
    MonoBehaviour_StartCoroutine_0x6000d43(param_1,uVar1,0);
    return;
  }
  Fish_Tank_StartAutoMergeChain(param_1);
  return;
}

