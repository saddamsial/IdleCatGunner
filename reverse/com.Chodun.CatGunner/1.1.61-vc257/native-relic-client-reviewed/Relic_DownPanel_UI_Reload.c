/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b2ffa8, Ghidra VA 02c2ffa8. */

void Relic_DownPanel_UI_Reload(long param_1)

{
  int iVar1;
  undefined4 uVar2;
  undefined *puVar3;
  undefined *puVar4;
  undefined *puVar5;
  int iVar6;
  undefined8 uVar7;
  undefined8 uVar8;
  undefined8 uVar9;
  long lVar10;
  uint uVar11;
  ulong uVar12;
  long *plVar13;
  long lVar14;
  long lVar15;
  int iStack_4c;
  undefined8 uStack_48;
  
  puVar3 = PTR_DAT_05e5dd28;
  if ((bRam000000000625c026 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e5dd28);
    func_0x029f5a50(PTR_DAT_05e5e528);
    func_0x029f5a50(PTR_DAT_05e63040);
    bRam000000000625c026 = 1;
  }
  uVar2 = *(undefined4 *)(param_1 + 0x60);
  uStack_48 = 0;
  if (*(int *)(*(long *)puVar3 + 0xe4) == 0) {
    func_0x029f5bd0();
  }
  iVar6 = Adventure_manager_CoreCount_return(uVar2);
  uStack_48._4_4_ = iVar6;
  uVar7 = Adventure_manager_Core_sprite_return_0x600062f(*(undefined4 *)(param_1 + 0x60));
  if (*(long *)(param_1 + 0x30) != 0) {
    Image_set_sprite_0x600013f(*(long *)(param_1 + 0x30),uVar7,0);
    plVar13 = *(long **)(param_1 + 0x38);
    uVar8 = Int32_ToString_0x600080e((long)&uStack_48 + 4,0);
    puVar5 = PTR_DAT_05e63040;
    puVar4 = PTR_DAT_05e5e528;
    if (plVar13 != (long *)0x0) {
      (**(code **)(*plVar13 + 0x558))(plVar13,uVar8,*(undefined8 *)(*plVar13 + 0x560));
      plVar13 = *(long **)(param_1 + 0x48);
      iVar6 = uStack_48._4_4_ / 0x14;
      if (iVar6 < 2) {
        iVar6 = 1;
      }
      uStack_48._0_4_ = iVar6 * 0x14;
      if (*(int *)(*(long *)puVar4 + 0xe4) == 0) {
        func_0x029f5bd0();
      }
      uVar8 = LocalizationManager_GetTermTranslation_0x60011b4
                        (*(undefined8 *)puVar5,1,0,1,0,0,0,1,0);
      iStack_4c = iVar6;
      uVar9 = func_0x029f5bd8(*(undefined8 *)(PTR_DAT_05e58a10 + 0x48),&iStack_4c);
      uVar8 = String_Format_0x600029c(uVar8,uVar9,0);
      if (plVar13 != (long *)0x0) {
        (**(code **)(*plVar13 + 0x558))(plVar13,uVar8,*(undefined8 *)(*plVar13 + 0x560));
        plVar13 = *(long **)(param_1 + 0x50);
        uVar8 = Int32_ToString_0x600080e(&uStack_48,0);
        if (plVar13 != (long *)0x0) {
          (**(code **)(*plVar13 + 0x558))(plVar13,uVar8,*(undefined8 *)(*plVar13 + 0x560));
          lVar10 = *(long *)(param_1 + 0x28);
          if (lVar10 != 0) {
            lVar14 = 0;
            do {
              if ((int)*(uint *)(lVar10 + 0x18) <= (int)(uint)lVar14) {
                lVar10 = *(long *)(param_1 + 0x20);
                if (lVar10 != 0) {
                  lVar14 = 0;
                  goto LAB_02c301d4;
                }
                break;
              }
              if (*(uint *)(lVar10 + 0x18) <= (uint)lVar14) goto LAB_02c3031c;
              lVar10 = *(long *)(lVar10 + lVar14 * 8 + 0x20);
              if (lVar10 == 0) break;
              iVar1 = iVar6;
              if (*(char *)(lVar10 + 0x20) == '\0') {
                iVar1 = 1;
              }
              Draw_Relic_Btn_Reload(lVar10,iVar1 * 0x14 <= uStack_48._4_4_,uVar7);
              lVar10 = *(long *)(param_1 + 0x28);
              lVar14 = lVar14 + 1;
            } while (lVar10 != 0);
          }
        }
      }
    }
  }
  goto LAB_02c30300;
  while( true ) {
    if (*(uint *)(lVar10 + 0x18) <= uVar11) goto LAB_02c3031c;
    lVar10 = *(long *)(lVar10 + lVar14 * 8 + 0x20);
    if (lVar10 == 0) break;
    Relic_DrawMode_Btn_Reload(lVar10,uVar11 == *(uint *)(param_1 + 0x60));
    lVar10 = *(long *)(param_1 + 0x20);
    lVar14 = lVar14 + 1;
    if (lVar10 == 0) break;
LAB_02c301d4:
    uVar11 = (uint)lVar14;
    if ((int)*(uint *)(lVar10 + 0x18) <= (int)uVar11) {
      lVar10 = *(long *)(param_1 + 0x40);
      if (lVar10 != 0) {
        uVar12 = 0;
        goto LAB_02c30220;
      }
      break;
    }
  }
  goto LAB_02c30300;
  while( true ) {
    if (*(uint *)(lVar10 + 0x18) <= (uint)uVar12) goto LAB_02c3031c;
    plVar13 = *(long **)(lVar10 + uVar12 * 8 + 0x20);
    uVar7 = Relic_DownPanel_Percent_str_return(param_1,uVar12 & 0xffffffff);
    if (plVar13 == (long *)0x0) break;
    (**(code **)(*plVar13 + 0x558))(plVar13,uVar7,*(undefined8 *)(*plVar13 + 0x560));
    lVar10 = *(long *)(param_1 + 0x40);
    uVar12 = uVar12 + 1;
    if (lVar10 == 0) break;
LAB_02c30220:
    if ((int)*(uint *)(lVar10 + 0x18) <= (int)(uint)uVar12) {
      lVar10 = *(long *)(param_1 + 0x58);
      if (lVar10 != 0) {
        uVar11 = 0;
        goto LAB_02c30280;
      }
      break;
    }
  }
  goto LAB_02c30300;
  while( true ) {
    if (*(uint *)(lVar14 + 0x18) <= uVar11) goto LAB_02c3031c;
    if (lVar10 == 0) break;
    uVar11 = uVar11 + 1;
    GameObject_SetActive_0x6000cfe(lVar10,0x13 < *(int *)(lVar14 + lVar15 * 4 + 0x20),0);
    lVar10 = *(long *)(param_1 + 0x58);
    if (lVar10 == 0) break;
LAB_02c30280:
    if ((int)*(uint *)(lVar10 + 0x18) <= (int)uVar11) {
      return;
    }
    if (*(uint *)(lVar10 + 0x18) <= uVar11) {
LAB_02c3031c:
                    /* WARNING: Subroutine does not return */
      Throw_Index_Wrapper();
    }
    lVar15 = (long)(int)uVar11;
    lVar14 = *(long *)puVar3;
    lVar10 = *(long *)(lVar10 + lVar15 * 8 + 0x20);
    if (*(int *)(lVar14 + 0xe4) == 0) {
      func_0x029f5bd0();
      lVar14 = *(long *)puVar3;
    }
    lVar14 = *(long *)(*(long *)(lVar14 + 0xb8) + 0x10);
    if ((lVar14 == 0) || (lVar14 = *(long *)(lVar14 + 0x28), lVar14 == 0)) break;
  }
LAB_02c30300:
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

