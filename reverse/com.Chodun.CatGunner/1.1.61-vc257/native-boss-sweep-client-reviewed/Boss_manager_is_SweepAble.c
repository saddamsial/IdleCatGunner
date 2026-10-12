/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b46ef8, Ghidra VA 02c46ef8. */

uint Boss_manager_is_SweepAble(long param_1)

{
  undefined *puVar1;
  uint uVar2;
  undefined8 uStack_80;
  undefined8 uStack_78;
  undefined8 uStack_70;
  undefined8 uStack_68;
  undefined8 uStack_60;
  undefined8 uStack_58;
  undefined8 uStack_50;
  undefined8 uStack_48;
  undefined8 uStack_40;
  undefined8 uStack_38;
  undefined8 uStack_30;
  undefined8 uStack_28;
  
  puVar1 = PTR_DAT_05e5d338;
  if ((bRam000000000625c0e7 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e5d338);
    bRam000000000625c0e7 = 1;
  }
  uStack_58 = 0;
  uStack_60 = 0;
  uStack_48 = 0;
  uStack_50 = 0;
  uStack_38 = 0;
  uStack_40 = 0;
  uStack_28 = 0;
  uStack_30 = 0;
  if (*(int *)(*(long *)puVar1 + 0xe4) == 0) {
    func_0x029f5bd0();
  }
  Gamemanager_Power_Boss_return(&uStack_80,0);
  uStack_38 = uStack_78;
  uStack_40 = uStack_80;
  uStack_28 = uStack_68;
  uStack_30 = uStack_70;
  Boss_manager_SweepRequiredPower_return(&uStack_60,param_1,*(undefined4 *)(param_1 + 0x20));
  uVar2 = InfVal_op_GreaterThanOrEqual_0x6000081(&uStack_40,&uStack_60,0);
  return uVar2 & 1;
}

