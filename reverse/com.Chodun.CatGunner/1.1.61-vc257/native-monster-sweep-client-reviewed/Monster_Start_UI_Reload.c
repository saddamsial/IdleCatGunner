/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b4f488, Ghidra VA 02c4f488. */

/* WARNING: Type propagation algorithm not settling */

void Monster_Start_UI_Reload(long param_1)

{
  undefined *puVar1;
  undefined *puVar2;
  undefined *puVar3;
  uint uVar4;
  int iVar5;
  long lVar6;
  undefined8 uVar7;
  undefined8 uVar8;
  ulong uVar9;
  long *plVar10;
  long lVar11;
  float fVar12;
  int iStack_50;
  int iStack_4c;
  int aiStack_48 [2];
  undefined8 uStack_38;
  
  if ((bRam000000000625c155 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e5dd58);
    func_0x029f5a50(PTR_DAT_05e591c0);
    func_0x029f5a50(PTR_DAT_05e5e0b8);
    func_0x029f5a50(PTR_DAT_05e63338);
    func_0x029f5a50(PTR_DAT_05e625b8);
    func_0x029f5a50(PTR_DAT_05e63528);
    bRam000000000625c155 = 1;
  }
  uStack_38 = 0;
  aiStack_48[1] = 0;
  lVar6 = Component_get_gameObject_0x6000c83(param_1,0);
  puVar2 = PTR_DAT_05e5dd58;
  if (lVar6 != 0) {
    GameObject_SetActive_0x6000cfe(lVar6,1,0);
    lVar6 = *(long *)puVar2;
    plVar10 = *(long **)(param_1 + 0x28);
    if (*(int *)(lVar6 + 0xe4) == 0) {
      func_0x029f5bd0();
      lVar6 = *(long *)puVar2;
    }
    puVar1 = PTR_DAT_05e58a10;
    lVar6 = *(long *)(*(long *)(lVar6 + 0xb8) + 8);
    if (lVar6 != 0) {
      aiStack_48[0] = *(int *)(lVar6 + 0x20) + 1;
      uVar7 = func_0x029f5bd8(*(undefined8 *)(PTR_DAT_05e58a10 + 0x48),aiStack_48);
      puVar3 = PTR_DAT_05e625b8;
      lVar6 = *(long *)(*(long *)(*(long *)puVar2 + 0xb8) + 8);
      if (lVar6 != 0) {
        iStack_4c = *(int *)(lVar6 + 0x24) + 1;
        uVar8 = func_0x029f5bd8(*(undefined8 *)(puVar1 + 0x48),&iStack_4c);
        uVar7 = String_Format_0x600029d(*(undefined8 *)puVar3,uVar7,uVar8,0);
        if (plVar10 != (long *)0x0) {
          (**(code **)(*plVar10 + 0x558))(plVar10,uVar7,*(undefined8 *)(*plVar10 + 0x560));
          lVar6 = *(long *)(*(long *)(*(long *)puVar2 + 0xb8) + 8);
          if (lVar6 != 0) {
            lVar11 = *(long *)(param_1 + 0x20);
            uVar7 = Monster_manager_SkinSprite_return_0x6000862(lVar6,1);
            puVar3 = PTR_DAT_05e5e0b8;
            if (lVar11 != 0) {
              Image_set_sprite_0x600013f(lVar11,uVar7,0);
              if (*(int *)(*(long *)puVar3 + 0xe4) == 0) {
                func_0x029f5bd0();
              }
              uVar4 = PlusPack_Is_Active_0x6000d35(2,0);
              if (*(long *)(param_1 + 0x78) != 0) {
                GameObject_SetActive_0x6000cfe(*(long *)(param_1 + 0x78),(uVar4 ^ 0xffffffff) & 1,0)
                ;
                if (*(long *)(param_1 + 0x80) != 0) {
                  GameObject_SetActive_0x6000cfe(*(long *)(param_1 + 0x80),uVar4 & 1,0);
                  if ((uVar4 & 1) == 0) {
LAB_02c4f918:
                    Monster_Start_UI_Banner_Reload(param_1);
                    Monster_Start_UI_ReloadAroundMe_0x6000888(param_1);
                    return;
                  }
                  lVar6 = *(long *)puVar2;
                  if (*(int *)(lVar6 + 0xe4) == 0) {
                    func_0x029f5bd0();
                    lVar6 = *(long *)puVar2;
                  }
                  if (*(long *)(*(long *)(lVar6 + 0xb8) + 8) != 0) {
                    uVar4 = Monster_manager_is_SweepAble();
                    if (*(long *)(param_1 + 0x88) != 0) {
                      GameObject_SetActive_0x6000cfe
                                (*(long *)(param_1 + 0x88),(uVar4 ^ 0xffffffff) & 1,0);
                      if (*(long *)(param_1 + 0x90) != 0) {
                        GameObject_SetActive_0x6000cfe(*(long *)(param_1 + 0x90),uVar4 & 1,0);
                        if ((uVar4 & 1) == 0) {
                          lVar6 = *(long *)puVar2;
                          plVar10 = *(long **)(param_1 + 0x98);
                          if (*(int *)(lVar6 + 0xe4) == 0) {
                            func_0x029f5bd0();
                            lVar6 = *(long *)puVar2;
                          }
                          lVar6 = *(long *)(*(long *)(lVar6 + 0xb8) + 8);
                          if (lVar6 == 0) goto LAB_02c4f940;
                          aiStack_48[0] = *(int *)(lVar6 + 0x20) + 1;
                          uVar7 = func_0x029f5bd8(*(undefined8 *)(puVar1 + 0x48),aiStack_48);
                          lVar6 = *(long *)(*(long *)(*(long *)puVar2 + 0xb8) + 8);
                          if (lVar6 == 0) goto LAB_02c4f940;
                          iStack_4c = *(int *)(lVar6 + 0x24) + 1;
                          uVar8 = func_0x029f5bd8(*(undefined8 *)(puVar1 + 0x48),&iStack_4c);
                          uVar7 = String_Format_0x600029d
                                            (*(undefined8 *)PTR_DAT_05e63528,uVar7,uVar8,0);
                          if (plVar10 == (long *)0x0) goto LAB_02c4f940;
                          (**(code **)(*plVar10 + 0x558))
                                    (plVar10,uVar7,*(undefined8 *)(*plVar10 + 0x560));
                          plVar10 = *(long **)(param_1 + 0x98);
                          if (plVar10 == (long *)0x0) goto LAB_02c4f940;
                          (**(code **)(*plVar10 + 0x2a8))
                                    (0x3f800000,0,0,0x3f800000,plVar10,
                                     *(undefined8 *)(*plVar10 + 0x2b0));
                          if (*(long *)(*(long *)(*(long *)puVar2 + 0xb8) + 8) == 0)
                          goto LAB_02c4f940;
                          iVar5 = Monster_manager_SweepValue_return();
                          plVar10 = *(long **)(param_1 + 0xa0);
                          iStack_50 = iVar5;
                          uVar7 = func_0x029f5bd8(*(undefined8 *)(puVar1 + 0x48),&iStack_50);
                          uVar7 = String_Format_0x600029c(*(undefined8 *)PTR_DAT_05e63338,uVar7,0);
                          if (plVar10 == (long *)0x0) goto LAB_02c4f940;
                          (**(code **)(*plVar10 + 0x558))
                                    (plVar10,uVar7,*(undefined8 *)(*plVar10 + 0x560));
                          lVar6 = *(long *)(param_1 + 0xa8);
                          if (lVar6 == 0) goto LAB_02c4f940;
                          fVar12 = (float)iVar5 / 100.0;
                        }
                        else {
                          lVar6 = *(long *)puVar2;
                          if (*(int *)(lVar6 + 0xe4) == 0) {
                            func_0x029f5bd0();
                            lVar6 = *(long *)puVar2;
                          }
                          lVar6 = *(long *)(*(long *)(lVar6 + 0xb8) + 8);
                          if (lVar6 == 0) goto LAB_02c4f940;
                          Monster_manager_SweepTarget_return
                                    (lVar6,(long)&uStack_38 + 4,&uStack_38,aiStack_48 + 1);
                          plVar10 = *(long **)(param_1 + 0x98);
                          aiStack_48[0] = uStack_38._4_4_ + 1;
                          uVar7 = func_0x029f5bd8(*(undefined8 *)(puVar1 + 0x48),aiStack_48);
                          iStack_4c = (int)uStack_38 + 1;
                          uVar8 = func_0x029f5bd8(*(undefined8 *)(puVar1 + 0x48),&iStack_4c);
                          uVar7 = String_Format_0x600029d
                                            (*(undefined8 *)PTR_DAT_05e63528,uVar7,uVar8,0);
                          if (plVar10 == (long *)0x0) goto LAB_02c4f940;
                          (**(code **)(*plVar10 + 0x558))
                                    (plVar10,uVar7,*(undefined8 *)(*plVar10 + 0x560));
                          plVar10 = *(long **)(param_1 + 0x98);
                          if (plVar10 == (long *)0x0) goto LAB_02c4f940;
                          (**(code **)(*plVar10 + 0x2a8))
                                    (0x3f800000,0x3f800000,0x3f800000,0x3f800000,plVar10,
                                     *(undefined8 *)(*plVar10 + 0x2b0));
                          uVar7 = *(undefined8 *)(param_1 + 0xa8);
                          if (*(int *)(*(long *)PTR_DAT_05e591c0 + 0xe4) == 0) {
                            func_0x029f5bd0();
                          }
                          uVar9 = Object_op_Inequality_0x6000ded(uVar7,0,0);
                          if ((uVar9 & 1) == 0) goto LAB_02c4f918;
                          lVar6 = *(long *)(param_1 + 0xa8);
                          if (lVar6 == 0) goto LAB_02c4f940;
                          fVar12 = 1.0;
                        }
                        SlicedFilledImage_set_fillAmount_0x60005d0(fVar12,lVar6,0);
                        goto LAB_02c4f918;
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }
LAB_02c4f940:
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

