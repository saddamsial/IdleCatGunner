/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b615e0, Ghidra VA 02c615e0. */

void Fish_Item_BeginAutoMerge(long param_1,byte param_2)

{
  undefined *puVar1;
  long lVar2;
  ulong uVar3;
  undefined8 uVar4;
  
  if ((bRam000000000625c220 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e591c0);
    bRam000000000625c220 = 1;
  }
  *(byte *)(param_1 + 0x87) = param_2 & 1;
  *(undefined1 *)(param_1 + 0x86) = 1;
  *(undefined1 *)(param_1 + 0xb0) = 0;
  Fish_Item_StopPressCoroutine(param_1);
  if (*(char *)(param_1 + 0x84) != '\0') {
    Fish_Item_ForceEndDrag(param_1);
  }
  lVar2 = Component_get_transform_0x6000c82(param_1,0);
  puVar1 = PTR_DAT_05e591c0;
  if (lVar2 != 0) {
    Transform_set_localScale_0x6000f5e
              (*(undefined4 *)(param_1 + 0x9c),*(undefined4 *)(param_1 + 0xa0),
               *(undefined4 *)(param_1 + 0xa4),lVar2,0);
    Fish_Item_Fusion_Alert_Off(param_1);
    uVar4 = *(undefined8 *)(param_1 + 0x38);
    if (*(int *)(*(long *)puVar1 + 0xe4) == 0) {
      func_0x029f5bd0();
    }
    uVar3 = Object_op_Inequality_0x6000ded(uVar4,0,0);
    if ((uVar3 & 1) != 0) {
      if (*(long *)(param_1 + 0x38) == 0) goto LAB_02c616f0;
      GameObject_SetActive_0x6000cfe(*(long *)(param_1 + 0x38),1,0);
    }
    uVar4 = *(undefined8 *)(param_1 + 0x68);
    if (*(int *)(*(long *)puVar1 + 0xe4) == 0) {
      func_0x029f5bd0();
    }
    uVar3 = Object_op_Inequality_0x6000ded(uVar4,0,0);
    if ((uVar3 & 1) != 0) {
      if (*(long *)(param_1 + 0x68) == 0) goto LAB_02c616f0;
      CanvasGroup_set_blocksRaycasts_0x6000007(*(long *)(param_1 + 0x68),0,0);
    }
    Fish_Item_UpdateSortOrder(param_1);
    return;
  }
LAB_02c616f0:
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

