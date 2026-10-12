/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b12ff4, Ghidra VA 02c12ff4. */

void LoadData_InitNewGame(void)

{
  undefined *puVar1;
  undefined *puVar2;
  undefined *puVar3;
  undefined *puVar4;
  long lVar5;
  ulong uVar6;
  undefined8 uVar7;
  
  puVar1 = PTR_DAT_05e5d3c0;
  if ((bRam000000000625bee7 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e5d540);
    func_0x029f5a50(PTR_DAT_05e5e4f8);
    func_0x029f5a50(PTR_DAT_05e5dfa0);
    func_0x029f5a50(PTR_DAT_05e5dd40);
    func_0x029f5a50(PTR_DAT_05e591c0);
    func_0x029f5a50(PTR_DAT_05e62650);
    func_0x029f5a50(PTR_DAT_05e5e068);
    func_0x029f5a50(PTR_DAT_05e5d498);
    func_0x029f5a50(PTR_DAT_05e62648);
    func_0x029f5a50(PTR_DAT_05e5d6a8);
    func_0x029f5a50(PTR_DAT_05e5d920);
    func_0x029f5a50(PTR_DAT_05e5e3e0);
    func_0x029f5a50(PTR_DAT_05e5d3c0);
    func_0x029f5a50(PTR_DAT_05e5dc20);
    bRam000000000625bee7 = 1;
  }
  puVar2 = PTR_DAT_05e5d6a8;
  if (*(int *)(*(long *)puVar1 + 0xe4) == 0) {
    func_0x029f5bd0();
  }
  puVar1 = PTR_DAT_05e5dc20;
  Time_manager_Init_0x6000568(0);
  Time_manager_MarkSaveLoaded_0x6000554(0);
  if (*(int *)(*(long *)puVar2 + 0xe4) == 0) {
    func_0x029f5bd0();
  }
  ServerConfig_manager_InitNewUser_0x60004c4(0);
  lVar5 = *(long *)puVar1;
  if (*(int *)(lVar5 + 0xe4) == 0) {
    func_0x029f5bd0();
    lVar5 = *(long *)puVar1;
  }
  puVar1 = PTR_DAT_05e5d498;
  lVar5 = *(long *)(*(long *)(lVar5 + 0xb8) + 0x10);
  if (lVar5 != 0) {
    Tree_manager_Game_Start_0x6000eff(lVar5,0);
    puVar3 = PTR_DAT_05e5e4f8;
    if (**(long **)(*(long *)puVar1 + 0xb8) != 0) {
      Rank_manager_Login_0x6000412();
      puVar4 = PTR_DAT_05e5e3e0;
      puVar1 = PTR_DAT_05e591c0;
      if (**(long **)(*(long *)puVar3 + 0xb8) != 0) {
        DailyCheck_NewUser_Reload_0x60002c2(**(long **)(*(long *)puVar3 + 0xb8),0);
        SaveSystem_AllowSave_0x6000487();
        lVar5 = *(long *)puVar4;
        if (*(int *)(lVar5 + 0xe4) == 0) {
          func_0x029f5bd0();
          lVar5 = *(long *)puVar4;
        }
        uVar7 = **(undefined8 **)(lVar5 + 0xb8);
        if (*(int *)(*(long *)puVar1 + 0xe4) == 0) {
          func_0x029f5bd0(*(long *)puVar1);
        }
        uVar6 = Object_op_Inequality_0x6000ded(uVar7,0,0);
        if ((uVar6 & 1) != 0) {
          lVar5 = *(long *)puVar4;
          if (*(int *)(lVar5 + 0xe4) == 0) {
            func_0x029f5bd0();
            lVar5 = *(long *)puVar4;
          }
          if (**(long **)(lVar5 + 0xb8) == 0) goto LAB_02c13418;
          StarGem_Pig_LoadFromSaveData_0x6000dfa(**(long **)(lVar5 + 0xb8),0,0);
        }
        puVar3 = PTR_DAT_05e5e068;
        uVar7 = **(undefined8 **)(*(long *)PTR_DAT_05e5e068 + 0xb8);
        if (*(int *)(*(long *)puVar1 + 0xe4) == 0) {
          func_0x029f5bd0();
        }
        uVar6 = Object_op_Inequality_0x6000ded(uVar7,0,0);
        if ((uVar6 & 1) != 0) {
          if (**(long **)(*(long *)puVar3 + 0xb8) == 0) goto LAB_02c13418;
          Raid_Mission_manager_LoadFromSaveData_0x60008cf(**(long **)(*(long *)puVar3 + 0xb8),0,0);
        }
        puVar3 = PTR_DAT_05e62648;
        if (**(long **)(*(long *)PTR_DAT_05e5dd40 + 0xb8) != 0) {
          Gun_manager_Pause_Array_Validate_0x6000a4a
                    (**(long **)(*(long *)PTR_DAT_05e5dd40 + 0xb8),0);
          uVar7 = **(undefined8 **)(*(long *)puVar3 + 0xb8);
          if (*(int *)(*(long *)puVar1 + 0xe4) == 0) {
            func_0x029f5bd0();
          }
          uVar6 = Object_op_Inequality_0x6000ded(uVar7,0,0);
          if ((uVar6 & 1) != 0) {
            lVar5 = **(long **)(*(long *)puVar3 + 0xb8);
            if (lVar5 == 0) goto LAB_02c13418;
            Safe_manager_LoadFromSaveData_0x6000ac4(lVar5,0,0);
          }
          puVar3 = PTR_DAT_05e5d920;
          if (*(int *)(*(long *)PTR_DAT_05e5d920 + 0xe4) == 0) {
            func_0x029f5bd0();
          }
          if (cRam000000000625b960 == '\0') {
            func_0x029f5a50(PTR_DAT_05e5d920);
            cRam000000000625b960 = '\x01';
          }
          lVar5 = *(long *)puVar3;
          if (*(int *)(lVar5 + 0xe4) == 0) {
            func_0x029f5bd0();
            lVar5 = *(long *)puVar3;
          }
          puVar3 = PTR_DAT_05e5dfa0;
          if (**(long **)(lVar5 + 0xb8) != 0) {
            Shop_manager_MarkSaveLoaded_0x6000d9d(**(long **)(lVar5 + 0xb8),0);
            uVar7 = **(undefined8 **)(*(long *)puVar3 + 0xb8);
            if (*(int *)(*(long *)puVar1 + 0xe4) == 0) {
              func_0x029f5bd0();
            }
            uVar6 = Object_op_Inequality_0x6000ded(uVar7,0,0);
            if ((uVar6 & 1) != 0) {
              lVar5 = **(long **)(*(long *)puVar3 + 0xb8);
              if (lVar5 == 0) goto LAB_02c13418;
              FreeCash_manager_LoadFromSaveData_0x600030d(lVar5,0,0);
            }
            puVar3 = PTR_DAT_05e62650;
            uVar7 = **(undefined8 **)(*(long *)PTR_DAT_05e62650 + 0xb8);
            if (*(int *)(*(long *)puVar1 + 0xe4) == 0) {
              func_0x029f5bd0();
            }
            uVar6 = Object_op_Inequality_0x6000ded(uVar7,0,0);
            if ((uVar6 & 1) != 0) {
              if (**(long **)(*(long *)puVar3 + 0xb8) == 0) goto LAB_02c13418;
              OfferWall_manager_OnSaveLoaded_0x6000d1c(**(long **)(*(long *)puVar3 + 0xb8),0);
            }
            lVar5 = *(long *)puVar2;
            if (*(int *)(lVar5 + 0xe4) == 0) {
              func_0x029f5bd0();
              lVar5 = *(long *)puVar2;
            }
            puVar1 = PTR_DAT_05e5d540;
            if (**(long **)(lVar5 + 0xb8) != 0) {
              ServerConfig_manager_OnSaveLoaded_0x60004cb(**(long **)(lVar5 + 0xb8),0);
            }
            if (*(int *)(*(long *)puVar1 + 0xe4) == 0) {
              func_0x029f5bd0();
            }
            AppsFlyerInit_SendLog_Launch_0x6000211(0);
            return;
          }
        }
      }
    }
  }
LAB_02c13418:
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

