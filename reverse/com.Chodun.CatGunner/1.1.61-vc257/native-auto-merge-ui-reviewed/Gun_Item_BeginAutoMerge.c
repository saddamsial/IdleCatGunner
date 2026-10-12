/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b71518, Ghidra VA 02c71518. */

void Gun_Item_BeginAutoMerge(long param_1)

{
  undefined *puVar1;
  ulong uVar2;
  long lVar3;
  undefined8 uVar4;
  
  if ((bRam000000000625c2c9 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e591c0);
    bRam000000000625c2c9 = 1;
  }
  *(undefined1 *)(param_1 + 0xb9) = 0;
  *(undefined1 *)(param_1 + 0x79) = 1;
  Gun_Item_StopPressCoroutine_0x6000b1f(param_1);
  if (*(char *)(param_1 + 0xb8) != '\0') {
    Gun_Item_ForceEndDrag(param_1);
  }
  lVar3 = *(long *)(param_1 + 0xf0);
  if (lVar3 != 0) {
    MonoBehaviour_StopCoroutine_0x6000d46(param_1,lVar3,0);
    *(undefined8 *)(param_1 + 0xf0) = 0;
    Managed_WriteBarrier((long *)(param_1 + 0xf0),0);
  }
  if (*(long *)(param_1 + 0x110) != 0) {
    MonoBehaviour_StopCoroutine_0x6000d46(param_1,*(long *)(param_1 + 0x110),0);
    *(undefined8 *)(param_1 + 0x110) = 0;
    Managed_WriteBarrier(param_1 + 0x110,0);
  }
  lVar3 = Component_get_transform_0x6000c82(param_1,0);
  if (lVar3 != 0) {
    Transform_set_localScale_0x6000f5e
              (*(undefined4 *)(param_1 + 0xf8),*(undefined4 *)(param_1 + 0xfc),
               *(undefined4 *)(param_1 + 0x100),lVar3,0);
    puVar1 = PTR_DAT_05e591c0;
    if (*(long *)(param_1 + 0x38) != 0) {
      GameObject_SetActive_0x6000cfe(*(long *)(param_1 + 0x38),0,0);
      uVar4 = *(undefined8 *)(param_1 + 0x68);
      if (*(int *)(*(long *)puVar1 + 0xe4) == 0) {
        func_0x029f5bd0();
      }
      uVar2 = Object_op_Inequality_0x6000ded(uVar4,0,0);
      if ((uVar2 & 1) != 0) {
        if (*(long *)(param_1 + 0x68) == 0) goto LAB_02c7167c;
        GameObject_SetActive_0x6000cfe(*(long *)(param_1 + 0x68),1,0);
      }
      uVar4 = *(undefined8 *)(param_1 + 0xa8);
      if (*(int *)(*(long *)puVar1 + 0xe4) == 0) {
        func_0x029f5bd0();
      }
      uVar2 = Object_op_Inequality_0x6000ded(uVar4,0,0);
      if ((uVar2 & 1) == 0) {
        return;
      }
      if (*(long *)(param_1 + 0xa8) != 0) {
        CanvasGroup_set_blocksRaycasts_0x6000007(*(long *)(param_1 + 0xa8),0,0);
        return;
      }
    }
  }
LAB_02c7167c:
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

