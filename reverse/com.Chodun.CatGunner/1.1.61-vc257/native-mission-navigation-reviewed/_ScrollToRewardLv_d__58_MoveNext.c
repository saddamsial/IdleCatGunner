/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b035e4, Ghidra VA 02c035e4. */

bool _ScrollToRewardLv_d__58_MoveNext
               (undefined1 param_1 [16],undefined4 param_2,float param_3,long param_4)

{
  int iVar1;
  uint uVar2;
  long lVar3;
  long lVar4;
  long lVar5;
  long lVar6;
  undefined4 uVar7;
  float fVar8;
  float fVar9;
  float fVar10;
  undefined8 uStack_58;
  
  if ((bRam000000000625be57 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e5be98);
    func_0x029f5a50(PTR_DAT_05e5cf00);
    bRam000000000625be57 = 1;
  }
  iVar1 = *(int *)(param_4 + 0x10);
  uStack_58 = 0;
  if (iVar1 == 0) {
    *(undefined8 *)(param_4 + 0x18) = 0;
    *(undefined4 *)(param_4 + 0x10) = 0xffffffff;
    Managed_WriteBarrier((undefined8 *)(param_4 + 0x18),0);
    *(undefined4 *)(param_4 + 0x10) = 1;
  }
  else if (iVar1 == 1) {
    lVar4 = *(long *)(param_4 + 0x20);
    *(undefined4 *)(param_4 + 0x10) = 0xffffffff;
    if ((lVar4 != 0) && (*(long *)(lVar4 + 0x98) != 0)) {
      if (*(long *)(*(long *)(lVar4 + 0x98) + 0x18) == 0) goto LAB_02c037bc;
      uVar2 = Mission_manager_Scroll_Target_Lv_return(lVar4,0);
      if ((*(long *)(lVar4 + 0xc0) != 0) && (lVar3 = *(long *)(lVar4 + 0x98), lVar3 != 0)) {
        if (*(uint *)(lVar3 + 0x18) <= uVar2) {
                    /* WARNING: Subroutine does not return */
          Throw_Index_Wrapper();
        }
        lVar3 = *(long *)(lVar3 + (long)(int)uVar2 * 8 + 0x20);
        if (lVar3 != 0) {
          lVar5 = *(long *)(*(long *)(lVar4 + 0xc0) + 0x20);
          lVar3 = func_0x02fe5f2c(lVar3,*(undefined8 *)PTR_DAT_05e5be98);
          if ((*(long *)(lVar4 + 0xc0) != 0) && (lVar5 != 0)) {
            lVar6 = *(long *)(*(long *)(lVar4 + 0xc0) + 0x40);
            RectTransform_get_rect_0x6000f26(lVar5,0);
            if ((lVar6 != 0) &&
               (fVar10 = param_3, RectTransform_get_rect_0x6000f26(lVar6,0), lVar3 != 0)) {
              fVar9 = fVar10;
              uVar7 = Transform_get_position_0x6000f4d(lVar3,0);
              if (*(int *)(*(long *)PTR_DAT_05e5cf00 + 0xe4) == 0) {
                func_0x029f5bd0();
              }
              RectTransformUtility_WorldToScreenPoint_0x6000051(uVar7,param_2,fVar9,0,0);
              RectTransformUtility_ScreenPointToLocalPointInRectangle_0x600004f
                        (lVar5,0,&uStack_58,0);
              fVar9 = (float)uStack_58;
              fVar8 = (float)RectTransform_get_rect_0x6000f26(lVar5,0);
              if (0.0 < param_3 - fVar10) {
                if (*(long *)(lVar4 + 0xc0) == 0) goto LAB_02c037e0;
                fVar9 = ((fVar9 - fVar8) + fVar10 * -0.5) / (param_3 - fVar10);
                fVar10 = 1.0;
                if (fVar9 <= 1.0) {
                  fVar10 = fVar9;
                }
                fVar8 = 0.0;
                if (0.0 <= fVar9) {
                  fVar8 = fVar10;
                }
                ScrollRect_set_horizontalNormalizedPosition_0x6000402
                          (fVar8,*(long *)(lVar4 + 0xc0),0);
              }
              goto LAB_02c037bc;
            }
          }
        }
      }
    }
LAB_02c037e0:
                    /* WARNING: Subroutine does not return */
    Throw_NullReference_Wrapper();
  }
LAB_02c037bc:
  return iVar1 == 0;
}

