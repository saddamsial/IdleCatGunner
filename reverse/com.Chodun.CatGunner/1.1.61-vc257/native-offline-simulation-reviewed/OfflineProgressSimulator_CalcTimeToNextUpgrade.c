/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b0987c, Ghidra VA 02c0987c. */

/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */

float OfflineProgressSimulator_CalcTimeToNextUpgrade
                (undefined8 param_1,undefined8 param_2,undefined4 param_3,undefined4 param_4,
                undefined4 param_5)

{
  ulong uVar1;
  undefined8 uVar2;
  double dVar3;
  undefined8 uStack_d0;
  undefined8 uStack_c8;
  undefined8 uStack_c0;
  undefined8 uStack_b8;
  undefined4 uStack_a8;
  undefined8 uStack_a0;
  undefined8 uStack_98;
  undefined8 uStack_90;
  undefined8 uStack_88;
  undefined8 uStack_80;
  undefined8 uStack_78;
  undefined8 uStack_70;
  undefined8 uStack_68;
  undefined8 uStack_60;
  undefined8 uStack_58;
  undefined8 uStack_50;
  undefined8 uStack_48;
  
  if ((bRam000000000625be82 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e59000);
    func_0x029f5a50(PTR_DAT_05e62040);
    bRam000000000625be82 = 1;
  }
  uStack_a8 = 0;
  uStack_98 = 0;
  uStack_a0 = 0;
  uStack_88 = 0;
  uStack_90 = 0;
  uStack_78 = 0;
  uStack_80 = 0;
  uStack_68 = 0;
  uStack_70 = 0;
  uStack_58 = 0;
  uStack_60 = 0;
  uStack_48 = 0;
  uStack_50 = 0;
  InfVal_op_Implicit_0x600003f(&uStack_d0,0,0);
  uStack_78 = uStack_c8;
  uStack_80 = uStack_d0;
  uStack_68 = uStack_b8;
  uStack_70 = uStack_c0;
  uVar1 = InfVal_op_LessThanOrEqual_0x6000080(param_2,&uStack_80,0);
  if ((uVar1 & 1) == 0) {
    if (*(int *)(*(long *)PTR_DAT_05e62040 + 0xe4) == 0) {
      func_0x029f5bd0();
    }
    OfflineProgressSimulator_CheapestUpgradePrice(&uStack_60,param_3,param_4,param_5);
    InfVal_op_Implicit_0x600003f(&uStack_d0,0,0);
    uStack_78 = uStack_c8;
    uStack_80 = uStack_d0;
    uStack_68 = uStack_b8;
    uStack_70 = uStack_c0;
    uVar1 = InfVal_op_LessThanOrEqual_0x6000080(&uStack_60,&uStack_80,0);
    if ((uVar1 & 1) == 0) {
      uVar1 = InfVal_op_GreaterThanOrEqual_0x6000081(param_1,&uStack_60,0);
      if ((uVar1 & 1) != 0) {
        return 0.0;
      }
      InfVal_op_Subtraction_0x6000073(&uStack_d0,0,&uStack_60,param_1,0);
      uStack_78 = uStack_c8;
      uStack_80 = uStack_d0;
      uStack_68 = uStack_b8;
      uStack_70 = uStack_c0;
      InfVal_op_Division_0x6000075(&uStack_d0,&uStack_80,param_2,0);
      uStack_98 = uStack_c8;
      uStack_a0 = uStack_d0;
      uStack_88 = uStack_b8;
      uStack_90 = uStack_c0;
      uVar2 = InfVal_op_Explicit_0x600005b(&uStack_a0,0);
      if (*(int *)(*(long *)PTR_DAT_05e59000 + 0xe4) == 0) {
        func_0x029f5bd0();
      }
      dVar3 = (double)Math_Min_0x600088d(uVar2,_UNK_011705a0,0);
      return (float)dVar3;
    }
  }
  return INFINITY;
}

