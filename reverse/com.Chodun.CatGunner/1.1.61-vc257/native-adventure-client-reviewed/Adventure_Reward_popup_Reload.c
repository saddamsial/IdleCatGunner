/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b35a90, Ghidra VA 02c35a90. */

void Adventure_Reward_popup_Reload
               (long param_1,uint param_2,undefined4 param_3,undefined4 param_4,undefined4 param_5,
               int param_6)

{
  undefined *puVar1;
  int iVar2;
  undefined8 uVar3;
  long *plVar4;
  long lVar5;
  undefined4 uStack_38;
  undefined4 uStack_34;
  
  uStack_38 = param_4;
  uStack_34 = param_3;
  if ((bRam000000000625c06a & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e5dd28);
    bRam000000000625c06a = 1;
  }
  if (*(long *)(param_1 + 0x20) != 0) {
    GameObject_SetActive_0x6000cfe(*(long *)(param_1 + 0x20),0,0);
    if (*(long *)(param_1 + 0x28) != 0) {
      GameObject_SetActive_0x6000cfe(*(long *)(param_1 + 0x28),0,0);
      if (*(long *)(param_1 + 0x30) != 0) {
        GameObject_SetActive_0x6000cfe(*(long *)(param_1 + 0x30),0,0);
        if (*(long *)(param_1 + 0x38) != 0) {
          GameObject_SetActive_0x6000cfe(*(long *)(param_1 + 0x38),0,0);
          if (*(long *)(param_1 + 0x40) != 0) {
            GameObject_SetActive_0x6000cfe(*(long *)(param_1 + 0x40),0,0);
            plVar4 = *(long **)(param_1 + 0x60);
            uVar3 = Int32_ToString_0x600080e(&uStack_38,0);
            if (plVar4 != (long *)0x0) {
              (**(code **)(*plVar4 + 0x558))(plVar4,uVar3,*(undefined8 *)(*plVar4 + 0x560));
              plVar4 = *(long **)(param_1 + 0x68);
              uVar3 = Int32_ToString_0x600080e(&uStack_34,0);
              puVar1 = PTR_DAT_05e5dd28;
              if (plVar4 != (long *)0x0) {
                (**(code **)(*plVar4 + 0x558))(plVar4,uVar3,*(undefined8 *)(*plVar4 + 0x560));
                lVar5 = *(long *)(param_1 + 0x70);
                if (*(int *)(*(long *)puVar1 + 0xe4) == 0) {
                  func_0x029f5bd0();
                }
                uVar3 = Adventure_manager_Core_sprite_return_0x600062e(param_2,0);
                if (lVar5 != 0) {
                  Image_set_sprite_0x600013f(lVar5,uVar3,0);
                  lVar5 = *(long *)(param_1 + 0x80);
                  if (lVar5 != 0) {
                    if (*(uint *)(lVar5 + 0x18) <= param_2) {
                    /* WARNING: Subroutine does not return */
                      Throw_Index_Wrapper();
                    }
                    plVar4 = *(long **)(param_1 + 0x78);
                    if (plVar4 != (long *)0x0) {
                      lVar5 = lVar5 + (long)(int)param_2 * 0x10;
                      uVar3 = (**(code **)(*plVar4 + 0x2a8))
                                        (*(undefined4 *)(lVar5 + 0x20),*(undefined4 *)(lVar5 + 0x24)
                                         ,*(undefined4 *)(lVar5 + 0x28),
                                         *(undefined4 *)(lVar5 + 0x2c),plVar4,
                                         *(undefined8 *)(*plVar4 + 0x2b0));
                      lVar5 = *(long *)(param_1 + 0x48);
                      iVar2 = Adventure_Reward_popup_Need(uVar3,param_5);
                      if (lVar5 != 0) {
                        SlicedFilledImage_set_fillAmount_0x60005d0
                                  ((float)param_6 / (float)iVar2,lVar5,0);
                        Adventure_Reward_popup_UpdateSliderText(param_1,param_5,param_6);
                        lVar5 = Component_get_gameObject_0x6000c83(param_1,0);
                        if (lVar5 != 0) {
                          GameObject_SetActive_0x6000cfe(lVar5,1,0);
                          lVar5 = *(long *)(param_1 + 0x98);
                          if (lVar5 != 0) {
                            MonoBehaviour_StopCoroutine_0x6000d46(param_1,lVar5,0);
                          }
                          uVar3 = Adventure_Reward_popup_PlaySequence
                                            (param_1,param_5,param_6,uStack_38);
                          uVar3 = MonoBehaviour_StartCoroutine_0x6000d43(param_1,uVar3,0);
                          *(undefined8 *)(param_1 + 0x98) = uVar3;
                          Managed_WriteBarrier((long *)(param_1 + 0x98),uVar3);
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
  }
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

