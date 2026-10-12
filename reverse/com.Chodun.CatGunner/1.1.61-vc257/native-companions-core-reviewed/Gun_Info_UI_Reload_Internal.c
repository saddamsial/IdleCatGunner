/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b6f9a0, Ghidra VA 02c6f9a0. */

void Gun_Info_UI_Reload_Internal(long param_1,uint param_2,undefined4 param_3,undefined4 param_4)

{
  undefined *puVar1;
  long lVar2;
  long lVar3;
  undefined8 uVar4;
  long *plVar5;
  uint uVar6;
  long lVar7;
  
  puVar1 = PTR_DAT_05e5dd40;
  if ((bRam000000000625c2b9 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e5dd40);
    func_0x029f5a50(PTR_DAT_05e5e6d0);
    bRam000000000625c2b9 = 1;
  }
  lVar2 = *(long *)puVar1;
  *(undefined4 *)(param_1 + 0x88) = param_3;
  *(uint *)(param_1 + 0x8c) = param_2;
  *(undefined4 *)(param_1 + 0x90) = param_4;
  lVar2 = **(long **)(lVar2 + 0xb8);
  if ((lVar2 != 0) && (lVar3 = *(long *)(lVar2 + 0x20), lVar3 != 0)) {
    if (*(uint *)(lVar3 + 0x18) <= param_2) {
LAB_02c6fbf0:
                    /* WARNING: Subroutine does not return */
      Throw_Index_Wrapper();
    }
    lVar2 = *(long *)(lVar2 + 0x48);
    if (lVar2 != 0) {
      if (*(uint *)(lVar2 + 0x18) <= param_2) goto LAB_02c6fbf0;
      if (*(long *)(param_1 + 0x20) != 0) {
        lVar7 = *(long *)(param_1 + 0x28);
        uVar4 = *(undefined8 *)(lVar2 + (long)(int)param_2 * 8 + 0x20);
        lVar2 = *(long *)(lVar3 + (long)(int)param_2 * 8 + 0x20);
        Image_set_sprite_0x600013f(*(long *)(param_1 + 0x20),uVar4,0);
        if (lVar7 != 0) {
          Image_set_sprite_0x600013f(lVar7,uVar4,0);
          plVar5 = *(long **)(param_1 + 0x30);
          Gun_manager_Degree_Color_return_0x6000a7b((int)param_2 / 5,0);
          if (plVar5 != (long *)0x0) {
            (**(code **)(*plVar5 + 0x2a8))(plVar5,*(undefined8 *)(*plVar5 + 0x2b0));
            puVar1 = PTR_DAT_05e5e6d0;
            lVar3 = *(long *)(param_1 + 0x38);
            if (lVar3 != 0) {
              lVar7 = 0;
              do {
                uVar6 = (uint)lVar7;
                if ((int)*(uint *)(lVar3 + 0x18) <= (int)uVar6) {
                  if ((lVar2 != 0) && (plVar5 = *(long **)(param_1 + 0x40), plVar5 != (long *)0x0))
                  {
                    uVar4 = (**(code **)(*plVar5 + 0x558))
                                      (plVar5,*(undefined8 *)(lVar2 + 0x10),
                                       *(undefined8 *)(*plVar5 + 0x560));
                    plVar5 = *(long **)(param_1 + 0x48);
                    uVar4 = Gun_Info_UI_Explain_Return_0x6000b09
                                      (uVar4,*(undefined4 *)(lVar2 + 0x18));
                    if (plVar5 != (long *)0x0) {
                      (**(code **)(*plVar5 + 0x558))(plVar5,uVar4,*(undefined8 *)(*plVar5 + 0x560));
                      plVar5 = *(long **)(param_1 + 0x50);
                      uVar4 = InfVal_InfVal_change_0x60000a8(lVar2 + 0x20,0);
                      if (plVar5 != (long *)0x0) {
                        (**(code **)(*plVar5 + 0x558))
                                  (plVar5,uVar4,*(undefined8 *)(*plVar5 + 0x560));
                        plVar5 = *(long **)(param_1 + 0x58);
                        uVar4 = Single_ToString_0x60009f9(lVar2 + 0x40,0);
                        uVar4 = String_Format_0x600029c(*(undefined8 *)puVar1,uVar4,0);
                        if (plVar5 != (long *)0x0) {
                          (**(code **)(*plVar5 + 0x558))
                                    (plVar5,uVar4,*(undefined8 *)(*plVar5 + 0x560));
                          Gun_Info_UI_Buttons_Reload(param_1);
                          lVar2 = Component_get_gameObject_0x6000c83(param_1,0);
                          if (lVar2 != 0) {
                            GameObject_SetActive_0x6000cfe(lVar2,1,0);
                            return;
                          }
                        }
                      }
                    }
                  }
                  break;
                }
                if (*(uint *)(lVar3 + 0x18) <= uVar6) goto LAB_02c6fbf0;
                lVar3 = *(long *)(lVar3 + lVar7 * 8 + 0x20);
                if (lVar3 == 0) break;
                GameObject_SetActive_0x6000cfe(lVar3,(int)param_2 / 5 == uVar6,0);
                lVar3 = *(long *)(param_1 + 0x38);
                lVar7 = lVar7 + 1;
              } while (lVar3 != 0);
            }
          }
        }
      }
    }
  }
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

