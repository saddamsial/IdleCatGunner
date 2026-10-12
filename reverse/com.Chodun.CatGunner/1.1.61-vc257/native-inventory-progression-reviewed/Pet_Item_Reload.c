/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b7e86c, Ghidra VA 02c7e86c. */

void Pet_Item_Reload(long param_1,uint param_2,uint param_3)

{
  undefined *puVar1;
  undefined *puVar2;
  bool bVar3;
  long lVar4;
  long *plVar5;
  ulong uVar6;
  long lVar7;
  uint uVar8;
  long lVar9;
  undefined8 uVar10;
  
  puVar2 = PTR_DAT_05e5d4d0;
  if ((bRam000000000625c340 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e591c0);
    func_0x029f5a50(PTR_DAT_05e5d4d0);
    bRam000000000625c340 = 1;
  }
  lVar4 = *(long *)puVar2;
  lVar7 = *(long *)(param_1 + 0x20);
  lVar9 = *(long *)(param_1 + 0x28);
  *(uint *)(param_1 + 100) = param_2;
  *(uint *)(param_1 + 0x68) = param_3;
  if (*(int *)(lVar4 + 0xe4) == 0) {
    func_0x029f5bd0();
    lVar4 = *(long *)puVar2;
  }
  lVar4 = *(long *)(*(long *)(lVar4 + 0xb8) + 0x28);
  if ((lVar4 != 0) && (lVar4 = *(long *)(lVar4 + 0x58), lVar4 != 0)) {
    if (*(uint *)(lVar4 + 0x18) <= param_2) {
LAB_02c7eb2c:
                    /* WARNING: Subroutine does not return */
      Throw_Index_Wrapper();
    }
    if (lVar7 != 0) {
      uVar10 = *(undefined8 *)(lVar4 + (long)(int)param_2 * 8 + 0x20);
      Image_set_sprite_0x600013f(lVar7,uVar10,0);
      if (lVar9 != 0) {
        Image_set_sprite_0x600013f(lVar9,uVar10,0);
        plVar5 = *(long **)(param_1 + 0x28);
        if (plVar5 != (long *)0x0) {
          (**(code **)(*plVar5 + 0x408))(plVar5,*(undefined8 *)(*plVar5 + 0x410));
          plVar5 = *(long **)(param_1 + 0x20);
          if (plVar5 != (long *)0x0) {
            (**(code **)(*plVar5 + 0x408))(plVar5,*(undefined8 *)(*plVar5 + 0x410));
            if (*(long *)(param_1 + 0x38) != 0) {
              GameObject_SetActive_0x6000cfe(*(long *)(param_1 + 0x38),0,0);
              plVar5 = *(long **)(param_1 + 0x30);
              Pet_manager_Degree_Color_return_0x6000bee(param_2);
              if (plVar5 != (long *)0x0) {
                (**(code **)(*plVar5 + 0x2a8))(plVar5,*(undefined8 *)(*plVar5 + 0x2b0));
                puVar1 = PTR_DAT_05e591c0;
                lVar7 = *(long *)(param_1 + 0x40);
                if (lVar7 != 0) {
                  lVar9 = 0;
                  do {
                    uVar8 = (uint)lVar9;
                    if ((int)*(uint *)(lVar7 + 0x18) <= (int)uVar8) {
                      Pet_Item_ResetScale_0x6000c10(param_1);
                      Pet_Item_EndAutoMerge_0x6000c08(param_1);
                      *(undefined2 *)(param_1 + 0x90) = 0;
                      *(undefined8 *)(param_1 + 0x98) = 0;
                      Managed_WriteBarrier((undefined8 *)(param_1 + 0x98),0);
                      *(undefined8 *)(param_1 + 0xa0) = 0;
                      Managed_WriteBarrier((undefined8 *)(param_1 + 0xa0),0);
                      *(undefined8 *)(param_1 + 0xb0) = 0;
                      *(undefined4 *)(param_1 + 0xa8) = 0xffffffff;
                      Managed_WriteBarrier((undefined8 *)(param_1 + 0xb0),0);
                      uVar10 = *(undefined8 *)(param_1 + 0x80);
                      if (*(int *)(*(long *)puVar1 + 0xe4) == 0) {
                        func_0x029f5bd0();
                      }
                      uVar6 = Object_op_Inequality_0x6000ded(uVar10,0,0);
                      if ((uVar6 & 1) != 0) {
                        if (*(long *)(param_1 + 0x80) == 0) break;
                        CanvasGroup_set_blocksRaycasts_0x6000007(*(long *)(param_1 + 0x80),1,0);
                      }
                      lVar7 = *(long *)puVar2;
                      if (*(int *)(lVar7 + 0xe4) == 0) {
                        func_0x029f5bd0();
                        lVar7 = *(long *)puVar2;
                      }
                      lVar7 = *(long *)(*(long *)(lVar7 + 0xb8) + 0x28);
                      if (lVar7 != 0) {
                        bVar3 = false;
                        if ((-1 < (int)param_3) && (lVar7 = *(long *)(lVar7 + 0x40), lVar7 != 0)) {
                          if ((int)param_3 < *(int *)(lVar7 + 0x18)) {
                            bVar3 = *(int *)(lVar7 + (ulong)param_3 * 4 + 0x20) != -1;
                          }
                          else {
                            bVar3 = false;
                          }
                        }
                        lVar7 = *(long *)puVar1;
                        uVar10 = *(undefined8 *)(param_1 + 0x48);
                        *(bool *)(param_1 + 0x6c) = bVar3;
                        if (*(int *)(lVar7 + 0xe4) == 0) {
                          func_0x029f5bd0();
                        }
                        uVar6 = Object_op_Inequality_0x6000ded(uVar10,0,0);
                        if ((uVar6 & 1) == 0) {
                          return;
                        }
                        if (*(long *)(param_1 + 0x48) != 0) {
                          GameObject_SetActive_0x6000cfe
                                    (*(long *)(param_1 + 0x48),*(undefined1 *)(param_1 + 0x6c),0);
                          return;
                        }
                      }
                      break;
                    }
                    if (*(uint *)(lVar7 + 0x18) <= uVar8) goto LAB_02c7eb2c;
                    lVar7 = *(long *)(lVar7 + lVar9 * 8 + 0x20);
                    if (lVar7 == 0) break;
                    GameObject_SetActive_0x6000cfe(lVar7,param_2 == uVar8,0);
                    lVar7 = *(long *)(param_1 + 0x40);
                    lVar9 = lVar9 + 1;
                  } while (lVar7 != 0);
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

