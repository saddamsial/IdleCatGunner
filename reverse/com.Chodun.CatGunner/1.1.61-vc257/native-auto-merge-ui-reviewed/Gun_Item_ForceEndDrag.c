/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b70ddc, Ghidra VA 02c70ddc. */

void Gun_Item_ForceEndDrag(long param_1)

{
  undefined *puVar1;
  ulong uVar2;
  long lVar3;
  undefined8 uVar4;
  
  if ((bRam000000000625c2c7 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e591c0);
    bRam000000000625c2c7 = 1;
  }
  puVar1 = PTR_DAT_05e591c0;
  if (*(char *)(param_1 + 0xb8) == '\0') {
    return;
  }
  uVar4 = *(undefined8 *)(param_1 + 0xa8);
  *(undefined1 *)(param_1 + 0xb8) = 0;
  if (*(int *)(*(long *)puVar1 + 0xe4) == 0) {
    func_0x029f5bd0();
  }
  uVar2 = Object_op_Inequality_0x6000ded(uVar4,0,0);
  if ((uVar2 & 1) != 0) {
    if (*(long *)(param_1 + 0xa8) == 0) goto LAB_02c70f18;
    CanvasGroup_set_blocksRaycasts_0x6000007(*(long *)(param_1 + 0xa8),1,0);
  }
  if (*(long *)(param_1 + 0x38) != 0) {
    GameObject_SetActive_0x6000cfe(*(long *)(param_1 + 0x38),0,0);
    lVar3 = *(long *)(param_1 + 0xf0);
    if (lVar3 != 0) {
      MonoBehaviour_StopCoroutine_0x6000d46(param_1,lVar3,0);
      *(undefined8 *)(param_1 + 0xf0) = 0;
      Managed_WriteBarrier((long *)(param_1 + 0xf0),0);
    }
    lVar3 = Component_get_transform_0x6000c82(param_1,0);
    if (lVar3 != 0) {
      Transform_set_localScale_0x6000f5e
                (*(undefined4 *)(param_1 + 0xf8),*(undefined4 *)(param_1 + 0xfc),
                 *(undefined4 *)(param_1 + 0x100),lVar3,0);
      Gun_Item_ClearSlotHighlight_0x6000b33(param_1);
      Gun_Item_Safe_HUD_Dragging_0x6000b2c(param_1,0);
      *(undefined8 *)(param_1 + 0xc0) = 0;
      Managed_WriteBarrier((undefined8 *)(param_1 + 0xc0),0);
      *(undefined1 *)(param_1 + 200) = 0;
      *(undefined8 *)(param_1 + 0xd0) = 0;
      Managed_WriteBarrier((undefined8 *)(param_1 + 0xd0),0);
      *(undefined8 *)(param_1 + 0xe0) = 0;
      *(undefined4 *)(param_1 + 0xd8) = 0xffffffff;
      Managed_WriteBarrier((undefined8 *)(param_1 + 0xe0),0);
      return;
    }
  }
LAB_02c70f18:
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

