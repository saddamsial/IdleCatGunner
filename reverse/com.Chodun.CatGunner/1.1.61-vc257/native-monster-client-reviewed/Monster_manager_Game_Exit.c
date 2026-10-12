/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b4e16c, Ghidra VA 02c4e16c. */

void Monster_manager_Game_Exit(long param_1)

{
  int iVar1;
  uint uVar2;
  undefined *puVar3;
  undefined *puVar4;
  undefined *puVar5;
  undefined *puVar6;
  long lVar7;
  ulong uVar8;
  long lVar9;
  undefined8 uVar10;
  long lVar11;
  long *plVar12;
  long lVar13;
  undefined8 uStack_78;
  undefined8 *puStack_70;
  long lStack_68;
  undefined8 uStack_60;
  undefined8 *puStack_58;
  long lStack_50;
  
  puVar3 = PTR_DAT_05e5d498;
  if ((bRam000000000625c13e & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e5d910);
    func_0x029f5a50(PTR_DAT_05e634f8);
    func_0x029f5a50(PTR_DAT_05e63500);
    func_0x029f5a50(PTR_DAT_05e63508);
    func_0x029f5a50(PTR_DAT_05e63498);
    func_0x029f5a50(PTR_DAT_05e63510);
    func_0x029f5a50(PTR_DAT_05e63518);
    func_0x029f5a50(PTR_DAT_05e591c0);
    func_0x029f5a50(PTR_DAT_05e5d498);
    bRam000000000625c13e = 1;
  }
  uStack_60 = 0;
  puStack_58 = (undefined8 *)0x0;
  lStack_50 = 0;
  Monster_manager_SendDgResult_0x6000843(param_1,2);
  puVar4 = PTR_DAT_05e5d910;
  if (**(long **)(*(long *)puVar3 + 0xb8) != 0) {
    Rank_manager_SubmitMonsterScore_0x6000421
              (**(long **)(*(long *)puVar3 + 0xb8),
               *(int *)(param_1 + 0x24) + *(int *)(param_1 + 0x20) * 10,0);
    if (**(long **)(*(long *)puVar4 + 0xb8) != 0) {
      Admob_HideBannerAd_0x6000193(**(long **)(*(long *)puVar4 + 0xb8),0);
      if (*(long *)(param_1 + 0x180) != 0) {
        GameObject_SetActive_0x6000cfe(*(long *)(param_1 + 0x180),0,0);
        if (*(long *)(param_1 + 0x28) != 0) {
          GameObject_SetActive_0x6000cfe(*(long *)(param_1 + 0x28),0,0);
          if (*(long *)(param_1 + 0x30) != 0) {
            GameObject_SetActive_0x6000cfe(*(long *)(param_1 + 0x30),0,0);
            if (*(long *)(param_1 + 0x40) != 0) {
              GameObject_SetActive_0x6000cfe(*(long *)(param_1 + 0x40),1,0);
              if (*(long *)(param_1 + 0x48) != 0) {
                GameObject_SetActive_0x6000cfe(*(long *)(param_1 + 0x48),0,0);
                if (cRam000000000625ba57 == '\0') {
                  func_0x029f5a50(PTR_DAT_05e5dd70);
                  cRam000000000625ba57 = '\x01';
                }
                if (**(long **)(*(long *)PTR_DAT_05e5dd70 + 0xb8) != 0) {
                  Sound_manager_BGM_Change_Main_0x600054c
                            (**(long **)(*(long *)PTR_DAT_05e5dd70 + 0xb8),0);
                  lVar7 = Camera_get_main_0x60002b1(0);
                  if (lVar7 != 0) {
                    Camera_set_orthographicSize_0x600027d(0x42200000,lVar7,0);
                    Monster_manager_StopAllGameCoroutines(param_1);
                    puVar6 = PTR_DAT_05e63500;
                    puVar5 = PTR_DAT_05e634f8;
                    puVar4 = PTR_DAT_05e63498;
                    puVar3 = PTR_DAT_05e591c0;
                    if (*(long *)(param_1 + 0x178) != 0) {
                      func_0x0452d690(&uStack_78,*(long *)(param_1 + 0x178),
                                      *(undefined8 *)PTR_DAT_05e63518);
                      lStack_50 = lStack_68;
                      puStack_58 = puStack_70;
                      uStack_60 = uStack_78;
                      uStack_78 = 0;
                      puStack_70 = &uStack_60;
LAB_02c4e380:
                      uVar8 = func_0x03fa4e10(&uStack_60,*(undefined8 *)puVar6);
                      lVar7 = lStack_50;
                      if ((uVar8 & 1) != 0) {
                        if (*(int *)(*(long *)puVar3 + 0xe4) == 0) {
                          func_0x029f5bd0();
                        }
                        uVar8 = Object_op_Equality_0x6000dec(lVar7,0,0);
                        if ((uVar8 & 1) == 0) {
                          if (lVar7 == 0) {
                    /* WARNING: Subroutine does not return */
                            Throw_NullReference_Wrapper();
                          }
                          lVar9 = Component_get_gameObject_0x6000c83(lVar7,0);
                          if (lVar9 == 0) {
                    /* WARNING: Subroutine does not return */
                            Throw_NullReference_Wrapper();
                          }
                          GameObject_SetActive_0x6000cfe(lVar9,0,0);
                          lVar9 = *(long *)(param_1 + 0x170);
                          if (lVar9 != 0) {
                            lVar11 = *(long *)(lVar9 + 0x10);
                            lVar13 = *(long *)puVar4;
                            *(int *)(lVar9 + 0x1c) = *(int *)(lVar9 + 0x1c) + 1;
                            if (lVar11 != 0) {
                              uVar2 = *(uint *)(lVar9 + 0x18);
                              if (uVar2 < *(uint *)(lVar11 + 0x18)) {
                                *(uint *)(lVar9 + 0x18) = uVar2 + 1;
                                plVar12 = (long *)(lVar11 + (long)(int)uVar2 * 8 + 0x20);
                                *plVar12 = lVar7;
                                Managed_WriteBarrier(plVar12,lVar7);
                              }
                              else {
                                func_0x0452cba8(lVar9,lVar7,
                                                *(undefined8 *)
                                                 (*(long *)(*(long *)(lVar13 + 0x20) + 0xc0) + 0x70)
                                               );
                              }
                              goto LAB_02c4e380;
                            }
                          }
                    /* WARNING: Subroutine does not return */
                          Throw_NullReference_Wrapper();
                        }
                        goto LAB_02c4e380;
                      }
                      func_0x03fa4e0c(&uStack_60,*(undefined8 *)puVar5);
                      lVar7 = *(long *)(param_1 + 0x178);
                      if (lVar7 != 0) {
                        iVar1 = *(int *)(lVar7 + 0x18);
                        *(undefined4 *)(lVar7 + 0x18) = 0;
                        *(int *)(lVar7 + 0x1c) = *(int *)(lVar7 + 0x1c) + 1;
                        if (0 < iVar1) {
                          Array_Clear_0x6000d48(*(undefined8 *)(lVar7 + 0x10),0,iVar1,0);
                        }
                        uVar10 = Monster_manager_Exit_Cor(param_1);
                        MonoBehaviour_StartCoroutine_0x6000d43(param_1,uVar10,0);
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
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

