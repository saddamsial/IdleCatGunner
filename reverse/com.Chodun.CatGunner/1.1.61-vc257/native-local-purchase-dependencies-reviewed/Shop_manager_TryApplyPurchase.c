/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b977fc, Ghidra VA 02c977fc. */

uint Shop_manager_TryApplyPurchase(undefined8 param_1,long param_2,undefined8 param_3)

{
  undefined *puVar1;
  undefined *puVar2;
  uint uVar3;
  ulong uVar4;
  long lVar5;
  undefined8 uVar6;
  undefined8 uStack_48;
  undefined4 uStack_38;
  
  puVar1 = PTR_DAT_05e64298;
  if ((bRam000000000625c437 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e5d4c0);
    func_0x029f5a50(PTR_DAT_05e5d5b0);
    func_0x029f5a50(PTR_DAT_05e58f08);
    func_0x029f5a50(PTR_DAT_05e64428);
    func_0x029f5a50(PTR_DAT_05e591c0);
    func_0x029f5a50(PTR_DAT_05e64430);
    func_0x029f5a50(PTR_DAT_05e641c8);
    func_0x029f5a50(PTR_DAT_05e641d8);
    func_0x029f5a50(PTR_DAT_05e641e0);
    func_0x029f5a50(PTR_DAT_05e64208);
    func_0x029f5a50(PTR_DAT_05e63ec0);
    func_0x029f5a50(PTR_DAT_05e64438);
    func_0x029f5a50(PTR_DAT_05e64440);
    func_0x029f5a50(PTR_DAT_05e64248);
    func_0x029f5a50(PTR_DAT_05e5e160);
    func_0x029f5a50(PTR_DAT_05e64268);
    func_0x029f5a50(PTR_DAT_05e64288);
    func_0x029f5a50(PTR_DAT_05e642f8);
    func_0x029f5a50(PTR_DAT_05e64298);
    func_0x029f5a50(PTR_DAT_05e5e170);
    func_0x029f5a50(PTR_DAT_05e642a0);
    func_0x029f5a50(PTR_DAT_05e64448);
    func_0x029f5a50(PTR_DAT_05e642c0);
    func_0x029f5a50(PTR_DAT_05e642d0);
    func_0x029f5a50(PTR_DAT_05e641b0);
    bRam000000000625c437 = 1;
  }
  uStack_38 = 0;
  uVar4 = String_op_Equality_0x600025a(param_2,*(undefined8 *)puVar1,0);
  puVar1 = PTR_DAT_05e64248;
  if ((((((uVar4 & 1) == 0) &&
        (uVar4 = String_op_Equality_0x600025a(param_2,*(undefined8 *)PTR_DAT_05e642c0,0),
        (uVar4 & 1) == 0)) &&
       (uVar4 = String_op_Equality_0x600025a(param_2,*(undefined8 *)PTR_DAT_05e641e0,0),
       (uVar4 & 1) == 0)) &&
      ((uVar4 = String_op_Equality_0x600025a(param_2,*(undefined8 *)puVar1,0), (uVar4 & 1) == 0 &&
       (uVar4 = String_op_Equality_0x600025a(param_2,*(undefined8 *)PTR_DAT_05e642a0,0),
       (uVar4 & 1) == 0)))) &&
     (uVar4 = String_op_Equality_0x600025a(param_2,*(undefined8 *)PTR_DAT_05e642d0,0),
     (uVar4 & 1) == 0)) {
    uVar4 = String_op_Equality_0x600025a(param_2,*(undefined8 *)PTR_DAT_05e63ec0,0);
    if ((uVar4 & 1) != 0) {
      uVar3 = Shop_manager_ApplyRebirthSingle();
      goto LAB_02c97b04;
    }
    uVar4 = String_op_Equality_0x600025a(param_2,*(undefined8 *)PTR_DAT_05e64288,0);
    if ((uVar4 & 1) != 0) {
      uVar3 = Shop_manager_ApplyRaidTicket_0x6000d8e();
      goto LAB_02c97b04;
    }
    uVar4 = String_op_Equality_0x600025a(param_2,*(undefined8 *)PTR_DAT_05e641c8,0);
    if ((uVar4 & 1) == 0) {
      uVar4 = String_op_Equality_0x600025a(param_2,*(undefined8 *)PTR_DAT_05e64208,0);
      if ((uVar4 & 1) == 0) {
        uVar4 = String_op_Equality_0x600025a(param_2,*(undefined8 *)PTR_DAT_05e5e170,0);
        if (((uVar4 & 1) == 0) &&
           (uVar4 = String_op_Equality_0x600025a(param_2,*(undefined8 *)PTR_DAT_05e5e160,0),
           (uVar4 & 1) == 0)) {
          uStack_48 = (ulong)uStack_48._4_4_ << 0x20;
          uVar4 = Shop_manager_TryGetCoreTypeFromId_0x6000d8a(uVar4,param_2,&uStack_48);
          if ((uVar4 & 1) == 0) {
            if (param_2 == 0) {
                    /* WARNING: Subroutine does not return */
              Throw_NullReference_Wrapper();
            }
            uVar4 = String_StartsWith_0x600025e(param_2,*(undefined8 *)PTR_DAT_05e64438,0);
            if ((uVar4 & 1) == 0) {
              uVar4 = String_StartsWith_0x600025e(param_2,*(undefined8 *)PTR_DAT_05e641b0,0);
              if ((uVar4 & 1) == 0) {
                uVar4 = String_StartsWith_0x600025e(param_2,*(undefined8 *)PTR_DAT_05e642f8,0);
                if ((uVar4 & 1) == 0) {
                  uVar4 = String_StartsWith_0x600025e(param_2,*(undefined8 *)PTR_DAT_05e64448,0);
                  if ((uVar4 & 1) == 0) {
                    uVar4 = String_StartsWith_0x600025e(param_2,*(undefined8 *)PTR_DAT_05e64440,0);
                    if ((uVar4 & 1) == 0) {
                      uVar4 = String_op_Equality_0x600025a
                                        (param_2,*(undefined8 *)PTR_DAT_05e641d8,0);
                      if ((uVar4 & 1) == 0) {
                        uVar4 = String_op_Equality_0x600025a
                                          (param_2,*(undefined8 *)PTR_DAT_05e64268,0);
                        if ((uVar4 & 1) == 0) {
                          uStack_48 = param_3;
                          uVar6 = func_0x029f5bd8(*(undefined8 *)PTR_DAT_05e64428,&uStack_48);
                          uVar6 = String_Format_0x600029d
                                            (*(undefined8 *)PTR_DAT_05e64430,param_2,uVar6,0);
                          if (*(int *)(*(long *)PTR_DAT_05e58f08 + 0xe4) == 0) {
                            func_0x029f5bd0();
                          }
                          Debug_LogError_0x6000340(uVar6,0);
                          uVar3 = 0;
                        }
                        else {
                          uVar3 = Shop_manager_ApplyRaidHelper_0x6000dcc();
                        }
                      }
                      else {
                        uVar3 = Shop_manager_ApplyRaidMissionTicket_0x6000dca();
                      }
                    }
                    else {
                      uVar3 = Shop_manager_ApplyStarGemPigReward_0x6000dc8(uVar4,param_2);
                    }
                  }
                  else {
                    uVar3 = Shop_manager_ApplyPlusPackReward_0x6000d70(uVar4,param_2);
                  }
                }
                else {
                  uVar3 = Shop_manager_ApplyDailyGunReward_0x6000d6e(uVar4,param_2);
                }
              }
              else {
                uVar3 = Shop_manager_ApplyStepUpReward(uVar4,param_2);
              }
            }
            else {
              uVar3 = Shop_manager_ApplyDiaReward_0x6000daa(param_1,param_2);
            }
          }
          else {
            uVar3 = Shop_manager_ApplyCoreReward_0x6000d8c(uVar4,param_2);
          }
          goto LAB_02c97b04;
        }
        Shop_manager_ApplyVipPass_0x6000dab();
      }
      else {
        Shop_manager_ApplyLuxuryPass_0x6000dac();
      }
    }
    else {
      Shop_manager_ApplyLuxuryUpgrade_0x6000dad();
    }
  }
  else {
    Shop_manager_ApplyNonConsumable_0x6000da9(param_1,param_2);
    SaveSystem_Save_0x600048a(0);
    Shop_manager_UI_Reload_0x6000d74(param_1);
    uVar4 = String_op_Equality_0x600025a(param_2,*(undefined8 *)puVar1,0);
    puVar2 = PTR_DAT_05e5d5b0;
    puVar1 = PTR_DAT_05e591c0;
    if ((uVar4 & 1) != 0) {
      uVar6 = *(undefined8 *)(*(long *)(*(long *)PTR_DAT_05e5d5b0 + 0xb8) + 8);
      if (*(int *)(*(long *)PTR_DAT_05e591c0 + 0xe4) == 0) {
        func_0x029f5bd0();
      }
      uVar4 = Object_op_Inequality_0x6000ded(uVar6,0,0);
      if ((uVar4 & 1) != 0) {
        lVar5 = *(long *)(*(long *)(*(long *)puVar2 + 0xb8) + 8);
        if (lVar5 == 0) {
                    /* WARNING: Subroutine does not return */
          Throw_NullReference_Wrapper();
        }
        Cat_manager_Balance_Reload_0x6000779(lVar5,0);
      }
      puVar2 = PTR_DAT_05e5d4c0;
      lVar5 = *(long *)PTR_DAT_05e5d4c0;
      if (*(int *)(lVar5 + 0xe4) == 0) {
        func_0x029f5bd0();
        lVar5 = *(long *)puVar2;
      }
      uVar6 = **(undefined8 **)(lVar5 + 0xb8);
      if (*(int *)(*(long *)puVar1 + 0xe4) == 0) {
        func_0x029f5bd0(*(long *)puVar1);
      }
      uVar4 = Object_op_Inequality_0x6000ded(uVar6,0,0);
      if ((uVar4 & 1) != 0) {
        lVar5 = *(long *)puVar2;
        if (*(int *)(lVar5 + 0xe4) == 0) {
          func_0x029f5bd0();
          lVar5 = *(long *)puVar2;
        }
        if (**(long **)(lVar5 + 0xb8) == 0) {
                    /* WARNING: Subroutine does not return */
          Throw_NullReference_Wrapper();
        }
        Buff_manager_Btn_UI_Reload_0x6000714(**(long **)(lVar5 + 0xb8),0);
      }
    }
  }
  uVar3 = 1;
LAB_02c97b04:
  return uVar3 & 1;
}

