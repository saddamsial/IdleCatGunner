/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2ba9510, Ghidra VA 02ca9510. */

void SpeedRun_manager_SweepRequiredPower_return(undefined8 *param_1,undefined8 param_2,int param_3)

{
  int iVar1;
  undefined *puVar2;
  long lVar3;
  undefined8 uStack_250;
  undefined8 uStack_248;
  undefined8 uStack_240;
  undefined8 uStack_238;
  undefined8 uStack_230;
  undefined8 uStack_228;
  undefined8 uStack_220;
  undefined8 uStack_218;
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
  if ((bRam000000000625c4fa & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e5dc20);
    bRam000000000625c4fa = 1;
  }
  lVar3 = *(long *)puVar2;
  uStack_108 = 0;
  uStack_110 = 0;
  uStack_f8 = 0;
  uStack_100 = 0;
  uStack_e8 = 0;
  uStack_f0 = 0;
  uStack_d8 = 0;
  uStack_e0 = 0;
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
  lVar3 = *(long *)(*(long *)(lVar3 + 0xb8) + 0x10);
  if (lVar3 != 0) {
    iVar1 = param_3 * 0xf + 0x14;
    if (0xbd < iVar1) {
      iVar1 = 0xbe;
    }
    if (iVar1 < 0x15) {
      iVar1 = 0x14;
    }
    Tree_manager_GetStageHealth_0x6000efb(&uStack_130,lVar3,param_3);
    uStack_48 = uStack_128;
    uStack_50 = uStack_130;
    uStack_38 = uStack_118;
    uStack_40 = uStack_120;
    InfVal_op_Implicit_0x600003f(&uStack_150,iVar1,0);
    uStack_88 = uStack_148;
    uStack_90 = uStack_150;
    uStack_78 = uStack_138;
    uStack_80 = uStack_140;
    InfVal_op_Multiply_0x6000074(&uStack_170,&uStack_50,&uStack_90,0);
    uStack_a8 = uStack_168;
    uStack_b0 = uStack_170;
    uStack_98 = uStack_158;
    uStack_a0 = uStack_160;
    InfVal_op_Implicit_0x600003f(&uStack_190,0xc1,0);
    uStack_c8 = uStack_188;
    uStack_d0 = uStack_190;
    uStack_b8 = uStack_178;
    uStack_c0 = uStack_180;
    InfVal_op_Multiply_0x6000074(&uStack_1b0,&uStack_b0,&uStack_d0,0);
    uStack_e8 = uStack_1a8;
    uStack_f0 = uStack_1b0;
    uStack_d8 = uStack_198;
    uStack_e0 = uStack_1a0;
    InfVal_op_Implicit_0x600003f(&uStack_1d0,100,0);
    uStack_108 = uStack_1c8;
    uStack_110 = uStack_1d0;
    uStack_f8 = uStack_1b8;
    uStack_100 = uStack_1c0;
    InfVal_op_Division_0x6000075(&uStack_1f0,&uStack_f0,&uStack_110,0);
    uStack_68 = uStack_1e8;
    uStack_70 = uStack_1f0;
    uStack_58 = uStack_1d8;
    uStack_60 = uStack_1e0;
    InfVal_op_Implicit_0x600003f(&uStack_210,0x18,0);
    uStack_88 = uStack_208;
    uStack_90 = uStack_210;
    uStack_78 = uStack_1f8;
    uStack_80 = uStack_200;
    InfVal_op_Division_0x6000075(&uStack_230,&uStack_70,&uStack_90,0);
    uStack_a8 = uStack_228;
    uStack_b0 = uStack_230;
    uStack_98 = uStack_218;
    uStack_a0 = uStack_220;
    InfVal_ToPrecision_0x6000089(&uStack_250,&uStack_b0,5,0);
    param_1[1] = uStack_248;
    *param_1 = uStack_250;
    param_1[3] = uStack_238;
    param_1[2] = uStack_240;
    return;
  }
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

