/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b762a4, Ghidra VA 02c762a4. */

void Gun_Slot_Reload(long param_1)

{
  undefined *puVar1;
  undefined *puVar2;
  undefined *puVar3;
  uint uVar4;
  int iVar5;
  uint uVar6;
  ulong uVar7;
  long lVar8;
  long lVar9;
  undefined8 uVar10;
  long *plVar11;
  long lVar12;
  undefined4 uVar13;
  undefined4 uVar14;
  undefined4 uVar15;
  undefined4 uVar16;
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
  undefined8 uStack_70;
  undefined8 uStack_68;
  undefined8 uStack_60;
  undefined8 uStack_58;
  int iStack_44;
  
  puVar2 = PTR_DAT_05e5dd40;
  if ((bRam000000000625c2fd & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e5dd40);
    func_0x029f5a50(PTR_DAT_05e591c0);
    func_0x029f5a50(PTR_DAT_05e5e058);
    func_0x029f5a50(PTR_DAT_05e5e6d0);
    bRam000000000625c2fd = 1;
  }
  iStack_44 = 0;
  uStack_68 = 0;
  uStack_70 = 0;
  uStack_58 = 0;
  uStack_60 = 0;
  if ((**(long **)(*(long *)puVar2 + 0xb8) == 0) ||
     (lVar8 = *(long *)(**(long **)(*(long *)puVar2 + 0xb8) + 0x28), lVar8 == 0)) goto LAB_02c7648c;
  if (*(uint *)(lVar8 + 0x18) <= *(uint *)(param_1 + 0x20)) goto LAB_02c767a8;
  if (*(long *)(param_1 + 0x40) != 0) {
    uVar6 = *(uint *)(lVar8 + (long)(int)*(uint *)(param_1 + 0x20) * 4 + 0x20);
    GameObject_SetActive_0x6000cfe(*(long *)(param_1 + 0x40),uVar6 != 0xffffffff,0);
    puVar3 = PTR_DAT_05e5e058;
    if (*(long *)(param_1 + 0x48) == 0) goto LAB_02c7648c;
    GameObject_SetActive_0x6000cfe(*(long *)(param_1 + 0x48),uVar6 == 0xffffffff,0);
    if (uVar6 != 0xffffffff) {
      lVar8 = **(long **)(*(long *)puVar2 + 0xb8);
      if ((lVar8 != 0) && (lVar9 = *(long *)(lVar8 + 0x20), lVar9 != 0)) {
        if (*(uint *)(lVar9 + 0x18) <= uVar6) {
LAB_02c767a8:
                    /* WARNING: Subroutine does not return */
          Throw_Index_Wrapper();
        }
        lVar8 = *(long *)(lVar8 + 0x48);
        if (lVar8 != 0) {
          if (*(uint *)(lVar8 + 0x18) <= uVar6) goto LAB_02c767a8;
          if (*(long *)(param_1 + 0x28) != 0) {
            lVar12 = *(long *)(param_1 + 0x30);
            uVar10 = *(undefined8 *)(lVar8 + (long)(int)uVar6 * 8 + 0x20);
            lVar8 = *(long *)(lVar9 + (long)(int)uVar6 * 8 + 0x20);
            Image_set_sprite_0x600013f(*(long *)(param_1 + 0x28),uVar10,0);
            if (lVar12 != 0) {
              Image_set_sprite_0x600013f(lVar12,uVar10,0);
              plVar11 = *(long **)(param_1 + 0x38);
              Gun_manager_Degree_Color_return_0x6000a7b((int)uVar6 / 5,0);
              if (plVar11 != (long *)0x0) {
                (**(code **)(*plVar11 + 0x2a8))(plVar11,*(undefined8 *)(*plVar11 + 0x2b0));
                puVar1 = PTR_DAT_05e5e6d0;
                lVar9 = *(long *)(param_1 + 0x58);
                if (lVar9 != 0) {
                  lVar12 = 0;
                  do {
                    uVar4 = (uint)lVar12;
                    if ((int)*(uint *)(lVar9 + 0x18) <= (int)uVar4) {
                      if (lVar8 != 0) {
                        uStack_88 = *(undefined8 *)(lVar8 + 0x28);
                        uStack_90 = *(undefined8 *)(lVar8 + 0x20);
                        uStack_78 = *(undefined8 *)(lVar8 + 0x38);
                        uStack_80 = *(undefined8 *)(lVar8 + 0x30);
                        plVar11 = *(long **)(param_1 + 0x60);
                        uVar16 = *(undefined4 *)(param_1 + 0x20);
                        if (*(int *)(*(long *)puVar3 + 0xe4) == 0) {
                          func_0x029f5bd0();
                        }
                        uStack_c8 = uStack_88;
                        uStack_d0 = uStack_90;
                        uStack_b8 = uStack_78;
                        uStack_c0 = uStack_80;
                        StarUpgrade_manager_Damage_Apply_Slot(&uStack_b0,&uStack_d0,uVar16);
                        uStack_68 = uStack_a8;
                        uStack_70 = uStack_b0;
                        uStack_58 = uStack_98;
                        uStack_60 = uStack_a0;
                        uVar10 = InfVal_InfVal_change_0x60000a8(&uStack_70,0);
                        if (plVar11 != (long *)0x0) {
                          (**(code **)(*plVar11 + 0x558))
                                    (plVar11,uVar10,*(undefined8 *)(*plVar11 + 0x560));
                          plVar11 = *(long **)(param_1 + 0x68);
                          uVar10 = Single_ToString_0x60009f9(lVar8 + 0x40,0);
                          uVar10 = String_Format_0x600029c(*(undefined8 *)puVar1,uVar10,0);
                          if (plVar11 != (long *)0x0) {
                            (**(code **)(*plVar11 + 0x558))
                                      (plVar11,uVar10,*(undefined8 *)(*plVar11 + 0x560));
                            plVar11 = *(long **)(param_1 + 0x70);
                            uVar10 = Gun_manager_Gun_Type_str_return_0x6000a7d(uVar6,0);
                            if (plVar11 != (long *)0x0) {
                              (**(code **)(*plVar11 + 0x558))
                                        (plVar11,uVar10,*(undefined8 *)(*plVar11 + 0x560));
                              goto LAB_02c76568;
                            }
                          }
                        }
                      }
                      break;
                    }
                    if (*(uint *)(lVar9 + 0x18) <= uVar4) goto LAB_02c767a8;
                    lVar9 = *(long *)(lVar9 + lVar12 * 8 + 0x20);
                    if (lVar9 == 0) break;
                    GameObject_SetActive_0x6000cfe(lVar9,(int)uVar6 / 5 == uVar4,0);
                    lVar9 = *(long *)(param_1 + 0x58);
                    lVar12 = lVar12 + 1;
                  } while (lVar9 != 0);
                }
              }
            }
          }
        }
      }
      goto LAB_02c7648c;
    }
LAB_02c76568:
    puVar1 = PTR_DAT_05e591c0;
    uVar10 = *(undefined8 *)(param_1 + 0x78);
    if (*(int *)(*(long *)PTR_DAT_05e591c0 + 0xe4) == 0) {
      func_0x029f5bd0();
    }
    uVar7 = Object_op_Inequality_0x6000ded(uVar10,0,0);
    if ((uVar7 & 1) != 0) {
      lVar8 = *(long *)(param_1 + 0x78);
      if (uVar6 == 0xffffffff) {
        uVar4 = 0;
      }
      else {
        if (**(long **)(*(long *)puVar2 + 0xb8) == 0) goto LAB_02c7648c;
        uVar4 = Gun_manager_Is_Selected_Paused_0x6000a4d
                          (**(long **)(*(long *)puVar2 + 0xb8),*(undefined4 *)(param_1 + 0x20),0);
      }
      if (lVar8 == 0) goto LAB_02c7648c;
      GameObject_SetActive_0x6000cfe(lVar8,uVar4 & 1,0);
    }
    iVar5 = Gun_Slot_GetEquippedCount_0x6000b93();
    if (*(long *)(param_1 + 0x50) == 0) goto LAB_02c7648c;
    GameObject_SetActive_0x6000cfe
              (*(long *)(param_1 + 0x50),
               (uVar6 != 0xffffffff && iVar5 != 1) && (uVar6 == 0xffffffff || 0 < iVar5),0);
    lVar8 = *(long *)puVar3;
    if (*(int *)(lVar8 + 0xe4) == 0) {
      func_0x029f5bd0();
      lVar8 = *(long *)puVar3;
    }
    uVar10 = **(undefined8 **)(lVar8 + 0xb8);
    if (*(int *)(*(long *)puVar1 + 0xe4) == 0) {
      func_0x029f5bd0(*(long *)puVar1);
    }
    uVar7 = Object_op_Inequality_0x6000ded(uVar10,0,0);
    if ((uVar7 & 1) == 0) {
      if (*(long *)(param_1 + 0x80) == 0) goto LAB_02c7648c;
      GameObject_SetActive_0x6000cfe(*(long *)(param_1 + 0x80),0,0);
    }
    else {
      lVar8 = *(long *)puVar3;
      if (*(int *)(lVar8 + 0xe4) == 0) {
        func_0x029f5bd0();
        lVar8 = *(long *)puVar3;
      }
      if (**(long **)(lVar8 + 0xb8) == 0) goto LAB_02c7648c;
      uVar6 = StarUpgrade_manager_IsUnlocked();
      if (*(long *)(param_1 + 0x80) == 0) goto LAB_02c7648c;
      GameObject_SetActive_0x6000cfe(*(long *)(param_1 + 0x80),uVar6 & 1,0);
      if ((uVar6 & 1) != 0) {
        lVar8 = *(long *)puVar3;
        if (*(int *)(lVar8 + 0xe4) == 0) {
          func_0x029f5bd0();
          lVar8 = *(long *)puVar3;
        }
        if (**(long **)(lVar8 + 0xb8) == 0) goto LAB_02c7648c;
        uVar6 = *(uint *)(param_1 + 0x20);
        iStack_44 = 0;
        if ((-1 < (int)uVar6) && (lVar8 = *(long *)(**(long **)(lVar8 + 0xb8) + 0x30), lVar8 != 0))
        {
          if ((int)uVar6 < *(int *)(lVar8 + 0x18)) {
            iStack_44 = *(int *)(lVar8 + (ulong)uVar6 * 4 + 0x20);
          }
          else {
            iStack_44 = 0;
          }
        }
        plVar11 = *(long **)(param_1 + 0x88);
        uVar10 = Int32_ToString_0x600080e(&iStack_44,0);
        if (plVar11 == (long *)0x0) goto LAB_02c7648c;
        (**(code **)(*plVar11 + 0x558))(plVar11,uVar10,*(undefined8 *)(*plVar11 + 0x560));
        plVar11 = *(long **)(param_1 + 0x60);
        if (iStack_44 < 1) {
          uVar16 = 0x3f800000;
          uVar15 = 0x3f800000;
          uVar14 = 0x3f800000;
          uVar13 = 0x3f800000;
        }
        else {
          uVar13 = *(undefined4 *)(param_1 + 0x108);
          uVar14 = *(undefined4 *)(param_1 + 0x10c);
          uVar15 = *(undefined4 *)(param_1 + 0x110);
          uVar16 = *(undefined4 *)(param_1 + 0x114);
        }
        if (plVar11 == (long *)0x0) goto LAB_02c7648c;
        lVar8 = *plVar11;
        goto LAB_02c76780;
      }
    }
    plVar11 = *(long **)(param_1 + 0x60);
    if (plVar11 != (long *)0x0) {
      lVar8 = *plVar11;
      uVar13 = 0x3f800000;
      uVar14 = 0x3f800000;
      uVar15 = 0x3f800000;
      uVar16 = 0x3f800000;
LAB_02c76780:
      (**(code **)(lVar8 + 0x2a8))
                (uVar13,uVar14,uVar15,uVar16,plVar11,*(undefined8 *)(lVar8 + 0x2b0));
      return;
    }
  }
LAB_02c7648c:
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

