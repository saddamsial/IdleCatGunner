/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b6eaa8, Ghidra VA 02c6eaa8. */

void StarUpgrade_popup_Reload(long param_1)

{
  bool bVar1;
  int iVar2;
  undefined8 *puVar3;
  undefined *puVar4;
  undefined *puVar5;
  undefined *puVar6;
  undefined *puVar7;
  undefined *puVar8;
  uint uVar9;
  undefined4 uVar10;
  int iVar11;
  long lVar12;
  ulong uVar13;
  undefined8 uVar14;
  undefined8 uVar15;
  long lVar16;
  long *plVar17;
  undefined8 uStack_140;
  undefined8 uStack_138;
  undefined8 uStack_130;
  undefined8 uStack_128;
  undefined8 uStack_120;
  undefined8 uStack_118;
  undefined8 uStack_110;
  undefined8 uStack_108;
  int iStack_100;
  undefined4 uStack_fc;
  undefined8 uStack_f8;
  undefined8 uStack_f0;
  undefined8 uStack_e8;
  undefined8 uStack_e0;
  undefined8 uStack_d8;
  undefined8 uStack_d0;
  undefined8 uStack_c8;
  undefined8 uStack_c0;
  undefined8 uStack_b8;
  undefined8 uStack_b0;
  undefined8 uStack_a8;
  int iStack_94;
  undefined8 uStack_90;
  undefined8 uStack_88;
  undefined8 uStack_80;
  undefined8 uStack_78;
  undefined8 uStack_68;
  
  puVar7 = PTR_DAT_05e5e058;
  if ((bRam000000000625c2b7 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e5d338);
    func_0x029f5a50(PTR_DAT_05e5e528);
    func_0x029f5a50(PTR_DAT_05e591c0);
    func_0x029f5a50(PTR_DAT_05e5e058);
    func_0x029f5a50(PTR_DAT_05e63b50);
    func_0x029f5a50(PTR_DAT_05e5d528);
    func_0x029f5a50(PTR_DAT_05e5acc0);
    func_0x029f5a50(PTR_DAT_05e63338);
    func_0x029f5a50(PTR_DAT_05e62d68);
    func_0x029f5a50(PTR_DAT_05e63b58);
    bRam000000000625c2b7 = 1;
  }
  puVar4 = PTR_DAT_05e591c0;
  lVar12 = *(long *)puVar7;
  uStack_68 = 0;
  iStack_94 = 0;
  uStack_88 = 0;
  uStack_90 = 0;
  uStack_78 = 0;
  uStack_80 = 0;
  uStack_b8 = 0;
  uStack_c0 = 0;
  uStack_a8 = 0;
  uStack_b0 = 0;
  if (*(int *)(lVar12 + 0xe4) == 0) {
    func_0x029f5bd0();
    lVar12 = *(long *)puVar7;
  }
  lVar12 = **(long **)(lVar12 + 0xb8);
  if (*(int *)(*(long *)puVar4 + 0xe4) == 0) {
    func_0x029f5bd0(*(long *)puVar4);
  }
  uVar13 = Object_op_Equality_0x6000dec(lVar12,0,0);
  if ((uVar13 & 1) != 0) {
    return;
  }
  uVar9 = *(uint *)(param_1 + 0x98);
  if ((int)uVar9 < 0) {
    return;
  }
  if (lVar12 != 0) {
    lVar16 = *(long *)(lVar12 + 0x30);
    if ((lVar16 == 0) || (*(int *)(lVar16 + 0x18) <= (int)uVar9)) {
      bVar1 = false;
      uStack_68 = uStack_68 & 0xffffffff;
    }
    else {
      lVar16 = lVar16 + (ulong)uVar9 * 4;
      uStack_68 = CONCAT44(*(undefined4 *)(lVar16 + 0x20),(undefined4)uStack_68);
      bVar1 = 0x13 < *(int *)(lVar16 + 0x20);
    }
    plVar17 = *(long **)(param_1 + 0x20);
    if (*(int *)(*(long *)PTR_DAT_05e5e528 + 0xe4) == 0) {
      func_0x029f5bd0();
    }
    uVar14 = LocalizationManager_GetTranslation_0x60011b3
                       (*(undefined8 *)PTR_DAT_05e63b50,1,0,1,0,0,0,1,0);
    puVar4 = PTR_DAT_05e58a10;
    iStack_100 = *(int *)(param_1 + 0x98) + 1;
    uVar15 = func_0x029f5bd8(*(undefined8 *)(PTR_DAT_05e58a10 + 0x48),&iStack_100);
    uVar14 = String_Format_0x600029c(uVar14,uVar15,0);
    if (plVar17 != (long *)0x0) {
      (**(code **)(*plVar17 + 0x558))(plVar17,uVar14,*(undefined8 *)(*plVar17 + 0x560));
      puVar5 = PTR_DAT_05e5d338;
      plVar17 = *(long **)(param_1 + 0x28);
      lVar16 = *(long *)PTR_DAT_05e5d338;
      if (*(int *)(lVar16 + 0xe4) == 0) {
        func_0x029f5bd0();
        lVar16 = *(long *)puVar5;
      }
      uVar14 = Int32_ToString_0x600080e(*(long *)(lVar16 + 0xb8) + 0xc4,0);
      if (plVar17 != (long *)0x0) {
        (**(code **)(*plVar17 + 0x558))(plVar17,uVar14,*(undefined8 *)(*plVar17 + 0x560));
        plVar17 = *(long **)(param_1 + 0x30);
        uVar14 = Int32_ToString_0x600080e((long)&uStack_68 + 4,0);
        if (plVar17 != (long *)0x0) {
          (**(code **)(*plVar17 + 0x558))(plVar17,uVar14,*(undefined8 *)(*plVar17 + 0x560));
          plVar17 = *(long **)(param_1 + 0x38);
          uVar10 = uStack_68._4_4_;
          if (*(int *)(*(long *)puVar7 + 0xe4) == 0) {
            func_0x029f5bd0();
          }
          StarUpgrade_manager_BonusPct_return(&uStack_e0,uVar10);
          uStack_b8 = uStack_d8;
          uStack_c0 = uStack_e0;
          uStack_a8 = uStack_c8;
          uStack_b0 = uStack_d0;
          uVar14 = InfVal_InfVal_change_0x60000a8(&uStack_c0,0);
          puVar8 = PTR_DAT_05e63b58;
          puVar6 = PTR_DAT_05e5d528;
          uVar14 = String_Concat_0x6000299
                             (*(undefined8 *)PTR_DAT_05e5d528,uVar14,*(undefined8 *)PTR_DAT_05e63b58
                              ,0);
          if (plVar17 != (long *)0x0) {
            (**(code **)(*plVar17 + 0x558))(plVar17,uVar14,*(undefined8 *)(*plVar17 + 0x560));
            uVar9 = StarUpgrade_popup_TryGetSlotGun(param_1,&uStack_68,&uStack_90);
            if (*(long *)(param_1 + 0x70) != 0) {
              GameObject_SetActive_0x6000cfe(*(long *)(param_1 + 0x70),uVar9 & 1,0);
              puVar3 = (undefined8 *)PTR_DAT_05e5acc0;
              if ((uVar9 & 1) != 0) {
                plVar17 = *(long **)(param_1 + 0x40);
                uVar10 = uStack_68._4_4_;
                uStack_d8 = uStack_88;
                uStack_e0 = uStack_90;
                uStack_c8 = uStack_78;
                uStack_d0 = uStack_80;
                if (*(int *)(*(long *)puVar7 + 0xe4) == 0) {
                  func_0x029f5bd0();
                }
                uStack_118 = uStack_d8;
                uStack_120 = uStack_e0;
                uStack_108 = uStack_c8;
                uStack_110 = uStack_d0;
                StarUpgrade_manager_Damage_Apply(&iStack_100,&uStack_120,uVar10);
                uStack_c0 = CONCAT44(uStack_fc,iStack_100);
                uStack_b8 = uStack_f8;
                uStack_a8 = uStack_e8;
                uStack_b0 = uStack_f0;
                uVar14 = InfVal_InfVal_change_0x60000a8(&uStack_c0,0);
                if (plVar17 == (long *)0x0) goto LAB_02c6f198;
                (**(code **)(*plVar17 + 0x558))(plVar17,uVar14,*(undefined8 *)(*plVar17 + 0x560));
                puVar3 = (undefined8 *)PTR_DAT_05e5acc0;
              }
              PTR_DAT_05e5acc0 = (undefined *)puVar3;
              if (bVar1) {
                plVar17 = *(long **)(param_1 + 0x48);
                if (plVar17 != (long *)0x0) {
                  (**(code **)(*plVar17 + 0x558))(plVar17,*puVar3,*(undefined8 *)(*plVar17 + 0x560))
                  ;
                  plVar17 = *(long **)(param_1 + 0x50);
                  if (plVar17 != (long *)0x0) {
                    (**(code **)(*plVar17 + 0x558))
                              (plVar17,*puVar3,*(undefined8 *)(*plVar17 + 0x560));
                    plVar17 = *(long **)(param_1 + 0x58);
                    if (plVar17 != (long *)0x0) {
                      (**(code **)(*plVar17 + 0x558))
                                (plVar17,*puVar3,*(undefined8 *)(*plVar17 + 0x560));
                      plVar17 = *(long **)(param_1 + 0x60);
                      if (plVar17 != (long *)0x0) {
                        (**(code **)(*plVar17 + 0x558))
                                  (plVar17,*puVar3,*(undefined8 *)(*plVar17 + 0x560));
                        plVar17 = *(long **)(param_1 + 0x68);
                        if (plVar17 != (long *)0x0) {
                          (**(code **)(*plVar17 + 0x558))
                                    (plVar17,*puVar3,*(undefined8 *)(*plVar17 + 0x560));
                          lVar12 = *(long *)(param_1 + 0x90);
                          if (lVar12 != 0) {
                            if (*(int *)(lVar12 + 0x18) == 0) goto LAB_02c6f19c;
                            plVar17 = *(long **)(param_1 + 0x68);
                            if (plVar17 != (long *)0x0) {
                              (**(code **)(*plVar17 + 0x2a8))
                                        (*(undefined4 *)(lVar12 + 0x20),
                                         *(undefined4 *)(lVar12 + 0x24),
                                         *(undefined4 *)(lVar12 + 0x28),
                                         *(undefined4 *)(lVar12 + 0x2c),plVar17,
                                         *(undefined8 *)(*plVar17 + 0x2b0));
                              lVar12 = *(long *)(param_1 + 0x88);
                              if (lVar12 != 0) {
                                if (*(int *)(lVar12 + 0x18) == 0) goto LAB_02c6f19c;
                                plVar17 = *(long **)(param_1 + 0x78);
                                if (plVar17 == (long *)0x0) goto LAB_02c6f198;
LAB_02c6f160:
                                (**(code **)(*plVar17 + 0x2a8))
                                          (*(undefined4 *)(lVar12 + 0x20),
                                           *(undefined4 *)(lVar12 + 0x24),
                                           *(undefined4 *)(lVar12 + 0x28),
                                           *(undefined4 *)(lVar12 + 0x2c),plVar17,
                                           *(undefined8 *)(*plVar17 + 0x2b0));
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
              else {
                uStack_68._4_4_ = (int)(uStack_68 >> 0x20);
                plVar17 = *(long **)(param_1 + 0x48);
                iStack_94 = uStack_68._4_4_ + 1;
                uVar14 = Int32_ToString_0x600080e(&iStack_94,0);
                if (plVar17 != (long *)0x0) {
                  (**(code **)(*plVar17 + 0x558))(plVar17,uVar14,*(undefined8 *)(*plVar17 + 0x560));
                  iVar11 = iStack_94;
                  plVar17 = *(long **)(param_1 + 0x50);
                  if (*(int *)(*(long *)puVar7 + 0xe4) == 0) {
                    func_0x029f5bd0();
                  }
                  StarUpgrade_manager_BonusPct_return(&uStack_e0,iVar11);
                  uStack_b8 = uStack_d8;
                  uStack_c0 = uStack_e0;
                  uStack_a8 = uStack_c8;
                  uStack_b0 = uStack_d0;
                  uVar14 = InfVal_InfVal_change_0x60000a8(&uStack_c0,0);
                  uVar14 = String_Concat_0x6000299
                                     (*(undefined8 *)puVar6,uVar14,*(undefined8 *)puVar8,0);
                  if (plVar17 != (long *)0x0) {
                    (**(code **)(*plVar17 + 0x558))
                              (plVar17,uVar14,*(undefined8 *)(*plVar17 + 0x560));
                    iVar11 = iStack_94;
                    if ((uVar9 & 1) != 0) {
                      plVar17 = *(long **)(param_1 + 0x58);
                      uStack_d8 = uStack_88;
                      uStack_e0 = uStack_90;
                      uStack_c8 = uStack_78;
                      uStack_d0 = uStack_80;
                      if (*(int *)(*(long *)puVar7 + 0xe4) == 0) {
                        func_0x029f5bd0();
                      }
                      uStack_138 = uStack_d8;
                      uStack_140 = uStack_e0;
                      uStack_128 = uStack_c8;
                      uStack_130 = uStack_d0;
                      StarUpgrade_manager_Damage_Apply(&iStack_100,&uStack_140,iVar11);
                      uStack_c0 = CONCAT44(uStack_fc,iStack_100);
                      uStack_b8 = uStack_f8;
                      uStack_a8 = uStack_e8;
                      uStack_b0 = uStack_f0;
                      uVar14 = InfVal_InfVal_change_0x60000a8(&uStack_c0,0);
                      if (plVar17 == (long *)0x0) goto LAB_02c6f198;
                      (**(code **)(*plVar17 + 0x558))
                                (plVar17,uVar14,*(undefined8 *)(*plVar17 + 0x560));
                    }
                    plVar17 = *(long **)(param_1 + 0x60);
                    uVar10 = StarUpgrade_manager_SuccessRate_return
                                       (lVar12,*(undefined4 *)(param_1 + 0x98));
                    uStack_e0 = CONCAT44(uStack_e0._4_4_,uVar10);
                    uVar14 = func_0x029f5bd8(*(undefined8 *)(puVar4 + 0x48),&uStack_e0);
                    uVar14 = String_Format_0x600029c(*(undefined8 *)PTR_DAT_05e63338,uVar14,0);
                    if (plVar17 != (long *)0x0) {
                      (**(code **)(*plVar17 + 0x558))
                                (plVar17,uVar14,*(undefined8 *)(*plVar17 + 0x560));
                      iVar11 = StarUpgrade_manager_Cost_return
                                         (lVar12,*(undefined4 *)(param_1 + 0x98));
                      lVar12 = *(long *)puVar5;
                      if (*(int *)(lVar12 + 0xe4) == 0) {
                        func_0x029f5bd0(lVar12);
                        lVar12 = *(long *)puVar5;
                      }
                      plVar17 = *(long **)(param_1 + 0x68);
                      iVar2 = *(int *)(*(long *)(lVar12 + 0xb8) + 0xc4);
                      iStack_100 = iVar11;
                      uVar14 = func_0x029f5bd8(*(undefined8 *)(puVar4 + 0x48),&iStack_100);
                      uVar14 = String_Format_0x600029c(*(undefined8 *)PTR_DAT_05e62d68,uVar14,0);
                      if (plVar17 != (long *)0x0) {
                        uVar13 = (ulong)(iVar11 <= iVar2);
                        (**(code **)(*plVar17 + 0x558))
                                  (plVar17,uVar14,*(undefined8 *)(*plVar17 + 0x560));
                        lVar12 = *(long *)(param_1 + 0x90);
                        if (lVar12 != 0) {
                          uVar9 = (uint)(iVar11 <= iVar2);
                          if (*(uint *)(lVar12 + 0x18) <= uVar9) {
LAB_02c6f19c:
                    /* WARNING: Subroutine does not return */
                            Throw_Index_Wrapper();
                          }
                          plVar17 = *(long **)(param_1 + 0x68);
                          if (plVar17 != (long *)0x0) {
                            lVar12 = lVar12 + uVar13 * 0x10;
                            (**(code **)(*plVar17 + 0x2a8))
                                      (*(undefined4 *)(lVar12 + 0x20),*(undefined4 *)(lVar12 + 0x24)
                                       ,*(undefined4 *)(lVar12 + 0x28),
                                       *(undefined4 *)(lVar12 + 0x2c),plVar17,
                                       *(undefined8 *)(*plVar17 + 0x2b0));
                            lVar12 = *(long *)(param_1 + 0x88);
                            if (lVar12 != 0) {
                              if (*(uint *)(lVar12 + 0x18) <= uVar9) goto LAB_02c6f19c;
                              plVar17 = *(long **)(param_1 + 0x78);
                              if (plVar17 != (long *)0x0) {
                                lVar12 = lVar12 + uVar13 * 0x10;
                                goto LAB_02c6f160;
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
LAB_02c6f198:
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

