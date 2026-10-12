/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2bae590, Ghidra VA 02cae590. */

void TutorialArrow_UI_OnEnable(long param_1)

{
  undefined *puVar1;
  ulong uVar2;
  undefined8 uVar3;
  
  puVar1 = PTR_DAT_05e591c0;
  if ((bRam000000000625c52d & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e591c0);
    bRam000000000625c52d = 1;
  }
  uVar3 = *(undefined8 *)(param_1 + 0x20);
  if (*(int *)(*(long *)puVar1 + 0xe4) == 0) {
    func_0x029f5bd0();
  }
  uVar2 = Object_op_Inequality_0x6000ded(uVar3,0,0);
  if ((uVar2 & 1) != 0) {
    uVar3 = *(undefined8 *)(param_1 + 0x28);
    if (*(int *)(*(long *)puVar1 + 0xe4) == 0) {
      func_0x029f5bd0();
    }
    uVar2 = Object_op_Inequality_0x6000ded(uVar3,0,0);
    if ((uVar2 & 1) != 0) {
      if (*(long *)(param_1 + 0x50) == 0) {
        uVar3 = TutorialArrow_UI_MoveLoop(param_1);
        uVar3 = MonoBehaviour_StartCoroutine_0x6000d43(param_1,uVar3,0);
        *(undefined8 *)(param_1 + 0x50) = uVar3;
        Managed_WriteBarrier((long *)(param_1 + 0x50));
        return;
      }
    }
  }
  return;
}

