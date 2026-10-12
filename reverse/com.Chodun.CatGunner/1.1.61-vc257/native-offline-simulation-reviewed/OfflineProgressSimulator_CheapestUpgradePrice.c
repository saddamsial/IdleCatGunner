/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b09ac0, Ghidra VA 02c09ac0. */

void OfflineProgressSimulator_CheapestUpgradePrice
               (undefined8 *param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4)

{
  undefined *puVar1;
  undefined8 uStack_a0;
  undefined8 uStack_98;
  undefined8 uStack_90;
  undefined8 uStack_88;
  ulong uStack_70;
  undefined8 uStack_68;
  undefined8 uStack_60;
  undefined8 uStack_58;
  undefined8 uStack_50;
  
  puVar1 = PTR_DAT_05e62040;
  if ((bRam000000000625be8d & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e62040);
    bRam000000000625be8d = 1;
  }
  uStack_50 = 0;
  uStack_68 = 0;
  uStack_70 = 0;
  uStack_58 = 0;
  uStack_60 = 0;
  InfVal_op_Implicit_0x600003f(&uStack_a0,0,0);
  uStack_60 = uStack_98;
  uStack_68 = uStack_a0;
  uStack_50 = uStack_88;
  uStack_58 = uStack_90;
  Managed_WriteBarrier((ulong)&uStack_70 | 8,0);
  uStack_70 = uStack_70 & 0xffffffffffffff00;
  if (*(int *)(*(long *)puVar1 + 0xe4) == 0) {
    func_0x029f5bd0();
  }
  OfflineProgressSimulator__CheapestUpgradePrice_g__Check_32_0(param_2,&uStack_70);
  OfflineProgressSimulator__CheapestUpgradePrice_g__Check_32_0(param_3,&uStack_70);
  OfflineProgressSimulator__CheapestUpgradePrice_g__Check_32_0(param_4,&uStack_70);
  if ((uStack_70 & 1) == 0) {
    InfVal_op_Implicit_0x600003f(&uStack_a0,0,0);
    uStack_68 = uStack_a0;
    uStack_60 = uStack_98;
    uStack_58 = uStack_90;
    uStack_50 = uStack_88;
  }
  param_1[1] = uStack_60;
  *param_1 = uStack_68;
  param_1[3] = uStack_50;
  param_1[2] = uStack_58;
  return;
}

