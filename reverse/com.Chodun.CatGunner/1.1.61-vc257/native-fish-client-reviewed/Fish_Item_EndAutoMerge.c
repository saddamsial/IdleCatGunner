/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b61024, Ghidra VA 02c61024. */

void Fish_Item_EndAutoMerge(long param_1)

{
  char cVar1;
  undefined *puVar2;
  long lVar3;
  ulong uVar4;
  undefined8 uVar5;
  
  puVar2 = PTR_DAT_05e591c0;
  if ((bRam000000000625c221 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e591c0);
    bRam000000000625c221 = 1;
  }
  lVar3 = *(long *)puVar2;
  cVar1 = *(char *)(param_1 + 0x86);
  *(undefined2 *)(param_1 + 0x86) = 0;
  uVar5 = *(undefined8 *)(param_1 + 0x38);
  if (*(int *)(lVar3 + 0xe4) == 0) {
    func_0x029f5bd0();
  }
  uVar4 = Object_op_Inequality_0x6000ded(uVar5,0,0);
  if ((uVar4 & 1) != 0) {
    if (*(long *)(param_1 + 0x38) == 0) goto LAB_02c61134;
    GameObject_SetActive_0x6000cfe(*(long *)(param_1 + 0x38),0,0);
  }
  uVar5 = *(undefined8 *)(param_1 + 0x68);
  if (*(int *)(*(long *)puVar2 + 0xe4) == 0) {
    func_0x029f5bd0();
  }
  uVar4 = Object_op_Inequality_0x6000ded(uVar5,0,0);
  if ((uVar4 & 1) != 0) {
    if (*(long *)(param_1 + 0x68) == 0) {
LAB_02c61134:
                    /* WARNING: Subroutine does not return */
      Throw_NullReference_Wrapper();
    }
    CanvasGroup_set_blocksRaycasts_0x6000007(*(long *)(param_1 + 0x68),1,0);
  }
  if ((cVar1 != '\0') && (*(char *)(param_1 + 0x48) != '\0')) {
    uVar5 = *(undefined8 *)(param_1 + 0x60);
    if (*(int *)(*(long *)puVar2 + 0xe4) == 0) {
      func_0x029f5bd0();
    }
    uVar4 = Object_op_Inequality_0x6000ded(uVar5,0,0);
    if ((uVar4 & 1) != 0) {
      Fish_Item_UpdateSortOrder(param_1);
      return;
    }
  }
  return;
}

