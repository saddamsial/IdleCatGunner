/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b70d14, Ghidra VA 02c70d14. */

void Gun_Item_EndAutoMerge(long param_1)

{
  undefined *puVar1;
  long lVar2;
  ulong uVar3;
  undefined8 uVar4;
  
  puVar1 = PTR_DAT_05e591c0;
  if ((bRam000000000625c2ca & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e591c0);
    bRam000000000625c2ca = 1;
  }
  lVar2 = *(long *)puVar1;
  uVar4 = *(undefined8 *)(param_1 + 0x68);
  *(undefined1 *)(param_1 + 0x79) = 0;
  if (*(int *)(lVar2 + 0xe4) == 0) {
    func_0x029f5bd0();
  }
  uVar3 = Object_op_Inequality_0x6000ded(uVar4,0,0);
  if ((uVar3 & 1) != 0) {
    if (*(long *)(param_1 + 0x68) == 0) goto LAB_02c70dd8;
    GameObject_SetActive_0x6000cfe(*(long *)(param_1 + 0x68),0,0);
  }
  uVar4 = *(undefined8 *)(param_1 + 0xa8);
  if (*(int *)(*(long *)puVar1 + 0xe4) == 0) {
    func_0x029f5bd0();
  }
  uVar3 = Object_op_Inequality_0x6000ded(uVar4,0,0);
  if ((uVar3 & 1) == 0) {
    return;
  }
  if (*(long *)(param_1 + 0xa8) != 0) {
    CanvasGroup_set_blocksRaycasts_0x6000007(*(long *)(param_1 + 0xa8),1,0);
    return;
  }
LAB_02c70dd8:
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

