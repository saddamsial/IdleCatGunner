/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b7da80, Ghidra VA 02c7da80. */

void Pet_Info_UI_Reload(long param_1,uint param_2)

{
  undefined *puVar1;
  undefined *puVar2;
  long lVar3;
  long *plVar4;
  long lVar5;
  uint uVar6;
  undefined8 uVar7;
  long lVar8;
  
  puVar1 = PTR_DAT_05e5d4d0;
  if ((bRam000000000625c33d & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e5d4d0);
    func_0x029f5a50(PTR_DAT_05e63810);
    bRam000000000625c33d = 1;
  }
  lVar3 = *(long *)puVar1;
  *(uint *)(param_1 + 0x60) = param_2;
  if (*(int *)(lVar3 + 0xe4) == 0) {
    func_0x029f5bd0();
    lVar3 = *(long *)puVar1;
  }
  lVar3 = *(long *)(*(long *)(lVar3 + 0xb8) + 0x28);
  if ((lVar3 != 0) && (lVar5 = *(long *)(lVar3 + 0x20), lVar5 != 0)) {
    if (*(uint *)(lVar5 + 0x18) <= param_2) {
LAB_02c7dd18:
                    /* WARNING: Subroutine does not return */
      Throw_Index_Wrapper();
    }
    lVar3 = *(long *)(lVar3 + 0x58);
    if (lVar3 != 0) {
      if (*(uint *)(lVar3 + 0x18) <= param_2) goto LAB_02c7dd18;
      if (*(long *)(param_1 + 0x20) != 0) {
        lVar8 = *(long *)(param_1 + 0x28);
        uVar7 = *(undefined8 *)(lVar3 + (long)(int)param_2 * 8 + 0x20);
        lVar3 = *(long *)(lVar5 + (long)(int)param_2 * 8 + 0x20);
        Image_set_sprite_0x600013f(*(long *)(param_1 + 0x20),uVar7,0);
        if (lVar8 != 0) {
          Image_set_sprite_0x600013f(lVar8,uVar7,0);
          plVar4 = *(long **)(param_1 + 0x28);
          if (plVar4 != (long *)0x0) {
            (**(code **)(*plVar4 + 0x408))(plVar4,*(undefined8 *)(*plVar4 + 0x410));
            plVar4 = *(long **)(param_1 + 0x20);
            if (plVar4 != (long *)0x0) {
              (**(code **)(*plVar4 + 0x408))(plVar4,*(undefined8 *)(*plVar4 + 0x410));
              plVar4 = *(long **)(param_1 + 0x30);
              Pet_manager_Degree_Color_return_0x6000bee(param_2);
              if (plVar4 != (long *)0x0) {
                (**(code **)(*plVar4 + 0x2a8))(plVar4,*(undefined8 *)(*plVar4 + 0x2b0));
                puVar2 = PTR_DAT_05e63810;
                lVar5 = *(long *)(param_1 + 0x38);
                if (lVar5 != 0) {
                  lVar8 = 0;
                  do {
                    uVar6 = (uint)lVar8;
                    if ((int)*(uint *)(lVar5 + 0x18) <= (int)uVar6) {
                      if (lVar3 != 0) {
                        plVar4 = *(long **)(param_1 + 0x40);
                        uVar7 = InfVal_InfVal_change_0x60000a8(lVar3 + 0x18,0);
                        uVar7 = String_Format_0x600029c(*(undefined8 *)puVar2,uVar7,0);
                        if (plVar4 != (long *)0x0) {
                          (**(code **)(*plVar4 + 0x558))
                                    (plVar4,uVar7,*(undefined8 *)(*plVar4 + 0x560));
                          plVar4 = *(long **)(param_1 + 0x48);
                          uVar7 = Int32_ToString_0x600080e(lVar3 + 0x38,0);
                          uVar7 = String_Format_0x600029c(*(undefined8 *)puVar2,uVar7,0);
                          if (plVar4 != (long *)0x0) {
                            (**(code **)(*plVar4 + 0x558))
                                      (plVar4,uVar7,*(undefined8 *)(*plVar4 + 0x560));
                            if (*(long *)(param_1 + 0x50) != 0) {
                              GameObject_SetActive_0x6000cfe
                                        (*(long *)(param_1 + 0x50),0 < (int)param_2,0);
                              lVar3 = *(long *)puVar1;
                              lVar5 = *(long *)(param_1 + 0x58);
                              if (*(int *)(lVar3 + 0xe4) == 0) {
                                func_0x029f5bd0();
                                lVar3 = *(long *)puVar1;
                              }
                              lVar3 = *(long *)(*(long *)(lVar3 + 0xb8) + 0x28);
                              if (((lVar3 != 0) && (lVar3 = *(long *)(lVar3 + 0x20), lVar3 != 0)) &&
                                 (lVar5 != 0)) {
                                GameObject_SetActive_0x6000cfe
                                          (lVar5,(int)param_2 < *(int *)(lVar3 + 0x18) + -1,0);
                                lVar3 = Component_get_gameObject_0x6000c83(param_1,0);
                                if (lVar3 != 0) {
                                  GameObject_SetActive_0x6000cfe(lVar3,1,0);
                                  return;
                                }
                              }
                            }
                          }
                        }
                      }
                      break;
                    }
                    if (*(uint *)(lVar5 + 0x18) <= uVar6) goto LAB_02c7dd18;
                    lVar5 = *(long *)(lVar5 + lVar8 * 8 + 0x20);
                    if (lVar5 == 0) break;
                    GameObject_SetActive_0x6000cfe(lVar5,param_2 == uVar6,0);
                    lVar5 = *(long *)(param_1 + 0x38);
                    lVar8 = lVar8 + 1;
                  } while (lVar5 != 0);
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

