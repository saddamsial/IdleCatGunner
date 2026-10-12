/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b342fc, Ghidra VA 02c342fc. */

void Adventure_Exit_Panel_Reload(long param_1,uint param_2,undefined4 param_3)

{
  undefined *puVar1;
  int iVar2;
  long lVar3;
  long lVar4;
  undefined8 uVar5;
  long *plVar6;
  int iStack_38;
  undefined4 uStack_34;
  
  puVar1 = PTR_DAT_05e5dd28;
  if ((bRam000000000625c053 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e5dd28);
    func_0x029f5a50(PTR_DAT_05e62fe8);
    bRam000000000625c053 = 1;
  }
  lVar3 = *(long *)puVar1;
  iStack_38 = 0;
  uStack_34 = 0;
  *(uint *)(param_1 + 0x20) = param_2;
  *(undefined4 *)(param_1 + 0x24) = param_3;
  if (*(int *)(lVar3 + 0xe4) == 0) {
    func_0x029f5bd0();
    lVar3 = *(long *)puVar1;
  }
  lVar3 = *(long *)(*(long *)(lVar3 + 0xb8) + 0x10);
  if (lVar3 != 0) {
    lVar4 = Adventure_manager_Dispatched_Grades_return(lVar3,param_2,param_3,0);
    uStack_34 = Adventure_manager_Adventure_Reward_Core_return(lVar3,lVar4,param_3,0);
    iVar2 = Adventure_manager_Adventure_Reward_Exp_return(lVar3,param_3,0);
    if (lVar4 != 0) {
      plVar6 = *(long **)(param_1 + 0x28);
      iStack_38 = *(int *)(lVar4 + 0x18) * iVar2;
      uVar5 = Int32_ToString_0x600080e(&iStack_38,0);
      if (plVar6 != (long *)0x0) {
        (**(code **)(*plVar6 + 0x558))(plVar6,uVar5,*(undefined8 *)(*plVar6 + 0x560));
        plVar6 = *(long **)(param_1 + 0x30);
        uVar5 = Int32_ToString_0x600080e(&uStack_34,0);
        if (plVar6 != (long *)0x0) {
          (**(code **)(*plVar6 + 0x558))(plVar6,uVar5,*(undefined8 *)(*plVar6 + 0x560));
          lVar3 = *(long *)(param_1 + 0x38);
          uVar5 = Adventure_manager_Core_sprite_return_0x600062e(param_2,0);
          if (lVar3 != 0) {
            Image_set_sprite_0x600013f(lVar3,uVar5,0);
            lVar3 = *(long *)(param_1 + 0x48);
            if (lVar3 != 0) {
              if (*(uint *)(lVar3 + 0x18) <= param_2) {
                    /* WARNING: Subroutine does not return */
                Throw_Index_Wrapper();
              }
              plVar6 = *(long **)(param_1 + 0x40);
              if (plVar6 != (long *)0x0) {
                lVar3 = lVar3 + (long)(int)param_2 * 0x10;
                (**(code **)(*plVar6 + 0x2a8))
                          (*(undefined4 *)(lVar3 + 0x20),*(undefined4 *)(lVar3 + 0x24),
                           *(undefined4 *)(lVar3 + 0x28),*(undefined4 *)(lVar3 + 0x2c),plVar6,
                           *(undefined8 *)(*plVar6 + 0x2b0));
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
    }
  }
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

