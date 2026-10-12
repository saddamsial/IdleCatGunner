/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b5ac40, Ghidra VA 02c5ac40. */

void Raid_GunSlot_Reload(long param_1)

{
  undefined *puVar1;
  undefined *puVar2;
  undefined *puVar3;
  uint uVar4;
  int iVar5;
  uint uVar6;
  long lVar7;
  ulong uVar8;
  long lVar9;
  uint uVar10;
  undefined8 uVar11;
  long *plVar12;
  long lVar13;
  undefined4 uVar14;
  undefined4 uVar15;
  undefined4 uVar16;
  undefined4 uVar17;
  undefined8 uStack_e0;
  undefined8 uStack_d8;
  undefined8 uStack_d0;
  undefined8 uStack_c8;
  undefined8 uStack_b8;
  undefined8 uStack_b0;
  undefined8 uStack_a8;
  undefined8 uStack_a0;
  undefined8 uStack_98;
  undefined8 uStack_90;
  undefined8 uStack_88;
  undefined8 uStack_80;
  int iStack_74;
  undefined8 uStack_70;
  undefined8 uStack_68;
  undefined8 uStack_60;
  undefined8 uStack_58;
  
  puVar3 = PTR_DAT_05e5e070;
  if ((bRam000000000625c1d9 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e5dd40);
    func_0x029f5a50(PTR_DAT_05e591c0);
    func_0x029f5a50(PTR_DAT_05e5e070);
    func_0x029f5a50(PTR_DAT_05e5e058);
    func_0x029f5a50(PTR_DAT_05e5e6d0);
    bRam000000000625c1d9 = 1;
  }
  lVar7 = *(long *)puVar3;
  iStack_74 = 0;
  uStack_68 = 0;
  uStack_70 = 0;
  uStack_58 = 0;
  uStack_60 = 0;
  if (*(int *)(lVar7 + 0xe4) == 0) {
    func_0x029f5bd0();
    lVar7 = *(long *)puVar3;
  }
  if ((**(long **)(lVar7 + 0xb8) == 0) ||
     (lVar7 = *(long *)(**(long **)(lVar7 + 0xb8) + 0x88), lVar7 == 0)) goto LAB_02c5ae78;
  if (*(uint *)(lVar7 + 0x18) <= *(uint *)(param_1 + 0x20)) goto LAB_02c5b230;
  if (*(long *)(param_1 + 0x40) != 0) {
    uVar6 = *(uint *)(lVar7 + (long)(int)*(uint *)(param_1 + 0x20) * 4 + 0x20);
    GameObject_SetActive_0x6000cfe(*(long *)(param_1 + 0x40),uVar6 != 0xffffffff,0);
    puVar2 = PTR_DAT_05e5e058;
    if (*(long *)(param_1 + 0x48) == 0) goto LAB_02c5ae78;
    GameObject_SetActive_0x6000cfe(*(long *)(param_1 + 0x48),uVar6 == 0xffffffff,0);
    puVar1 = PTR_DAT_05e5dd40;
    if (uVar6 != 0xffffffff) {
      if ((**(long **)(*(long *)PTR_DAT_05e5dd40 + 0xb8) != 0) &&
         (lVar7 = *(long *)(**(long **)(*(long *)PTR_DAT_05e5dd40 + 0xb8) + 0x20), lVar7 != 0)) {
        if (*(uint *)(lVar7 + 0x18) <= uVar6) {
LAB_02c5b230:
                    /* WARNING: Subroutine does not return */
          Throw_Index_Wrapper();
        }
        lVar7 = *(long *)(lVar7 + (long)(int)uVar6 * 8 + 0x20);
        if (*(int *)(*(long *)puVar3 + 0xe4) == 0) {
          func_0x029f5bd0();
        }
        uVar4 = Raid_manager_Is_Weak_Gun_0x6000929(uVar6,0);
        if ((**(long **)(*(long *)puVar1 + 0xb8) != 0) &&
           (lVar9 = *(long *)(**(long **)(*(long *)puVar1 + 0xb8) + 0x48), lVar9 != 0)) {
          if (*(uint *)(lVar9 + 0x18) <= uVar6) goto LAB_02c5b230;
          if (*(long *)(param_1 + 0x28) != 0) {
            lVar13 = *(long *)(param_1 + 0x30);
            uVar11 = *(undefined8 *)(lVar9 + (long)(int)uVar6 * 8 + 0x20);
            Image_set_sprite_0x600013f(*(long *)(param_1 + 0x28),uVar11,0);
            if (lVar13 != 0) {
              Image_set_sprite_0x600013f(lVar13,uVar11,0);
              plVar12 = *(long **)(param_1 + 0x38);
              Gun_manager_Degree_Color_return_0x6000a7b((int)uVar6 / 5);
              if (plVar12 != (long *)0x0) {
                (**(code **)(*plVar12 + 0x2a8))(plVar12,*(undefined8 *)(*plVar12 + 0x2b0));
                puVar1 = PTR_DAT_05e5e6d0;
                lVar9 = *(long *)(param_1 + 0x70);
                if (lVar9 != 0) {
                  lVar13 = 0;
                  do {
                    uVar10 = (uint)lVar13;
                    if ((int)*(uint *)(lVar9 + 0x18) <= (int)uVar10) {
                      plVar12 = *(long **)(param_1 + 0x78);
                      if (*(int *)(*(long *)puVar3 + 0xe4) == 0) {
                        func_0x029f5bd0();
                      }
                      Raid_manager_Raid_Damage_return_0x600092a(&uStack_98,uVar6,0);
                      uVar14 = *(undefined4 *)(param_1 + 0x20);
                      if (*(int *)(*(long *)puVar2 + 0xe4) == 0) {
                        func_0x029f5bd0();
                      }
                      uStack_d8 = uStack_90;
                      uStack_e0 = uStack_98;
                      uStack_c8 = uStack_80;
                      uStack_d0 = uStack_88;
                      StarUpgrade_manager_Damage_Apply_Slot(&uStack_b8,&uStack_e0,uVar14,0);
                      uStack_68 = uStack_b0;
                      uStack_70 = uStack_b8;
                      uStack_58 = uStack_a0;
                      uStack_60 = uStack_a8;
                      uVar11 = InfVal_InfVal_change_0x60000a8(&uStack_70,0);
                      if ((plVar12 != (long *)0x0) &&
                         ((**(code **)(*plVar12 + 0x558))
                                    (plVar12,uVar11,*(undefined8 *)(*plVar12 + 0x560)), lVar7 != 0))
                      {
                        plVar12 = *(long **)(param_1 + 0x80);
                        uVar11 = Single_ToString_0x60009f9(lVar7 + 0x40,0);
                        uVar11 = String_Format_0x600029c(*(undefined8 *)puVar1,uVar11,0);
                        if (plVar12 != (long *)0x0) {
                          (**(code **)(*plVar12 + 0x558))
                                    (plVar12,uVar11,*(undefined8 *)(*plVar12 + 0x560));
                          plVar12 = *(long **)(param_1 + 0x88);
                          uVar11 = Gun_manager_Gun_Type_str_return_0x6000a7d(uVar6);
                          if (plVar12 != (long *)0x0) {
                            (**(code **)(*plVar12 + 0x558))
                                      (plVar12,uVar11,*(undefined8 *)(*plVar12 + 0x560));
                            uVar17 = 0x3f800000;
                            uVar16 = 0x3f800000;
                            plVar12 = *(long **)(param_1 + 0x78);
                            uVar15 = 0x3f800000;
                            uVar14 = 0x3f800000;
                            if ((uVar4 & 1) != 0) {
                              uVar14 = *(undefined4 *)(param_1 + 0xa0);
                              uVar15 = *(undefined4 *)(param_1 + 0xa4);
                              uVar16 = *(undefined4 *)(param_1 + 0xa8);
                              uVar17 = *(undefined4 *)(param_1 + 0xac);
                            }
                            if (plVar12 != (long *)0x0) {
                              (**(code **)(*plVar12 + 0x2a8))
                                        (uVar14,uVar15,uVar16,uVar17,plVar12,
                                         *(undefined8 *)(*plVar12 + 0x2b0));
                              goto LAB_02c5afb0;
                            }
                          }
                        }
                      }
                      break;
                    }
                    if (*(uint *)(lVar9 + 0x18) <= uVar10) goto LAB_02c5b230;
                    lVar9 = *(long *)(lVar9 + lVar13 * 8 + 0x20);
                    if (lVar9 == 0) break;
                    GameObject_SetActive_0x6000cfe(lVar9,(int)uVar6 / 5 == uVar10,0);
                    lVar9 = *(long *)(param_1 + 0x70);
                    lVar13 = lVar13 + 1;
                  } while (lVar9 != 0);
                }
              }
            }
          }
        }
      }
      goto LAB_02c5ae78;
    }
    uVar4 = 0;
LAB_02c5afb0:
    puVar1 = PTR_DAT_05e591c0;
    uVar11 = *(undefined8 *)(param_1 + 0x58);
    if (*(int *)(*(long *)PTR_DAT_05e591c0 + 0xe4) == 0) {
      func_0x029f5bd0();
    }
    uVar8 = Object_op_Inequality_0x6000ded(uVar11,0,0);
    if ((uVar8 & 1) != 0) {
      if (*(long *)(param_1 + 0x58) == 0) goto LAB_02c5ae78;
      GameObject_SetActive_0x6000cfe(*(long *)(param_1 + 0x58),uVar4 & 1,0);
    }
    uVar11 = *(undefined8 *)(param_1 + 0x60);
    if (*(int *)(*(long *)puVar1 + 0xe4) == 0) {
      func_0x029f5bd0();
    }
    uVar8 = Object_op_Inequality_0x6000ded(uVar11,0,0);
    if ((uVar8 & 1) != 0) {
      if (*(long *)(param_1 + 0x60) == 0) goto LAB_02c5ae78;
      GameObject_SetActive_0x6000cfe(*(long *)(param_1 + 0x60),uVar4 & 1,0);
    }
    uVar11 = *(undefined8 *)(param_1 + 0x68);
    if (*(int *)(*(long *)puVar1 + 0xe4) == 0) {
      func_0x029f5bd0();
    }
    uVar8 = Object_op_Inequality_0x6000ded(uVar11,0,0);
    if ((uVar8 & 1) != 0) {
      if (*(long *)(param_1 + 0x68) == 0) goto LAB_02c5ae78;
      GameObject_SetActive_0x6000cfe(*(long *)(param_1 + 0x68),uVar4 & 1,0);
    }
    lVar7 = *(long *)puVar3;
    if (*(int *)(lVar7 + 0xe4) == 0) {
      func_0x029f5bd0();
      lVar7 = *(long *)puVar3;
    }
    if (**(long **)(lVar7 + 0xb8) == 0) goto LAB_02c5ae78;
    iVar5 = Raid_manager_GetEquippedCount_0x6000913(**(long **)(lVar7 + 0xb8),0);
    if (*(long *)(param_1 + 0x50) == 0) goto LAB_02c5ae78;
    GameObject_SetActive_0x6000cfe
              (*(long *)(param_1 + 0x50),
               (uVar6 != 0xffffffff && iVar5 != 1) && (uVar6 == 0xffffffff || 0 < iVar5),0);
    lVar7 = *(long *)puVar2;
    if (*(int *)(lVar7 + 0xe4) == 0) {
      func_0x029f5bd0();
      lVar7 = *(long *)puVar2;
    }
    uVar11 = **(undefined8 **)(lVar7 + 0xb8);
    if (*(int *)(*(long *)puVar1 + 0xe4) == 0) {
      func_0x029f5bd0(*(long *)puVar1);
    }
    uVar8 = Object_op_Inequality_0x6000ded(uVar11,0,0);
    if ((uVar8 & 1) == 0) {
      if (*(long *)(param_1 + 0x90) == 0) goto LAB_02c5ae78;
      GameObject_SetActive_0x6000cfe(*(long *)(param_1 + 0x90),0,0);
    }
    else {
      lVar7 = *(long *)puVar2;
      if (*(int *)(lVar7 + 0xe4) == 0) {
        func_0x029f5bd0();
        lVar7 = *(long *)puVar2;
      }
      if (**(long **)(lVar7 + 0xb8) == 0) goto LAB_02c5ae78;
      uVar6 = StarUpgrade_manager_IsUnlocked(**(long **)(lVar7 + 0xb8),0);
      if (*(long *)(param_1 + 0x90) == 0) goto LAB_02c5ae78;
      GameObject_SetActive_0x6000cfe(*(long *)(param_1 + 0x90),uVar6 & 1,0);
      if ((uVar6 & 1) != 0) {
        lVar7 = *(long *)puVar2;
        if (*(int *)(lVar7 + 0xe4) == 0) {
          func_0x029f5bd0();
          lVar7 = *(long *)puVar2;
        }
        if (**(long **)(lVar7 + 0xb8) == 0) goto LAB_02c5ae78;
        iStack_74 = StarUpgrade_manager_Lv_return
                              (**(long **)(lVar7 + 0xb8),*(undefined4 *)(param_1 + 0x20),0);
        plVar12 = *(long **)(param_1 + 0x98);
        uVar11 = Int32_ToString_0x600080e(&iStack_74,0);
        if (plVar12 == (long *)0x0) goto LAB_02c5ae78;
        (**(code **)(*plVar12 + 0x558))(plVar12,uVar11,*(undefined8 *)(*plVar12 + 0x560));
        plVar12 = *(long **)(param_1 + 0x78);
        if (iStack_74 < 1) {
          uVar14 = 0x3f800000;
          uVar15 = 0x3f800000;
          uVar16 = 0x3f800000;
          uVar17 = 0x3f800000;
        }
        else {
          uVar17 = *(undefined4 *)(param_1 + 0xa0);
          uVar16 = *(undefined4 *)(param_1 + 0xa4);
          uVar15 = *(undefined4 *)(param_1 + 0xa8);
          uVar14 = *(undefined4 *)(param_1 + 0xac);
        }
        if (plVar12 == (long *)0x0) goto LAB_02c5ae78;
        lVar7 = *plVar12;
        goto LAB_02c5b208;
      }
    }
    plVar12 = *(long **)(param_1 + 0x78);
    if (plVar12 != (long *)0x0) {
      lVar7 = *plVar12;
      uVar17 = 0x3f800000;
      uVar16 = 0x3f800000;
      uVar15 = 0x3f800000;
      uVar14 = 0x3f800000;
LAB_02c5b208:
      (**(code **)(lVar7 + 0x2a8))
                (uVar17,uVar16,uVar15,uVar14,plVar12,*(undefined8 *)(lVar7 + 0x2b0));
      return;
    }
  }
LAB_02c5ae78:
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

