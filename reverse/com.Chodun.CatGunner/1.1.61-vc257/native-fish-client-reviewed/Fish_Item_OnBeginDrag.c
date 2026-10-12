/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b61fd4, Ghidra VA 02c61fd4. */

void Fish_Item_OnBeginDrag(long param_1,long param_2)

{
  undefined4 uVar1;
  undefined8 uVar2;
  undefined8 uVar3;
  float fVar4;
  float fVar5;
  float fVar6;
  float fVar7;
  undefined8 uStack_28;
  
  if ((bRam000000000625c22a & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e5cf00);
    bRam000000000625c22a = 1;
  }
  uStack_28 = 0;
  if (*(char *)(param_1 + 0x86) != '\0') {
    return;
  }
  *(undefined1 *)(param_1 + 0xb0) = 0;
  *(undefined2 *)(param_1 + 0x84) = 1;
  if (*(long *)(param_1 + 0x70) != 0) {
    Fish_Tank_ClearPendingDelete();
  }
  Fish_Item_RestoreScaleForDrag(param_1);
  if (*(long *)(param_1 + 0x60) != 0) {
    uVar1 = Canvas_get_sortingOrder_0x6000069(*(long *)(param_1 + 0x60),0);
    *(undefined4 *)(param_1 + 0x80) = uVar1;
    if ((*(long *)(param_1 + 0x60) != 0) &&
       (Canvas_set_sortingOrder_0x600006a(*(long *)(param_1 + 0x60),9999,0), param_2 != 0)) {
      uVar3 = *(undefined8 *)(param_1 + 0x50);
      uVar1 = *(undefined4 *)(param_2 + 0x104);
      fVar7 = *(float *)(param_2 + 0x108);
      uVar2 = PointerEventData_get_pressEventCamera_0x600063e(param_2,0);
      if (*(int *)(*(long *)PTR_DAT_05e5cf00 + 0xe4) == 0) {
        func_0x029f5bd0(*(long *)PTR_DAT_05e5cf00);
      }
      RectTransformUtility_ScreenPointToLocalPointInRectangle_0x600004f
                (uVar1,uVar3,uVar2,&uStack_28,0);
      if (*(long *)(param_1 + 0x50) != 0) {
        fVar4 = (float)RectTransform_get_anchoredPosition_0x6000f2b(*(long *)(param_1 + 0x50),0);
        fVar6 = fVar7;
        fVar5 = (float)Fish_Item_GetLocalPositionInTank(param_1,param_2);
        *(float *)(param_1 + 0x78) = fVar4 - fVar5;
        *(float *)(param_1 + 0x7c) = fVar7 - fVar6;
        return;
      }
    }
  }
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

