/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b888a8, Ghidra VA 02c888a8. */

uint Rebirth_Upgrade_Info_UpgradeAble_return(long param_1)

{
  undefined *puVar1;
  int iVar2;
  uint uVar3;
  long lVar4;
  undefined8 uVar5;
  undefined8 uStack_40;
  undefined8 uStack_38;
  undefined8 uStack_30;
  undefined8 uStack_28;
  
  if ((bRam000000000625c38d & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e5d338);
    bRam000000000625c38d = 1;
  }
  uStack_38 = 0;
  uStack_40 = 0;
  uStack_28 = 0;
  uStack_30 = 0;
  iVar2 = ObscuredInt_op_Implicit_0x6000412
                    (*(undefined8 *)(param_1 + 0x18),*(undefined8 *)(param_1 + 0x20),0);
  puVar1 = PTR_DAT_05e5d338;
  if (iVar2 < *(int *)(param_1 + 0x28)) {
    Rebirth_Upgrade_Info_Price_return(&uStack_40,param_1);
    lVar4 = *(long *)puVar1;
    if (*(int *)(lVar4 + 0xe4) == 0) {
      func_0x029f5bd0();
      lVar4 = *(long *)puVar1;
    }
    uVar3 = InfVal_op_GreaterThan_0x600007f(&uStack_40,*(long *)(lVar4 + 0xb8) + 0x70,0);
    uVar3 = uVar3 ^ 1;
  }
  else {
    uVar5 = Alarm_get_MaxLv_0x60012ef(0);
    UI_manager_Alert_0x6000602(uVar5,0);
    uVar3 = 0;
  }
  return uVar3 & 1;
}

