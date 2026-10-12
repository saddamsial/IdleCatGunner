/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b5b898, Ghidra VA 02c5b898. */

void Raid_Start_UI_Reload(long param_1)

{
  undefined *puVar1;
  undefined *puVar2;
  long lVar3;
  undefined8 uVar4;
  undefined8 uVar5;
  long *plVar6;
  undefined4 uStack_24;
  
  puVar2 = PTR_DAT_05e5e070;
  if ((bRam000000000625c1df & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e5e528);
    func_0x029f5a50(PTR_DAT_05e5e070);
    func_0x029f5a50(PTR_DAT_05e625c0);
    func_0x029f5a50(PTR_DAT_05e63790);
    bRam000000000625c1df = 1;
  }
  lVar3 = *(long *)puVar2;
  if (*(int *)(lVar3 + 0xe4) == 0) {
    func_0x029f5bd0();
    lVar3 = *(long *)puVar2;
  }
  puVar2 = PTR_DAT_05e625c0;
  lVar3 = **(long **)(lVar3 + 0xb8);
  if (lVar3 != 0) {
    Raid_manager_Season_Check_0x600090a(lVar3,0);
    puVar1 = PTR_DAT_05e58a10;
    uStack_24 = *(undefined4 *)(lVar3 + 0x80);
    plVar6 = *(long **)(param_1 + 0x20);
    *(undefined4 *)(param_1 + 0x84) = *(undefined4 *)(lVar3 + 0x78);
    uVar4 = func_0x029f5bd8(*(undefined8 *)(puVar1 + 0x48),&uStack_24);
    uVar4 = String_Format_0x600029c(*(undefined8 *)puVar2,uVar4,0);
    puVar1 = PTR_DAT_05e63790;
    puVar2 = PTR_DAT_05e5e528;
    if (plVar6 != (long *)0x0) {
      (**(code **)(*plVar6 + 0x558))(plVar6,uVar4,*(undefined8 *)(*plVar6 + 0x560));
      Raid_Start_UI_Reload_Boss(param_1);
      Raid_Start_UI_Reload_Entry(param_1);
      Raid_Start_UI_Reload_Slots(param_1);
      Raid_Start_UI_Reload_Rank_0x6000968(param_1);
      Raid_Start_UI_RemainTime_Reload(param_1);
      Raid_manager_Buff_GunType_Now(0);
      uVar4 = Gun_manager_Gun_Type_str_return_0x6000a7c();
      plVar6 = *(long **)(param_1 + 0x60);
      if (*(int *)(*(long *)puVar2 + 0xe4) == 0) {
        func_0x029f5bd0(*(long *)puVar2);
      }
      uVar5 = LocalizationManager_GetTranslation_0x60011b3(*(undefined8 *)puVar1,1,0,1,0,0,0,1,0);
      uVar4 = String_Format_0x600029c(uVar5,uVar4,0);
      if (plVar6 != (long *)0x0) {
        (**(code **)(*plVar6 + 0x558))(plVar6,uVar4,*(undefined8 *)(*plVar6 + 0x560));
        return;
      }
    }
  }
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

