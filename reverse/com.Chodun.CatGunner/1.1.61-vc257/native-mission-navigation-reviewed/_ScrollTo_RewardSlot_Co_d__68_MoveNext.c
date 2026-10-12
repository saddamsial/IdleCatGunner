/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b0385c, Ghidra VA 02c0385c. */

/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */

undefined8
_ScrollTo_RewardSlot_Co_d__68_MoveNext
          (undefined1 param_1 [16],undefined4 param_2,float param_3,long param_4)

{
  uint uVar1;
  int iVar2;
  uint uVar3;
  uint uVar4;
  char cVar5;
  long lVar6;
  uint uVar7;
  long lVar8;
  long lVar9;
  long lVar10;
  undefined4 uVar11;
  float fVar12;
  float fVar13;
  float fVar14;
  undefined8 uStack_58;
  
  if ((bRam000000000625be58 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e5be98);
    func_0x029f5a50(PTR_DAT_05e5cf00);
    bRam000000000625be58 = 1;
  }
  iVar2 = *(int *)(param_4 + 0x10);
  lVar8 = *(long *)(param_4 + 0x20);
  uStack_58 = 0;
  if (iVar2 == 2) {
    *(undefined4 *)(param_4 + 0x10) = 0xffffffff;
  }
  else {
    if (iVar2 != 1) {
      if (iVar2 != 0) {
        return 0;
      }
      *(undefined8 *)(param_4 + 0x18) = 0;
      *(undefined4 *)(param_4 + 0x10) = 0xffffffff;
      Managed_WriteBarrier((undefined8 *)(param_4 + 0x18),0);
      *(undefined4 *)(param_4 + 0x10) = 1;
      return 1;
    }
    *(undefined4 *)(param_4 + 0x10) = 0xffffffff;
    if ((lVar8 == 0) || (lVar6 = *(long *)(lVar8 + 0x98), lVar6 == 0)) goto LAB_02c03b84;
    if (*(long *)(lVar6 + 0x18) == 0) {
      return 0;
    }
    if (*(long *)(lVar8 + 0xc0) == 0) goto LAB_02c03b84;
    uVar3 = *(uint *)(param_4 + 0x28);
    uVar7 = (uint)*(long *)(lVar6 + 0x18);
    uVar4 = uVar7 - 1;
    uVar1 = uVar3;
    if ((int)uVar4 <= (int)uVar3) {
      uVar1 = uVar4;
    }
    uVar4 = 0;
    if (-1 < (int)uVar3) {
      uVar4 = uVar1;
    }
    if (uVar7 <= uVar4) {
                    /* WARNING: Subroutine does not return */
      Throw_Index_Wrapper();
    }
    lVar6 = *(long *)(lVar6 + (long)(int)uVar4 * 8 + 0x20);
    if (lVar6 == 0) goto LAB_02c03b84;
    lVar9 = *(long *)(*(long *)(lVar8 + 0xc0) + 0x20);
    lVar6 = func_0x02fe5f2c(lVar6,*(undefined8 *)PTR_DAT_05e5be98);
    if ((*(long *)(lVar8 + 0xc0) == 0) || (lVar9 == 0)) goto LAB_02c03b84;
    lVar10 = *(long *)(*(long *)(lVar8 + 0xc0) + 0x40);
    RectTransform_get_rect_0x6000f26(lVar9,0);
    if ((lVar10 == 0) || (fVar14 = param_3, RectTransform_get_rect_0x6000f26(lVar10,0), lVar6 == 0))
    goto LAB_02c03b84;
    fVar13 = fVar14;
    uVar11 = Transform_get_position_0x6000f4d(lVar6,0);
    if (*(int *)(*(long *)PTR_DAT_05e5cf00 + 0xe4) == 0) {
      func_0x029f5bd0();
    }
    RectTransformUtility_WorldToScreenPoint_0x6000051(uVar11,param_2,fVar13,0,0);
    RectTransformUtility_ScreenPointToLocalPointInRectangle_0x600004f(lVar9,0,&uStack_58,0);
    fVar13 = (float)uStack_58;
    fVar12 = (float)RectTransform_get_rect_0x6000f26(lVar9,0);
    if (param_3 - fVar14 <= 0.0) {
      return 0;
    }
    lVar6 = *(long *)(lVar8 + 0xc0);
    fVar13 = ((fVar13 - fVar12) + fVar14 * -0.5) / (param_3 - fVar14);
    fVar14 = 1.0;
    if (fVar13 <= 1.0) {
      fVar14 = fVar13;
    }
    fVar12 = 0.0;
    if (0.0 <= fVar13) {
      fVar12 = fVar14;
    }
    *(float *)(param_4 + 0x2c) = fVar12;
    if (lVar6 == 0) goto LAB_02c03b84;
    uVar11 = ScrollRect_get_horizontalNormalizedPosition_0x6000401(lVar6,0);
    lVar6 = *(long *)(lVar8 + 0xc0);
    *(undefined4 *)(param_4 + 0x30) = uVar11;
    cVar5 = cRam000000000625b271;
    *(undefined4 *)(param_4 + 0x34) = 0;
    if (cVar5 == '\0') {
      func_0x029f5a50(PTR_DAT_05e59608);
      cRam000000000625b271 = '\x01';
    }
    if (lVar6 == 0) goto LAB_02c03b84;
    *(undefined8 *)(lVar6 + 0xb8) = **(undefined8 **)(*(long *)PTR_DAT_05e59608 + 0xb8);
  }
  fVar14 = _UNK_0116c190;
  fVar13 = *(float *)(param_4 + 0x34);
  if (fVar13 < _UNK_0116c190) {
    fVar12 = (float)Time_get_deltaTime_0x6000ee5(0);
    fVar13 = fVar13 + fVar12;
    *(float *)(param_4 + 0x34) = fVar13;
    if ((lVar8 != 0) && (*(long *)(lVar8 + 0xc0) != 0)) {
      fVar13 = fVar13 / fVar14;
      fVar14 = 1.0;
      if (fVar13 <= 1.0) {
        fVar14 = fVar13;
      }
      fVar12 = 0.0;
      if (0.0 <= fVar13) {
        fVar12 = fVar14;
      }
      fVar13 = fVar12 * fVar12 * (3.0 - (fVar12 + fVar12));
      fVar14 = 1.0;
      if (fVar13 <= 1.0) {
        fVar14 = fVar13;
      }
      fVar12 = 0.0;
      if (0.0 <= fVar13) {
        fVar12 = fVar14;
      }
      ScrollRect_set_horizontalNormalizedPosition_0x6000402
                (*(float *)(param_4 + 0x30) +
                 fVar12 * (*(float *)(param_4 + 0x2c) - *(float *)(param_4 + 0x30)),
                 *(long *)(lVar8 + 0xc0),0);
      *(undefined8 *)(param_4 + 0x18) = 0;
      Managed_WriteBarrier((undefined8 *)(param_4 + 0x18),0);
      *(undefined4 *)(param_4 + 0x10) = 2;
      return 1;
    }
  }
  else if ((lVar8 != 0) && (*(long *)(lVar8 + 0xc0) != 0)) {
    ScrollRect_set_horizontalNormalizedPosition_0x6000402
              (*(undefined4 *)(param_4 + 0x2c),*(long *)(lVar8 + 0xc0),0);
    *(undefined8 *)(lVar8 + 0xd8) = 0;
    Managed_WriteBarrier((undefined8 *)(lVar8 + 0xd8),0);
    return 0;
  }
LAB_02c03b84:
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

