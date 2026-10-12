/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2a9b6d0, Ghidra VA 02b9b6d0. */

void BounceStart_OnEnable(long param_1)

{
  undefined8 uVar1;
  float fVar2;
  
  *(undefined4 *)(param_1 + 0x20) = 0;
  if (*(char *)(param_1 + 0x38) == '\0') {
    *(undefined1 *)(param_1 + 0x38) = 1;
    fVar2 = *(float *)(param_1 + 0x28) * *(float *)(param_1 + 0x2c);
    *(float *)(param_1 + 0x30) = fVar2;
    *(float *)(param_1 + 0x34) = *(float *)(param_1 + 0x28) - fVar2;
  }
  uVar1 = BounceStart_Coroutine_NoRepeat(param_1);
  MonoBehaviour_StartCoroutine_0x6000d43(param_1,uVar1,0);
  return;
}

