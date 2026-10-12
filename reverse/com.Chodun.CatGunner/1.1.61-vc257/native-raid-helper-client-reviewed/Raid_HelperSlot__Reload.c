/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b515e4, Ghidra VA 02c515e4. */

void Raid_HelperSlot__Reload(long param_1)

{
  undefined1 auVar1 [16];
  undefined *puVar2;
  undefined *puVar3;
  undefined *puVar4;
  uint uVar5;
  uint uVar6;
  uint uVar7;
  long lVar8;
  ulong uVar9;
  long lVar10;
  undefined8 uVar11;
  long *plVar12;
  uint uVar13;
  long lVar14;
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
  undefined8 uStack_a0;
  undefined8 uStack_98;
  undefined8 uStack_90;
  undefined8 uStack_88;
  undefined8 uStack_80;
  undefined8 uStack_78;
  uint uStack_64;
  
  puVar4 = PTR_DAT_05e5e070;
  if ((bRam000000000625c161 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e5dd40);
    func_0x029f5a50(PTR_DAT_05e591c0);
    func_0x029f5a50(PTR_DAT_05e5e070);
    func_0x029f5a50(PTR_DAT_05e5e058);
    func_0x029f5a50(PTR_DAT_05e5e6d0);
    bRam000000000625c161 = 1;
  }
  puVar2 = PTR_DAT_05e591c0;
  lVar8 = *(long *)puVar4;
  uStack_64 = 0;
  uStack_88 = 0;
  uStack_90 = 0;
  uStack_78 = 0;
  uStack_80 = 0;
  if (*(int *)(lVar8 + 0xe4) == 0) {
    func_0x029f5bd0();
    lVar8 = *(long *)puVar4;
  }
  lVar8 = **(long **)(lVar8 + 0xb8);
  if (*(int *)(*(long *)puVar2 + 0xe4) == 0) {
    func_0x029f5bd0(*(long *)puVar2);
  }
  uVar9 = Object_op_Inequality_0x6000ded(lVar8,0,0);
  if ((uVar9 & 1) == 0) {
    uVar5 = 0;
  }
  else {
    if (lVar8 == 0) goto LAB_02c5189c;
    uVar5 = Raid_manager__get_Is_Helper_Active(lVar8);
  }
  uVar11 = *(undefined8 *)(param_1 + 0x38);
  if (*(int *)(*(long *)puVar2 + 0xe4) == 0) {
    func_0x029f5bd0();
  }
  uVar9 = Object_op_Inequality_0x6000ded(uVar11,0,0);
  if ((uVar9 & 1) != 0) {
    if (*(long *)(param_1 + 0x38) == 0) goto LAB_02c5189c;
    GameObject_SetActive_0x6000cfe(*(long *)(param_1 + 0x38),(uVar5 ^ 0xffffffff) & 1,0);
  }
  if (*(int *)(*(long *)puVar4 + 0xe4) == 0) {
    func_0x029f5bd0();
  }
  uVar5 = Raid_manager__Helper_GunNum_return();
  puVar3 = PTR_DAT_05e5dd40;
  if (-1 < (int)uVar5) {
    uVar11 = **(undefined8 **)(*(long *)PTR_DAT_05e5dd40 + 0xb8);
    if (*(int *)(*(long *)puVar2 + 0xe4) == 0) {
      func_0x029f5bd0();
    }
    uVar9 = Object_op_Equality_0x6000dec(uVar11,0,0);
    if ((uVar9 & 1) == 0) {
      lVar8 = **(long **)(*(long *)puVar3 + 0xb8);
      if ((lVar8 != 0) && (lVar8 = *(long *)(lVar8 + 0x20), lVar8 != 0)) {
        if (*(int *)(lVar8 + 0x18) <= (int)uVar5) {
          return;
        }
        lVar8 = *(long *)(lVar8 + (ulong)uVar5 * 8 + 0x20);
        if (*(int *)(*(long *)puVar4 + 0xe4) == 0) {
          func_0x029f5bd0();
        }
        uVar6 = Raid_manager__Helper_StarLv_return();
        uStack_64 = uVar6;
        uVar7 = Raid_manager_Is_Weak_Gun_0x6000929(uVar5);
        lVar10 = **(long **)(*(long *)puVar3 + 0xb8);
        if ((lVar10 != 0) && (lVar10 = *(long *)(lVar10 + 0x48), lVar10 != 0)) {
          if (*(uint *)(lVar10 + 0x18) <= uVar5) {
LAB_02c51b40:
                    /* WARNING: Subroutine does not return */
            Throw_Index_Wrapper();
          }
          if (*(long *)(param_1 + 0x20) != 0) {
            lVar14 = *(long *)(param_1 + 0x28);
            uVar11 = *(undefined8 *)(lVar10 + CONCAT44(0,uVar5) * 8 + 0x20);
            Image_set_sprite_0x600013f(*(long *)(param_1 + 0x20),uVar11,0);
            if (lVar14 != 0) {
              Image_set_sprite_0x600013f(lVar14,uVar11,0);
              plVar12 = *(long **)(param_1 + 0x30);
              Gun_manager_Degree_Color_return_0x6000a7b((ulong)uVar5 / 5,0);
              if (plVar12 != (long *)0x0) {
                (**(code **)(*plVar12 + 0x2a8))(plVar12,*(undefined8 *)(*plVar12 + 0x2b0));
                lVar10 = *(long *)(param_1 + 0x58);
                if (lVar10 != 0) {
                  lVar14 = 0;
                  auVar1._8_8_ = 0;
                  auVar1._0_8_ = CONCAT44(0,uVar5);
                  do {
                    uVar13 = (uint)lVar14;
                    if ((int)*(uint *)(lVar10 + 0x18) <= (int)uVar13) {
                      plVar12 = *(long **)(param_1 + 0x60);
                      if (*(int *)(*(long *)puVar4 + 0xe4) == 0) {
                        func_0x029f5bd0();
                      }
                      Raid_manager_Raid_Damage_return_0x600092a(&uStack_b0,uVar5);
                      puVar4 = PTR_DAT_05e5e058;
                      if (*(int *)(*(long *)PTR_DAT_05e5e058 + 0xe4) == 0) {
                        func_0x029f5bd0();
                      }
                      uStack_e8 = uStack_a8;
                      uStack_f0 = uStack_b0;
                      uStack_d8 = uStack_98;
                      uStack_e0 = uStack_a0;
                      StarUpgrade_manager_Damage_Apply_0x6000ae2(&uStack_d0,&uStack_f0,uVar6,0);
                      uStack_88 = uStack_c8;
                      uStack_90 = uStack_d0;
                      uStack_78 = uStack_b8;
                      uStack_80 = uStack_c0;
                      uVar11 = InfVal_InfVal_change_0x60000a8(&uStack_90,0);
                      if ((plVar12 == (long *)0x0) ||
                         ((**(code **)(*plVar12 + 0x558))
                                    (plVar12,uVar11,*(undefined8 *)(*plVar12 + 0x560)), lVar8 == 0))
                      break;
                      plVar12 = *(long **)(param_1 + 0x68);
                      uVar11 = Single_ToString_0x60009f9(lVar8 + 0x40,0);
                      uVar11 = String_Format_0x600029c(*(undefined8 *)PTR_DAT_05e5e6d0,uVar11,0);
                      if (plVar12 == (long *)0x0) break;
                      (**(code **)(*plVar12 + 0x558))
                                (plVar12,uVar11,*(undefined8 *)(*plVar12 + 0x560));
                      plVar12 = *(long **)(param_1 + 0x70);
                      uVar11 = Gun_manager_Gun_Type_str_return_0x6000a7d(uVar5,0);
                      if (plVar12 == (long *)0x0) break;
                      (**(code **)(*plVar12 + 0x558))
                                (plVar12,uVar11,*(undefined8 *)(*plVar12 + 0x560));
                      uVar11 = *(undefined8 *)(param_1 + 0x40);
                      if (*(int *)(*(long *)puVar2 + 0xe4) == 0) {
                        func_0x029f5bd0();
                      }
                      uVar9 = Object_op_Inequality_0x6000ded(uVar11,0,0);
                      if ((uVar9 & 1) != 0) {
                        if (*(long *)(param_1 + 0x40) == 0) break;
                        GameObject_SetActive_0x6000cfe(*(long *)(param_1 + 0x40),uVar7 & 1,0);
                      }
                      uVar11 = *(undefined8 *)(param_1 + 0x48);
                      if (*(int *)(*(long *)puVar2 + 0xe4) == 0) {
                        func_0x029f5bd0();
                      }
                      uVar9 = Object_op_Inequality_0x6000ded(uVar11,0,0);
                      if ((uVar9 & 1) != 0) {
                        if (*(long *)(param_1 + 0x48) == 0) break;
                        GameObject_SetActive_0x6000cfe(*(long *)(param_1 + 0x48),uVar7 & 1,0);
                      }
                      uVar11 = *(undefined8 *)(param_1 + 0x50);
                      if (*(int *)(*(long *)puVar2 + 0xe4) == 0) {
                        func_0x029f5bd0();
                      }
                      uVar9 = Object_op_Inequality_0x6000ded(uVar11,0,0);
                      if ((uVar9 & 1) != 0) {
                        if (*(long *)(param_1 + 0x50) == 0) break;
                        GameObject_SetActive_0x6000cfe(*(long *)(param_1 + 0x50),uVar7 & 1,0);
                      }
                      lVar8 = *(long *)puVar4;
                      if (*(int *)(lVar8 + 0xe4) == 0) {
                        func_0x029f5bd0();
                        lVar8 = *(long *)puVar4;
                      }
                      uVar11 = **(undefined8 **)(lVar8 + 0xb8);
                      if (*(int *)(*(long *)puVar2 + 0xe4) == 0) {
                        func_0x029f5bd0(*(long *)puVar2);
                      }
                      uVar9 = Object_op_Inequality_0x6000ded(uVar11,0,0);
                      if ((uVar9 & 1) == 0) {
                        if (*(long *)(param_1 + 0x78) != 0) {
                          GameObject_SetActive_0x6000cfe(*(long *)(param_1 + 0x78),0,0);
                          return;
                        }
                      }
                      else {
                        lVar8 = *(long *)puVar4;
                        if (*(int *)(lVar8 + 0xe4) == 0) {
                          func_0x029f5bd0();
                          lVar8 = *(long *)puVar4;
                        }
                        if (**(long **)(lVar8 + 0xb8) != 0) {
                          uVar5 = StarUpgrade_manager_IsUnlocked_0x6000adc
                                            (**(long **)(lVar8 + 0xb8),0);
                          if (*(long *)(param_1 + 0x78) != 0) {
                            GameObject_SetActive_0x6000cfe(*(long *)(param_1 + 0x78),uVar5 & 1,0);
                            if ((uVar5 & 1) == 0) {
                              return;
                            }
                            plVar12 = *(long **)(param_1 + 0x80);
                            uVar11 = Int32_ToString_0x600080e(&uStack_64,0);
                            if (plVar12 != (long *)0x0) {
                              (**(code **)(*plVar12 + 0x558))
                                        (plVar12,uVar11,*(undefined8 *)(*plVar12 + 0x560));
                              return;
                            }
                          }
                        }
                      }
                      break;
                    }
                    if (*(uint *)(lVar10 + 0x18) <= uVar13) goto LAB_02c51b40;
                    lVar10 = *(long *)(lVar10 + lVar14 * 8 + 0x20);
                    if (lVar10 == 0) break;
                    GameObject_SetActive_0x6000cfe
                              (lVar10,SUB164(auVar1 * ZEXT816(0x3333333333333334),8) == uVar13,0);
                    lVar10 = *(long *)(param_1 + 0x58);
                    lVar14 = lVar14 + 1;
                  } while (lVar10 != 0);
                }
              }
            }
          }
        }
      }
LAB_02c5189c:
                    /* WARNING: Subroutine does not return */
      Throw_NullReference_Wrapper();
    }
  }
  return;
}

