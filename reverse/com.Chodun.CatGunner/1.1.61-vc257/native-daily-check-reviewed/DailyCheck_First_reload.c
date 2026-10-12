/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2a9f374, Ghidra VA 02b9f374. */

void DailyCheck_First_reload(long param_1,undefined8 param_2,undefined4 param_3,undefined4 param_4)

{
  undefined8 uVar1;
  
  *(undefined8 *)(param_1 + 0x28) = param_2;
  *(undefined4 *)(param_1 + 0x30) = param_3;
  *(undefined4 *)(param_1 + 0x34) = param_4;
  uVar1 = DailyCheck_Show_WhenReady();
  MonoBehaviour_StartCoroutine_0x6000d43(param_1,uVar1,0);
  return;
}

