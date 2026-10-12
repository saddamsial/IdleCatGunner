/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b88058, Ghidra VA 02c88058. */

void Rebirth_manager_Rebirth_Reward_return(undefined8 *param_1)

{
  int iVar1;
  undefined *puVar2;
  long lVar3;
  long lVar4;
  undefined8 uStack_210;
  undefined8 uStack_208;
  undefined8 uStack_200;
  undefined8 uStack_1f8;
  undefined8 uStack_1f0;
  undefined8 uStack_1e8;
  undefined8 uStack_1e0;
  undefined8 uStack_1d8;
  undefined8 uStack_1d0;
  undefined8 uStack_1c8;
  undefined8 uStack_1c0;
  undefined8 uStack_1b8;
  undefined8 uStack_1b0;
  undefined8 uStack_1a8;
  undefined8 uStack_1a0;
  undefined8 uStack_198;
  undefined8 uStack_190;
  undefined8 uStack_188;
  undefined8 uStack_180;
  undefined8 uStack_178;
  undefined8 uStack_170;
  undefined8 uStack_168;
  undefined8 uStack_160;
  undefined8 uStack_158;
  undefined8 uStack_150;
  undefined8 uStack_148;
  undefined8 uStack_140;
  undefined8 uStack_138;
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
  
  puVar2 = PTR_DAT_05e5dc20;
  if ((bRam000000000625c387 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e620b8);
    func_0x029f5a50(PTR_DAT_05e59000);
    func_0x029f5a50(PTR_DAT_05e5d4d8);
    func_0x029f5a50(PTR_DAT_05e5dc20);
    bRam000000000625c387 = 1;
  }
  lVar3 = *(long *)puVar2;
  uStack_c8 = 0;
  uStack_d0 = 0;
  uStack_b8 = 0;
  uStack_c0 = 0;
  uStack_a8 = 0;
  uStack_b0 = 0;
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
  uStack_38 = 0;
  uStack_40 = 0;
  if (*(int *)(lVar3 + 0xe4) == 0) {
    func_0x029f5bd0();
    lVar3 = *(long *)puVar2;
  }
  lVar4 = *(long *)(*(long *)(lVar3 + 0xb8) + 0x10);
  if (lVar4 != 0) {
    if (*(int *)(lVar4 + 0x28) < 2) {
      InfVal_op_Implicit_0x600003f(&uStack_f0,0,0);
      uStack_210 = uStack_f0;
      uStack_208 = uStack_e8;
      uStack_200 = uStack_e0;
      uStack_1f8 = uStack_d8;
    }
    else {
      if (*(int *)(lVar3 + 0xe4) == 0) {
        func_0x029f5bd0();
        lVar4 = *(long *)(*(long *)(*(long *)puVar2 + 0xb8) + 0x10);
        if (lVar4 == 0) goto LAB_02c882bc;
      }
      iVar1 = *(int *)(lVar4 + 0x2c) + *(int *)(lVar4 + 0x28) * 5;
      uStack_e8 = 0;
      uStack_f0 = 0;
      uStack_d8 = 0;
      uStack_e0 = 0;
      InfVal__ctor_0x600002f(&uStack_f0,iVar1,0,0);
      uStack_68 = uStack_e8;
      uStack_70 = uStack_f0;
      uStack_58 = uStack_d8;
      uStack_60 = uStack_e0;
      if (*(int *)(*(long *)PTR_DAT_05e620b8 + 0xe4) == 0) {
        func_0x029f5bd0();
      }
      MathInfVal_Pow_0x60000f3(&uStack_110,&uStack_70,2,1,0);
      uStack_88 = uStack_108;
      uStack_90 = uStack_110;
      uStack_78 = uStack_f8;
      uStack_80 = uStack_100;
      if (*(int *)(*(long *)PTR_DAT_05e59000 + 0xe4) == 0) {
        func_0x029f5bd0();
      }
      InfVal_op_Implicit_0x600004c(&uStack_130,SQRT((double)iVar1),0);
      uStack_a8 = uStack_128;
      uStack_b0 = uStack_130;
      uStack_98 = uStack_118;
      uStack_a0 = uStack_120;
      InfVal_op_Multiply_0x6000074(&uStack_150,&uStack_90,&uStack_b0,0);
      puVar2 = PTR_DAT_05e5d4d8;
      lVar3 = *(long *)PTR_DAT_05e5d4d8;
      uStack_48 = uStack_148;
      uStack_50 = uStack_150;
      uStack_38 = uStack_138;
      uStack_40 = uStack_140;
      if (*(int *)(lVar3 + 0xe4) == 0) {
        func_0x029f5bd0();
        lVar3 = *(long *)puVar2;
      }
      InfVal_op_Implicit_0x600003f(&uStack_170,*(undefined4 *)(*(long *)(lVar3 + 0xb8) + 0x68),0);
      uStack_68 = uStack_168;
      uStack_70 = uStack_170;
      uStack_58 = uStack_158;
      uStack_60 = uStack_160;
      InfVal_op_Multiply_0x6000074(&uStack_190,&uStack_50,&uStack_70,0);
      uStack_88 = uStack_188;
      uStack_90 = uStack_190;
      uStack_78 = uStack_178;
      uStack_80 = uStack_180;
      InfVal_op_Implicit_0x600003f(&uStack_1b0,100,0);
      uStack_a8 = uStack_1a8;
      uStack_b0 = uStack_1b0;
      uStack_98 = uStack_198;
      uStack_a0 = uStack_1a0;
      InfVal_op_Division_0x6000075(&uStack_1d0,&uStack_90,&uStack_b0,0);
      uStack_c8 = uStack_1c8;
      uStack_d0 = uStack_1d0;
      uStack_b8 = uStack_1b8;
      uStack_c0 = uStack_1c0;
      InfVal_ToPrecision_0x6000089(&uStack_1f0,&uStack_d0,5,0);
      uStack_48 = uStack_1e8;
      uStack_50 = uStack_1f0;
      uStack_38 = uStack_1d8;
      uStack_40 = uStack_1e0;
      InfVal_ToPrecision_0x6000089(&uStack_210,&uStack_50,5,0);
    }
    param_1[1] = uStack_208;
    *param_1 = uStack_210;
    param_1[3] = uStack_1f8;
    param_1[2] = uStack_200;
    return;
  }
LAB_02c882bc:
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

