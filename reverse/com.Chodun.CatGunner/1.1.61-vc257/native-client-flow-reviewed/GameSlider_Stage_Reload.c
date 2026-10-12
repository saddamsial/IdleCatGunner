/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b7a338, Ghidra VA 02c7a338. */

void GameSlider_Stage_Reload(long param_1,int param_2,uint param_3)

{
  ulong uVar1;
  undefined *puVar2;
  undefined *puVar3;
  undefined8 uVar4;
  undefined8 uVar5;
  long lVar6;
  long lVar7;
  long *plVar8;
  uint uVar9;
  long lVar10;
  int iStack_38;
  int iStack_34;
  
  puVar3 = PTR_DAT_05e62088;
  if ((bRam000000000625c310 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e62088);
    bRam000000000625c310 = 1;
  }
  puVar2 = PTR_DAT_05e58a10;
  iStack_34 = param_2 + 1;
  plVar8 = *(long **)(param_1 + 0x38);
  uVar4 = func_0x029f5bd8(*(undefined8 *)(PTR_DAT_05e58a10 + 0x48),&iStack_34);
  iStack_38 = param_3 + 1;
  uVar5 = func_0x029f5bd8(*(undefined8 *)(puVar2 + 0x48),&iStack_38);
  uVar4 = String_Format_0x600029d(*(undefined8 *)puVar3,uVar4,uVar5,0);
  if (plVar8 != (long *)0x0) {
    (**(code **)(*plVar8 + 0x558))(plVar8,uVar4,*(undefined8 *)(*plVar8 + 0x560));
    lVar6 = *(long *)(param_1 + 0x50);
    if (lVar6 != 0) {
      lVar10 = 0;
      do {
        uVar9 = (uint)lVar10;
        if ((int)*(uint *)(lVar6 + 0x18) <= (int)uVar9) {
          if (*(long *)(param_1 + 0x20) != 0) {
            SlicedFilledImage_set_fillAmount_0x60005d0
                      ((float)(int)param_3 / 4.0,*(long *)(param_1 + 0x20),0);
            if (*(long *)(param_1 + 0x48) != 0) {
              lVar6 = Component_get_transform_0x6000c82(*(long *)(param_1 + 0x48),0);
              lVar10 = *(long *)(param_1 + 0x50);
              if (lVar10 != 0) {
                if (*(uint *)(lVar10 + 0x18) <= param_3) {
LAB_02c7a4ec:
                    /* WARNING: Subroutine does not return */
                  Throw_Index_Wrapper();
                }
                lVar10 = *(long *)(lVar10 + (long)(int)param_3 * 8 + 0x20);
                if (((lVar10 != 0) &&
                    (lVar10 = Component_get_transform_0x6000c82(lVar10,0), lVar10 != 0)) &&
                   (Transform_get_position_0x6000f4d(lVar10,0), lVar6 != 0)) {
                  Transform_set_position_0x6000f4e(lVar6,0);
                  return;
                }
              }
            }
          }
          break;
        }
        uVar1 = 2;
        if ((int)param_3 <= (int)uVar9) {
          uVar1 = (ulong)(param_3 == uVar9);
        }
        if (*(uint *)(lVar6 + 0x18) <= uVar9) goto LAB_02c7a4ec;
        lVar7 = *(long *)(param_1 + 0x58);
        if (lVar7 == 0) break;
        if (*(uint *)(lVar7 + 0x18) <= (uint)uVar1) goto LAB_02c7a4ec;
        plVar8 = *(long **)(lVar6 + lVar10 * 8 + 0x20);
        if (plVar8 == (long *)0x0) break;
        lVar7 = lVar7 + uVar1 * 0x10;
        (**(code **)(*plVar8 + 0x2a8))
                  (*(undefined4 *)(lVar7 + 0x20),*(undefined4 *)(lVar7 + 0x24),
                   *(undefined4 *)(lVar7 + 0x28),*(undefined4 *)(lVar7 + 0x2c),plVar8,
                   *(undefined8 *)(*plVar8 + 0x2b0));
        lVar6 = *(long *)(param_1 + 0x50);
        lVar10 = lVar10 + 1;
      } while (lVar6 != 0);
    }
  }
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

