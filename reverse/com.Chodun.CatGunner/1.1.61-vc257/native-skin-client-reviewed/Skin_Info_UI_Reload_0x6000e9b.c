/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2ba7f64, Ghidra VA 02ca7f64. */

void Skin_Info_UI_Reload_0x6000e9b(long param_1,uint param_2)

{
  uint uVar1;
  undefined *puVar2;
  undefined *puVar3;
  undefined *puVar4;
  byte bVar5;
  int iVar6;
  int iVar7;
  long lVar8;
  long lVar9;
  long lVar10;
  long *plVar11;
  undefined8 uVar12;
  long lVar13;
  undefined4 uVar14;
  undefined4 uVar15;
  undefined4 uVar16;
  undefined4 uVar17;
  undefined4 uStack_54;
  undefined4 uStack_50;
  undefined4 uStack_4c;
  undefined8 uStack_48;
  
  puVar3 = PTR_DAT_05e5d4e0;
  if ((bRam000000000625c4e7 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e5d338);
    func_0x029f5a50(PTR_DAT_05e5d4e0);
    func_0x029f5a50(PTR_DAT_05e63398);
    func_0x029f5a50(PTR_DAT_05e63810);
    bRam000000000625c4e7 = 1;
  }
  lVar8 = *(long *)puVar3;
  uStack_48 = 0;
  *(uint *)(param_1 + 0x20) = param_2;
  lVar8 = *(long *)(*(long *)(lVar8 + 0xb8) + 0x10);
  if ((lVar8 != 0) && (lVar9 = *(long *)(lVar8 + 0x20), lVar9 != 0)) {
    if (*(uint *)(lVar9 + 0x18) <= param_2) {
LAB_02ca838c:
                    /* WARNING: Subroutine does not return */
      Throw_Index_Wrapper();
    }
    lVar8 = *(long *)(lVar8 + 0x50);
    if (lVar8 != 0) {
      if (*(uint *)(lVar8 + 0x18) <= param_2) goto LAB_02ca838c;
      if (*(long *)(param_1 + 0x30) != 0) {
        lVar10 = *(long *)(param_1 + 0x38);
        lVar13 = *(long *)(param_1 + 0x28);
        uVar12 = *(undefined8 *)(lVar8 + (long)(int)param_2 * 8 + 0x20);
        lVar8 = *(long *)(lVar9 + (long)(int)param_2 * 8 + 0x20);
        Image_set_sprite_0x600013f(*(long *)(param_1 + 0x30),uVar12,0);
        if ((lVar13 != 0) && (Image_set_sprite_0x600013f(lVar13,uVar12,0), lVar10 != 0)) {
          Image_set_sprite_0x600013f(lVar10,uVar12,0);
          if (*(long *)(param_1 + 0x48) != 0) {
            GameObject_SetActive_0x6000cfe(*(long *)(param_1 + 0x48),param_2 != 0,0);
            lVar9 = *(long *)(*(long *)(*(long *)puVar3 + 0xb8) + 0x10);
            if (((lVar9 != 0) && (lVar9 = *(long *)(lVar9 + 0x20), lVar9 != 0)) &&
               (*(long *)(param_1 + 0x40) != 0)) {
              GameObject_SetActive_0x6000cfe
                        (*(long *)(param_1 + 0x40),(int)param_2 < *(int *)(lVar9 + 0x18) + -1,0);
              plVar11 = *(long **)(param_1 + 0x50);
              uStack_48 = CONCAT44(uStack_48._4_4_,param_2 + 1);
              uVar12 = Int32_ToString_0x600080e(&uStack_48,0);
              if (plVar11 != (long *)0x0) {
                (**(code **)(*plVar11 + 0x558))(plVar11,uVar12,*(undefined8 *)(*plVar11 + 0x560));
                puVar4 = PTR_DAT_05e63810;
                puVar2 = PTR_DAT_05e58a10;
                if (lVar8 != 0) {
                  uStack_4c = *(undefined4 *)(lVar8 + 0x10);
                  plVar11 = *(long **)(param_1 + 0x58);
                  uVar12 = func_0x029f5bd8(*(undefined8 *)(PTR_DAT_05e58a10 + 0x48),&uStack_4c);
                  uVar12 = String_Format_0x600029c(*(undefined8 *)puVar4,uVar12,0);
                  if (plVar11 != (long *)0x0) {
                    (**(code **)(*plVar11 + 0x558))
                              (plVar11,uVar12,*(undefined8 *)(*plVar11 + 0x560));
                    uStack_50 = *(undefined4 *)(lVar8 + 0x14);
                    plVar11 = *(long **)(param_1 + 0x60);
                    uVar12 = func_0x029f5bd8(*(undefined8 *)(puVar2 + 0x48),&uStack_50);
                    uVar12 = String_Format_0x600029c(*(undefined8 *)puVar4,uVar12,0);
                    if (plVar11 != (long *)0x0) {
                      (**(code **)(*plVar11 + 0x558))
                                (plVar11,uVar12,*(undefined8 *)(*plVar11 + 0x560));
                      uStack_54 = *(undefined4 *)(lVar8 + 0x18);
                      plVar11 = *(long **)(param_1 + 0x68);
                      uVar12 = func_0x029f5bd8(*(undefined8 *)(puVar2 + 0x48),&uStack_54);
                      uVar12 = String_Format_0x600029c(*(undefined8 *)puVar4,uVar12,0);
                      if (plVar11 != (long *)0x0) {
                        (**(code **)(*plVar11 + 0x558))
                                  (plVar11,uVar12,*(undefined8 *)(*plVar11 + 0x560));
                        lVar8 = *(long *)(*(long *)(*(long *)puVar3 + 0xb8) + 0x10);
                        if (lVar8 != 0) {
                          bVar5 = Skin_manager_is_Unlock(lVar8,param_2);
                          puVar2 = PTR_DAT_05e5d338;
                          lVar8 = *(long *)(*(long *)(*(long *)puVar3 + 0xb8) + 0x10);
                          if (lVar8 != 0) {
                            uVar1 = *(uint *)(lVar8 + 0x30);
                            iVar6 = Skin_manager_Price_return(lVar8,param_2);
                            lVar8 = *(long *)puVar2;
                            uStack_48 = CONCAT44(iVar6,(undefined4)uStack_48);
                            if (*(int *)(lVar8 + 0xe4) == 0) {
                              func_0x029f5bd0(lVar8);
                              lVar8 = *(long *)puVar2;
                            }
                            iVar7 = ObscuredInt_op_Implicit_0x6000412
                                              (*(undefined8 *)(*(long *)(lVar8 + 0xb8) + 0x90),
                                               *(undefined8 *)(*(long *)(lVar8 + 0xb8) + 0x98),0);
                            if (*(long *)(param_1 + 0x38) != 0) {
                              lVar8 = Component_get_gameObject_0x6000c83
                                                (*(long *)(param_1 + 0x38),0);
                              if (lVar8 != 0) {
                                GameObject_SetActive_0x6000cfe(lVar8,(bVar5 ^ 1) & 1,0);
                                if (*(long *)(param_1 + 0x70) != 0) {
                                  GameObject_SetActive_0x6000cfe
                                            (*(long *)(param_1 + 0x70),(bVar5 ^ 1) & 1,0);
                                  if (*(long *)(param_1 + 0x78) != 0) {
                                    GameObject_SetActive_0x6000cfe
                                              (*(long *)(param_1 + 0x78),bVar5 & uVar1 != param_2,0)
                                    ;
                                    puVar3 = PTR_DAT_05e63398;
                                    if (*(long *)(param_1 + 0x80) != 0) {
                                      GameObject_SetActive_0x6000cfe
                                                (*(long *)(param_1 + 0x80),uVar1 == param_2,0);
                                      plVar11 = *(long **)(param_1 + 0x88);
                                      uVar12 = Int32_ToString_0x600080e((long)&uStack_48 + 4,0);
                                      uVar12 = String_Format_0x600029c
                                                         (*(undefined8 *)puVar3,uVar12,0);
                                      if (plVar11 != (long *)0x0) {
                                        (**(code **)(*plVar11 + 0x558))
                                                  (plVar11,uVar12,*(undefined8 *)(*plVar11 + 0x560))
                                        ;
                                        if (*(long *)(param_1 + 0x90) != 0) {
                                          Selectable_set_interactable_0x6000435
                                                    (*(long *)(param_1 + 0x90),iVar6 <= iVar7,0);
                                          uVar17 = 0x3f800000;
                                          uVar16 = 0x3f800000;
                                          plVar11 = *(long **)(param_1 + 0x88);
                                          uVar15 = 0x3f800000;
                                          uVar14 = 0x3f800000;
                                          if (iVar7 < iVar6) {
                                            uVar14 = *(undefined4 *)(param_1 + 0x98);
                                            uVar15 = *(undefined4 *)(param_1 + 0x9c);
                                            uVar16 = *(undefined4 *)(param_1 + 0xa0);
                                            uVar17 = *(undefined4 *)(param_1 + 0xa4);
                                          }
                                          if (plVar11 != (long *)0x0) {
                                            (**(code **)(*plVar11 + 0x2a8))
                                                      (uVar14,uVar15,uVar16,uVar17,plVar11,
                                                       *(undefined8 *)(*plVar11 + 0x2b0));
                                            lVar8 = Component_get_gameObject_0x6000c83(param_1,0);
                                            if (lVar8 != 0) {
                                              GameObject_SetActive_0x6000cfe(lVar8,1,0);
                                              return;
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
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

