/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b71e50, Ghidra VA 02c71e50. */

void Gun_Item_OnDrag(long param_1,long param_2)

{
  int iVar1;
  long *plVar2;
  undefined8 uVar3;
  long lVar4;
  float fVar5;
  float fVar6;
  undefined4 uVar7;
  undefined4 uVar8;
  undefined8 uVar9;
  undefined8 uStack_58;
  undefined4 uStack_50;
  undefined8 uStack_48;
  undefined8 uStack_28;
  
  if ((bRam000000000625c2d2 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e5cf00);
    func_0x029f5a50(PTR_DAT_05e5bfa8);
    bRam000000000625c2d2 = 1;
  }
  uStack_28 = 0;
  uStack_48 = 0;
  uStack_50 = 0;
  uStack_58 = 0;
  if (*(char *)(param_1 + 0xb8) == '\0') {
    return;
  }
  if (*(long *)(param_1 + 0xa0) == 0) goto LAB_02c71ff4;
  iVar1 = Canvas_get_renderMode_0x600005d(*(long *)(param_1 + 0xa0),0);
  lVar4 = *(long *)(param_1 + 0x98);
  if (iVar1 == 0) {
    if ((param_2 == 0) || (*(long *)(param_1 + 0xa0) == 0)) goto LAB_02c71ff4;
    uVar3 = *(undefined8 *)(param_1 + 0xb0);
    uVar9 = *(undefined8 *)(param_2 + 0x104);
    fVar5 = (float)Canvas_get_scaleFactor_0x6000061(*(long *)(param_1 + 0xa0),0);
    if (lVar4 == 0) goto LAB_02c71ff4;
    uVar7 = 0;
    fVar6 = (float)uVar9 - (float)uVar3 * fVar5;
    fVar5 = (float)((ulong)uVar9 >> 0x20) - (float)((ulong)uVar3 >> 0x20) * fVar5;
    goto LAB_02c71fa0;
  }
  if ((lVar4 == 0) || (plVar2 = (long *)Transform_get_parent_0x6000f5f(lVar4,0), param_2 == 0))
  goto LAB_02c71ff4;
  uVar7 = *(undefined4 *)(param_2 + 0x104);
  uVar8 = *(undefined4 *)(param_2 + 0x108);
  uVar3 = PointerEventData_get_pressEventCamera_0x600063e(param_2,0);
  if (*(int *)(*(long *)PTR_DAT_05e5cf00 + 0xe4) == 0) {
    func_0x029f5bd0(*(long *)PTR_DAT_05e5cf00);
    if (plVar2 == (long *)0x0) goto LAB_02c71f74;
LAB_02c71f10:
    if (*plVar2 != *(long *)PTR_DAT_05e5bfa8) {
      plVar2 = (long *)0x0;
    }
  }
  else {
    if (plVar2 != (long *)0x0) goto LAB_02c71f10;
LAB_02c71f74:
    plVar2 = (long *)0x0;
  }
  RectTransformUtility_ScreenPointToWorldPointInRectangle_0x600004e
            (uVar7,uVar8,plVar2,uVar3,&uStack_58,0);
  lVar4 = *(long *)(param_1 + 0x98);
  if (lVar4 == 0) {
LAB_02c71ff4:
                    /* WARNING: Subroutine does not return */
    Throw_NullReference_Wrapper();
  }
  fVar6 = (float)uStack_58;
  fVar5 = uStack_58._4_4_;
  uVar7 = uStack_50;
LAB_02c71fa0:
  Transform_set_position_0x6000f4e(fVar6,fVar5,uVar7,lVar4,0);
  Gun_Item_CheckOverlap_0x6000b34(param_1);
  Gun_Item_RaycastDropTargets(param_1,param_2,&uStack_28,&uStack_48);
  Gun_Item_CheckSlotHighlight_0x6000b32(param_1,uStack_28);
  Gun_Item_CheckSafeHover_0x6000b2d(param_1,uStack_48);
  return;
}

