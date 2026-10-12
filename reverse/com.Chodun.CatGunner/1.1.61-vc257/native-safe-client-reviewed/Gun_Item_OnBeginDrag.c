/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b71c84, Ghidra VA 02c71c84. */

void Gun_Item_OnBeginDrag(long param_1,long param_2)

{
  ulong uVar1;
  long lVar2;
  undefined8 *puVar3;
  undefined8 uVar4;
  undefined8 uVar5;
  undefined4 uVar6;
  undefined4 uVar7;
  
  if ((bRam000000000625c2d1 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e5ba78);
    func_0x029f5a50(PTR_DAT_05e591c0);
    func_0x029f5a50(PTR_DAT_05e5cf00);
    bRam000000000625c2d1 = 1;
  }
  if (*(char *)(param_1 + 0x79) != '\0') {
    return;
  }
  *(undefined2 *)(param_1 + 0xb8) = 1;
  Gun_Item_RestoreScaleForDrag_0x6000b22(param_1);
  puVar3 = (undefined8 *)(param_1 + 0xa0);
  uVar5 = *puVar3;
  if (*(int *)(*(long *)PTR_DAT_05e591c0 + 0xe4) == 0) {
    func_0x029f5bd0();
  }
  uVar1 = Object_op_Equality_0x6000dec(uVar5,0,0);
  if ((uVar1 & 1) != 0) {
    lVar2 = func_0x02fe64b8(param_1,*(undefined8 *)PTR_DAT_05e5ba78);
    if (lVar2 == 0) goto LAB_02c71e4c;
    uVar5 = Canvas_get_rootCanvas_0x6000070(lVar2,0);
    *puVar3 = uVar5;
    Managed_WriteBarrier(puVar3,uVar5);
  }
  *(undefined4 *)(param_1 + 0xdc) = *(undefined4 *)(param_1 + 0x90);
  lVar2 = Component_get_transform_0x6000c82(param_1,0);
  if ((lVar2 != 0) && (Transform_SetAsLastSibling_0x6000f7e(lVar2,0), param_2 != 0)) {
    uVar4 = *(undefined8 *)(param_1 + 0x98);
    uVar6 = *(undefined4 *)(param_2 + 0x104);
    uVar7 = *(undefined4 *)(param_2 + 0x108);
    uVar5 = PointerEventData_get_pressEventCamera_0x600063e(param_2,0);
    if (*(int *)(*(long *)PTR_DAT_05e5cf00 + 0xe4) == 0) {
      func_0x029f5bd0(*(long *)PTR_DAT_05e5cf00);
    }
    RectTransformUtility_ScreenPointToLocalPointInRectangle_0x600004f
              (uVar6,uVar7,uVar4,uVar5,param_1 + 0xb0,0);
    if (*(long *)(param_1 + 0xa8) != 0) {
      CanvasGroup_set_blocksRaycasts_0x6000007(*(long *)(param_1 + 0xa8),0,0);
      *(undefined8 *)(param_1 + 0xc0) = 0;
      Managed_WriteBarrier((undefined8 *)(param_1 + 0xc0),0);
      *(undefined1 *)(param_1 + 200) = 0;
      *(undefined8 *)(param_1 + 0xd0) = 0;
      Managed_WriteBarrier((undefined8 *)(param_1 + 0xd0),0);
      *(undefined4 *)(param_1 + 0xd8) = 0xffffffff;
      *(undefined8 *)(param_1 + 0xe0) = 0;
      Managed_WriteBarrier((undefined8 *)(param_1 + 0xe0),0);
      *(undefined1 *)(param_1 + 0xe8) = 0;
      Gun_Item_Safe_HUD_Dragging(param_1,1);
      return;
    }
  }
LAB_02c71e4c:
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

