/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b62234, Ghidra VA 02c62234. */

void Fish_Item_OnDrag(undefined1 param_1 [16],float param_2,long param_3,long param_4)

{
  undefined *puVar1;
  undefined *puVar2;
  uint uVar3;
  ulong uVar4;
  long lVar5;
  undefined8 uVar6;
  float fVar7;
  undefined4 uVar8;
  undefined4 uVar9;
  
  if ((bRam000000000625c22b & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e63850);
    func_0x029f5a50(PTR_DAT_05e591c0);
    bRam000000000625c22b = 1;
  }
  if (*(char *)(param_3 + 0x84) == '\0') {
    return;
  }
  *(undefined1 *)(param_3 + 0x85) = 1;
  fVar7 = (float)Fish_Item_GetLocalPositionInTank(param_3,param_4);
  Fish_Item_ClampToTank
            (fVar7 + *(float *)(param_3 + 0x78),param_2 + *(float *)(param_3 + 0x7c),param_3);
  puVar1 = PTR_DAT_05e591c0;
  if (*(long *)(param_3 + 0x50) != 0) {
    RectTransform_set_anchoredPosition_0x6000f2c(*(long *)(param_3 + 0x50),0);
    uVar6 = *(undefined8 *)(param_3 + 0x70);
    if (*(int *)(*(long *)puVar1 + 0xe4) == 0) {
      func_0x029f5bd0();
    }
    uVar4 = Object_op_Inequality_0x6000ded(uVar6,0,0);
    if ((uVar4 & 1) != 0) {
      if (*(long *)(param_3 + 0x70) == 0) goto LAB_02c623ac;
      Fish_Tank_UpdateFusionAlert(*(long *)(param_3 + 0x70),param_3);
    }
    puVar2 = PTR_DAT_05e63850;
    uVar6 = **(undefined8 **)(*(long *)PTR_DAT_05e63850 + 0xb8);
    if (*(int *)(*(long *)puVar1 + 0xe4) == 0) {
      func_0x029f5bd0();
    }
    uVar4 = Object_op_Inequality_0x6000ded(uVar6,0,0);
    if ((uVar4 & 1) == 0) {
      return;
    }
    if (param_4 != 0) {
      uVar8 = *(undefined4 *)(param_4 + 0x104);
      uVar9 = *(undefined4 *)(param_4 + 0x108);
      lVar5 = **(long **)(*(long *)puVar2 + 0xb8);
      uVar6 = PointerEventData_get_pressEventCamera_0x600063e(param_4,0);
      if (lVar5 != 0) {
        uVar3 = Fish_DeleteZone_ContainsScreenPoint(uVar8,uVar9,lVar5,uVar6);
        lVar5 = **(long **)(*(long *)puVar2 + 0xb8);
        if (lVar5 != 0) {
          Fish_DeleteZone_SetHighlight(lVar5,uVar3 & 1);
          return;
        }
      }
    }
  }
LAB_02c623ac:
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

