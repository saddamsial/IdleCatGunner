/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b6aff0, Ghidra VA 02c6aff0. */

void Gun_Merge_Tutorial_OnEnable(undefined8 param_1)

{
  undefined8 uVar1;
  
  uVar1 = Gun_Merge_Tutorial_ReloadNextFrame();
  MonoBehaviour_StartCoroutine_0x6000d43(param_1,uVar1,0);
  return;
}

