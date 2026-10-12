/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b59680, Ghidra VA 02c59680. */

void Raid_manager_Boss_Reload(long param_1)

{
  undefined *puVar1;
  long lVar2;
  undefined8 uStack_60;
  undefined8 uStack_58;
  undefined8 uStack_50;
  undefined8 uStack_48;
  undefined8 uStack_40;
  undefined8 uStack_38;
  undefined8 uStack_30;
  undefined8 uStack_28;
  
  puVar1 = PTR_DAT_05e5d338;
  if ((bRam000000000625c1b8 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e5d338);
    bRam000000000625c1b8 = 1;
  }
  lVar2 = *(long *)puVar1;
  if (*(int *)(lVar2 + 0xe4) == 0) {
    func_0x029f5bd0();
    lVar2 = *(long *)puVar1;
  }
  if (**(char **)(lVar2 + 0xb8) != '\0') {
    lVar2 = *(long *)(param_1 + 0xf0);
    Raid_manager_GetBossHealth(&uStack_40,param_1);
    if (lVar2 == 0) {
                    /* WARNING: Subroutine does not return */
      Throw_NullReference_Wrapper();
    }
    uStack_58 = uStack_38;
    uStack_60 = uStack_40;
    uStack_48 = uStack_28;
    uStack_50 = uStack_30;
    Raid_Boss_Reload(lVar2,&uStack_60);
    Raid_manager_Boss_UI_Reload(param_1);
  }
  return;
}

