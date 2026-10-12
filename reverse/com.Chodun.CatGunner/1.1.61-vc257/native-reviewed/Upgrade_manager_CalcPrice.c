/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2bb2924, Ghidra VA 02cb2924. */

/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */

void Upgrade_manager_CalcPrice(undefined8 *param_1,int param_2)

{
  undefined *puVar1;
  undefined *puVar2;
  double dVar3;
  undefined8 uStack_130;
  undefined8 uStack_128;
  undefined8 uStack_120;
  undefined8 uStack_118;
  undefined8 uStack_110;
  undefined8 uStack_108;
  undefined8 uStack_100;
  undefined8 uStack_f8;
  undefined8 uStack_f0;
  undefined8 uStack_e8;
  undefined8 uStack_e0;
  undefined8 uStack_d8;
  undefined8 uStack_d0;
  undefined8 uStack_c8;
  undefined8 uStack_c0;
  undefined8 uStack_b8;
  undefined8 uStack_b0;
  undefined8 uStack_a8;
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
  undefined8 uStack_40;
  undefined8 uStack_38;
  
  puVar1 = PTR_DAT_05e59000;
  if ((bRam000000000625c555 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e620b8);
    func_0x029f5a50(PTR_DAT_05e59000);
    bRam000000000625c555 = 1;
  }
  puVar2 = PTR_DAT_05e620b8;
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
  uStack_38 = 0;
  uStack_40 = 0;
  if (param_2 < 0x1389) {
    if (*(int *)(*(long *)puVar1 + 0xe4) == 0) {
      func_0x029f5bd0();
    }
    dVar3 = (double)Math_Pow_0x60008ae(_UNK_0116f9f0,(double)param_2,0);
    InfVal_op_Implicit_0x600004c(&uStack_b0,dVar3 * 50.0,0);
    uStack_68 = uStack_a8;
    uStack_70 = uStack_b0;
    uStack_58 = uStack_98;
    uStack_60 = uStack_a0;
    InfVal_ToPrecision_0x6000089(&uStack_d0,&uStack_70,3,0);
    uStack_130 = uStack_d0;
    uStack_128 = uStack_c8;
    uStack_120 = uStack_c0;
    uStack_118 = uStack_b8;
  }
  else {
    if (*(int *)(*(long *)puVar1 + 0xe4) == 0) {
      func_0x029f5bd0();
    }
    dVar3 = (double)Math_Pow_0x60008ae(_UNK_0116f9f0,_UNK_01170940,0);
    InfVal_op_Implicit_0x600004c(&uStack_b0,dVar3 * 50.0,0);
    uStack_48 = uStack_a8;
    uStack_50 = uStack_b0;
    uStack_38 = uStack_98;
    uStack_40 = uStack_a0;
    InfVal_op_Implicit_0x600004c(&uStack_d0,0x4000000000000000,0);
    uStack_68 = uStack_c8;
    uStack_70 = uStack_d0;
    uStack_58 = uStack_b8;
    uStack_60 = uStack_c0;
    if (*(int *)(*(long *)puVar2 + 0xe4) == 0) {
      func_0x029f5bd0();
    }
    MathInfVal_Pow_0x60000f3(&uStack_f0,&uStack_70,param_2 + -5000,1,0);
    uStack_88 = uStack_e8;
    uStack_90 = uStack_f0;
    uStack_78 = uStack_d8;
    uStack_80 = uStack_e0;
    InfVal_op_Multiply_0x6000074(&uStack_110,&uStack_50,&uStack_90,0);
    uStack_48 = uStack_108;
    uStack_50 = uStack_110;
    uStack_38 = uStack_f8;
    uStack_40 = uStack_100;
    InfVal_ToPrecision_0x6000089(&uStack_130,&uStack_50,3,0);
  }
  param_1[1] = uStack_128;
  *param_1 = uStack_130;
  param_1[3] = uStack_118;
  param_1[2] = uStack_120;
  return;
}

