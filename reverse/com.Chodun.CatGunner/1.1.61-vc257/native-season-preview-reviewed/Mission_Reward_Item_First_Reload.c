/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b04180, Ghidra VA 02c04180. */

void Mission_Reward_Item_First_Reload
               (long param_1,undefined4 param_2,undefined4 param_3,int param_4,uint param_5)

{
  undefined8 uVar1;
  long lVar2;
  long *plVar3;
  uint uVar4;
  long lVar5;
  uint uStack_34;
  
  uStack_34 = param_5;
  if ((bRam000000000625be5d & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e5dd40);
    bRam000000000625be5d = 1;
  }
  *(undefined4 *)(param_1 + 0x20) = param_2;
  *(undefined4 *)(param_1 + 0x24) = param_3;
  if (*(long *)(param_1 + 0x28) != 0) {
    GameObject_SetActive_0x6000cfe(*(long *)(param_1 + 0x28),param_4 == 0,0);
    if (*(long *)(param_1 + 0x30) != 0) {
      GameObject_SetActive_0x6000cfe(*(long *)(param_1 + 0x30),param_4 == 1,0);
      if (*(long *)(param_1 + 0x38) != 0) {
        GameObject_SetActive_0x6000cfe(*(long *)(param_1 + 0x38),param_4 == 2,0);
        if (param_4 == 0) {
          plVar3 = *(long **)(param_1 + 0x40);
        }
        else {
          if (param_4 != 2) {
            if ((**(long **)(*(long *)PTR_DAT_05e5dd40 + 0xb8) != 0) &&
               (lVar2 = *(long *)(**(long **)(*(long *)PTR_DAT_05e5dd40 + 0xb8) + 0x48), lVar2 != 0)
               ) {
              if (*(uint *)(lVar2 + 0x18) <= param_5) {
LAB_02c04390:
                    /* WARNING: Subroutine does not return */
                Throw_Index_Wrapper();
              }
              if (*(long *)(param_1 + 0x50) != 0) {
                lVar5 = *(long *)(param_1 + 0x58);
                uVar1 = *(undefined8 *)(lVar2 + (long)(int)param_5 * 8 + 0x20);
                Image_set_sprite_0x600013f(*(long *)(param_1 + 0x50),uVar1,0);
                if (lVar5 != 0) {
                  Image_set_sprite_0x600013f(lVar5,uVar1,0);
                  plVar3 = *(long **)(param_1 + 0x60);
                  Gun_manager_Degree_Color_return_0x6000a7b((int)param_5 / 5,0);
                  if (plVar3 != (long *)0x0) {
                    (**(code **)(*plVar3 + 0x2a8))(plVar3,*(undefined8 *)(*plVar3 + 0x2b0));
                    lVar2 = *(long *)(param_1 + 0x68);
                    if (lVar2 != 0) {
                      lVar5 = 0;
                      do {
                        uVar4 = (uint)lVar5;
                        if ((int)*(uint *)(lVar2 + 0x18) <= (int)uVar4) {
                          plVar3 = *(long **)(param_1 + 0x70);
                          uVar1 = Gun_manager_Gun_Type_str_return_0x6000a7d(param_5,0);
                          if (plVar3 != (long *)0x0) {
                    /* WARNING: Could not recover jumptable at 0x02c0438c. Too many branches */
                    /* WARNING: Treating indirect jump as call */
                            (**(code **)(*plVar3 + 0x558))
                                      (plVar3,uVar1,*(undefined8 *)(*plVar3 + 0x560));
                            return;
                          }
                          break;
                        }
                        if (*(uint *)(lVar2 + 0x18) <= uVar4) goto LAB_02c04390;
                        lVar2 = *(long *)(lVar2 + lVar5 * 8 + 0x20);
                        if (lVar2 == 0) break;
                        GameObject_SetActive_0x6000cfe(lVar2,(int)param_5 / 5 == uVar4,0);
                        lVar2 = *(long *)(param_1 + 0x68);
                        lVar5 = lVar5 + 1;
                      } while (lVar2 != 0);
                    }
                  }
                }
              }
            }
            goto LAB_02c04350;
          }
          plVar3 = *(long **)(param_1 + 0x48);
        }
        uVar1 = Int32_ToString_0x600080e(&uStack_34,0);
        if (plVar3 != (long *)0x0) {
          (**(code **)(*plVar3 + 0x558))(plVar3,uVar1,*(undefined8 *)(*plVar3 + 0x560));
          return;
        }
      }
    }
  }
LAB_02c04350:
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

