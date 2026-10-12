/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b83634, Ghidra VA 02c83634. */

void Pet_Slot_Reload(long param_1)

{
  uint uVar1;
  undefined *puVar2;
  undefined *puVar3;
  uint uVar4;
  long lVar5;
  ulong uVar6;
  long lVar7;
  long *plVar8;
  undefined8 uVar9;
  long lVar10;
  
  puVar3 = PTR_DAT_05e5d4d0;
  if ((bRam000000000625c36f & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e591c0);
    func_0x029f5a50(PTR_DAT_05e5d4d0);
    func_0x029f5a50(PTR_DAT_05e63810);
    bRam000000000625c36f = 1;
  }
  lVar5 = *(long *)puVar3;
  if (*(int *)(lVar5 + 0xe4) == 0) {
    func_0x029f5bd0();
    lVar5 = *(long *)puVar3;
  }
  lVar5 = *(long *)(*(long *)(lVar5 + 0xb8) + 0x28);
  if ((lVar5 != 0) && (lVar5 = *(long *)(lVar5 + 0x30), lVar5 != 0)) {
    if (*(uint *)(lVar5 + 0x18) <= *(uint *)(param_1 + 0x20)) goto LAB_02c83958;
    if (*(long *)(param_1 + 0x40) != 0) {
      uVar1 = *(uint *)(lVar5 + (long)(int)*(uint *)(param_1 + 0x20) * 4 + 0x20);
      GameObject_SetActive_0x6000cfe(*(long *)(param_1 + 0x40),uVar1 != 0xffffffff,0);
      puVar2 = PTR_DAT_05e591c0;
      if (*(long *)(param_1 + 0x48) != 0) {
        GameObject_SetActive_0x6000cfe(*(long *)(param_1 + 0x48),uVar1 == 0xffffffff,0);
        uVar9 = *(undefined8 *)(param_1 + 0x68);
        if (*(int *)(*(long *)puVar2 + 0xe4) == 0) {
          func_0x029f5bd0();
        }
        uVar6 = Object_op_Inequality_0x6000ded(uVar9,0,0);
        if ((uVar6 & 1) != 0) {
          lVar5 = *(long *)(param_1 + 0x68);
          if (uVar1 == 0xffffffff) {
            uVar4 = 0;
          }
          else {
            lVar7 = *(long *)puVar3;
            if (*(int *)(lVar7 + 0xe4) == 0) {
              func_0x029f5bd0();
              lVar7 = *(long *)puVar3;
            }
            lVar7 = *(long *)(*(long *)(lVar7 + 0xb8) + 0x28);
            if (lVar7 == 0) goto LAB_02c838b4;
            uVar4 = Pet_manager_IsSelectedLocked_0x6000bcd(lVar7,*(undefined4 *)(param_1 + 0x20),0);
          }
          if (lVar5 == 0) goto LAB_02c838b4;
          GameObject_SetActive_0x6000cfe(lVar5,uVar4 & 1,0);
        }
        if (uVar1 == 0xffffffff) {
          return;
        }
        lVar5 = *(long *)puVar3;
        if (*(int *)(lVar5 + 0xe4) == 0) {
          func_0x029f5bd0();
          lVar5 = *(long *)puVar3;
        }
        lVar5 = *(long *)(*(long *)(lVar5 + 0xb8) + 0x28);
        if ((lVar5 != 0) && (lVar7 = *(long *)(lVar5 + 0x20), lVar7 != 0)) {
          if (*(uint *)(lVar7 + 0x18) <= uVar1) {
LAB_02c83958:
                    /* WARNING: Subroutine does not return */
            Throw_Index_Wrapper();
          }
          lVar5 = *(long *)(lVar5 + 0x58);
          if (lVar5 != 0) {
            if (*(uint *)(lVar5 + 0x18) <= uVar1) goto LAB_02c83958;
            if (*(long *)(param_1 + 0x28) != 0) {
              lVar10 = *(long *)(param_1 + 0x30);
              uVar9 = *(undefined8 *)(lVar5 + (long)(int)uVar1 * 8 + 0x20);
              lVar5 = *(long *)(lVar7 + (long)(int)uVar1 * 8 + 0x20);
              Image_set_sprite_0x600013f(*(long *)(param_1 + 0x28),uVar9,0);
              if (lVar10 != 0) {
                Image_set_sprite_0x600013f(lVar10,uVar9,0);
                plVar8 = *(long **)(param_1 + 0x30);
                if (plVar8 != (long *)0x0) {
                  (**(code **)(*plVar8 + 0x408))(plVar8,*(undefined8 *)(*plVar8 + 0x410));
                  plVar8 = *(long **)(param_1 + 0x28);
                  if (plVar8 != (long *)0x0) {
                    (**(code **)(*plVar8 + 0x408))(plVar8,*(undefined8 *)(*plVar8 + 0x410));
                    plVar8 = *(long **)(param_1 + 0x38);
                    Pet_manager_Degree_Color_return_0x6000bee(uVar1,0);
                    if (plVar8 != (long *)0x0) {
                      (**(code **)(*plVar8 + 0x2a8))(plVar8,*(undefined8 *)(*plVar8 + 0x2b0));
                      puVar3 = PTR_DAT_05e63810;
                      lVar7 = *(long *)(param_1 + 0x50);
                      if (lVar7 != 0) {
                        lVar10 = 0;
                        do {
                          uVar4 = (uint)lVar10;
                          if ((int)*(uint *)(lVar7 + 0x18) <= (int)uVar4) {
                            if (lVar5 != 0) {
                              plVar8 = *(long **)(param_1 + 0x58);
                              uVar9 = InfVal_ToString_0x60000a7(lVar5 + 0x18,0);
                              uVar9 = String_Format_0x600029c(*(undefined8 *)puVar3,uVar9,0);
                              if (plVar8 != (long *)0x0) {
                                (**(code **)(*plVar8 + 0x558))
                                          (plVar8,uVar9,*(undefined8 *)(*plVar8 + 0x560));
                                plVar8 = *(long **)(param_1 + 0x60);
                                uVar9 = Int32_ToString_0x600080e(lVar5 + 0x38,0);
                                uVar9 = String_Format_0x600029c(*(undefined8 *)puVar3,uVar9,0);
                                if (plVar8 != (long *)0x0) {
                    /* WARNING: Could not recover jumptable at 0x02c83944. Too many branches */
                    /* WARNING: Treating indirect jump as call */
                                  (**(code **)(*plVar8 + 0x558))
                                            (plVar8,uVar9,*(undefined8 *)(*plVar8 + 0x560));
                                  return;
                                }
                              }
                            }
                            break;
                          }
                          if (*(uint *)(lVar7 + 0x18) <= uVar4) goto LAB_02c83958;
                          lVar7 = *(long *)(lVar7 + lVar10 * 8 + 0x20);
                          if (lVar7 == 0) break;
                          GameObject_SetActive_0x6000cfe(lVar7,uVar1 == uVar4,0);
                          lVar7 = *(long *)(param_1 + 0x50);
                          lVar10 = lVar10 + 1;
                        } while (lVar7 != 0);
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
LAB_02c838b4:
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

