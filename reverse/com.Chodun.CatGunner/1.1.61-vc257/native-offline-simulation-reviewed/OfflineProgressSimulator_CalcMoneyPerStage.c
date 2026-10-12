/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b09480, Ghidra VA 02c09480. */

void OfflineProgressSimulator_CalcMoneyPerStage
               (undefined8 *param_1,undefined4 param_2,int param_3,int param_4,undefined8 param_5,
               undefined4 param_6,undefined4 param_7,undefined8 param_8,undefined4 param_9)

{
  int iVar1;
  undefined *puVar2;
  long lVar3;
  undefined8 uStack_400;
  undefined8 uStack_3f8;
  undefined8 uStack_3f0;
  undefined8 uStack_3e8;
  undefined8 uStack_3e0;
  undefined8 uStack_3d8;
  undefined8 uStack_3d0;
  undefined8 uStack_3c8;
  undefined8 uStack_3c0;
  undefined8 uStack_3b8;
  undefined8 uStack_3b0;
  undefined8 uStack_3a8;
  undefined8 uStack_3a0;
  undefined8 uStack_398;
  undefined8 uStack_390;
  undefined8 uStack_388;
  undefined8 uStack_380;
  undefined8 uStack_378;
  undefined8 uStack_370;
  undefined8 uStack_368;
  undefined8 uStack_360;
  undefined8 uStack_358;
  undefined8 uStack_350;
  undefined8 uStack_348;
  undefined8 uStack_340;
  undefined8 uStack_338;
  undefined8 uStack_330;
  undefined8 uStack_328;
  undefined8 uStack_320;
  undefined8 uStack_318;
  undefined8 uStack_310;
  undefined8 uStack_308;
  undefined8 uStack_300;
  undefined8 uStack_2f8;
  undefined8 uStack_2f0;
  undefined8 uStack_2e8;
  undefined8 uStack_2e0;
  undefined8 uStack_2d8;
  undefined8 uStack_2d0;
  undefined8 uStack_2c8;
  undefined8 uStack_2c0;
  undefined8 uStack_2b8;
  undefined8 uStack_2b0;
  undefined8 uStack_2a8;
  undefined8 uStack_2a0;
  undefined8 uStack_298;
  undefined8 uStack_290;
  undefined8 uStack_288;
  undefined8 uStack_280;
  undefined8 uStack_278;
  undefined8 uStack_270;
  undefined8 uStack_268;
  undefined8 uStack_260;
  undefined8 uStack_258;
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
  
  puVar2 = PTR_DAT_05e62040;
  if ((bRam000000000625be81 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e62040);
    bRam000000000625be81 = 1;
  }
  uStack_178 = 0;
  uStack_180 = 0;
  uStack_168 = 0;
  uStack_170 = 0;
  uStack_158 = 0;
  uStack_160 = 0;
  uStack_148 = 0;
  uStack_150 = 0;
  uStack_138 = 0;
  uStack_140 = 0;
  uStack_128 = 0;
  uStack_130 = 0;
  uStack_118 = 0;
  uStack_120 = 0;
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
  if (*(int *)(*(long *)puVar2 + 0xe4) == 0) {
    func_0x029f5bd0();
  }
  OfflineProgressSimulator_GetStageMoney(&uStack_80,param_3);
  iVar1 = param_3 * 10 + 0x1e;
  if (99 < iVar1) {
    iVar1 = 100;
  }
  if (iVar1 < 0x1f) {
    iVar1 = 0x1e;
  }
  OfflineProgressSimulator_AvgDegreeMoney(param_4);
  OfflineProgressSimulator_ToInfVal_0x60003da(&uStack_120);
  InfVal_op_Multiply_0x6000074(&uStack_1a0,&uStack_80,&uStack_120,0);
  uStack_138 = uStack_198;
  uStack_140 = uStack_1a0;
  uStack_128 = uStack_188;
  uStack_130 = uStack_190;
  InfVal_op_Implicit_0x600003f(&uStack_1c0,iVar1 + iVar1 * param_4,0);
  uStack_158 = uStack_1b8;
  uStack_160 = uStack_1c0;
  uStack_148 = uStack_1a8;
  uStack_150 = uStack_1b0;
  InfVal_op_Multiply_0x6000074(&uStack_a0,&uStack_140,&uStack_160,0);
  if (param_4 == 4) {
    lVar3 = *(long *)puVar2;
    if (*(int *)(lVar3 + 0xe4) == 0) {
      func_0x029f5bd0();
      lVar3 = *(long *)puVar2;
    }
    lVar3 = *(long *)(*(long *)(lVar3 + 0xb8) + 8);
    if (lVar3 == 0) {
                    /* WARNING: Subroutine does not return */
      Throw_NullReference_Wrapper();
    }
    if ((*(uint *)(lVar3 + 0x18) & 0xfffffffc) == 0) {
                    /* WARNING: Subroutine does not return */
      Throw_Index_Wrapper();
    }
    OfflineProgressSimulator_ToInfVal_0x60003da(&uStack_1a0,*(undefined8 *)(lVar3 + 0x38));
    uStack_118 = uStack_198;
    uStack_120 = uStack_1a0;
    uStack_108 = uStack_188;
    uStack_110 = uStack_190;
    InfVal_op_Multiply_0x6000074(&uStack_180,&uStack_80,&uStack_120,0);
  }
  else {
    InfVal_op_Implicit_0x600003f(&uStack_180,0,0);
  }
  uStack_b8 = uStack_178;
  uStack_c0 = uStack_180;
  uStack_a8 = uStack_168;
  uStack_b0 = uStack_170;
  InfVal_op_Addition_0x6000072(&uStack_1a0,&uStack_a0,&uStack_c0,0);
  uStack_d8 = uStack_198;
  uStack_e0 = uStack_1a0;
  uStack_c8 = uStack_188;
  uStack_d0 = uStack_190;
  if (*(int *)(*(long *)puVar2 + 0xe4) == 0) {
    func_0x029f5bd0();
  }
  OfflineProgressSimulator_GetMoneyBalance(&uStack_100,param_2);
  InfVal_op_Multiply_0x6000074(&uStack_1c0,&uStack_e0,&uStack_100,0);
  uStack_118 = uStack_1b8;
  uStack_120 = uStack_1c0;
  uStack_108 = uStack_1a8;
  uStack_110 = uStack_1b0;
  InfVal_op_Implicit_0x600003f(&uStack_1e0,100,0);
  uStack_138 = uStack_1d8;
  uStack_140 = uStack_1e0;
  uStack_128 = uStack_1c8;
  uStack_130 = uStack_1d0;
  InfVal_op_Division_0x6000075(&uStack_200,&uStack_120,&uStack_140,0);
  uStack_d8 = uStack_1f8;
  uStack_e0 = uStack_200;
  uStack_c8 = uStack_1e8;
  uStack_d0 = uStack_1f0;
  InfVal_op_Multiply_0x6000074(&uStack_220,&uStack_e0,param_5,0);
  uStack_118 = uStack_218;
  uStack_120 = uStack_220;
  uStack_108 = uStack_208;
  uStack_110 = uStack_210;
  InfVal_op_Implicit_0x600003f(&uStack_240,100,0);
  uStack_138 = uStack_238;
  uStack_140 = uStack_240;
  uStack_128 = uStack_228;
  uStack_130 = uStack_230;
  InfVal_op_Division_0x6000075(&uStack_260,&uStack_120,&uStack_140,0);
  uStack_d8 = uStack_258;
  uStack_e0 = uStack_260;
  uStack_c8 = uStack_248;
  uStack_d0 = uStack_250;
  InfVal_op_Implicit_0x600003f(&uStack_280,param_6,0);
  uStack_118 = uStack_278;
  uStack_120 = uStack_280;
  uStack_108 = uStack_268;
  uStack_110 = uStack_270;
  InfVal_op_Multiply_0x6000074(&uStack_2a0,&uStack_e0,&uStack_120,0);
  uStack_138 = uStack_298;
  uStack_140 = uStack_2a0;
  uStack_128 = uStack_288;
  uStack_130 = uStack_290;
  InfVal_op_Implicit_0x600003f(&uStack_2c0,100,0);
  uStack_158 = uStack_2b8;
  uStack_160 = uStack_2c0;
  uStack_148 = uStack_2a8;
  uStack_150 = uStack_2b0;
  InfVal_op_Division_0x6000075(&uStack_2e0,&uStack_140,&uStack_160,0);
  uStack_d8 = uStack_2d8;
  uStack_e0 = uStack_2e0;
  uStack_c8 = uStack_2c8;
  uStack_d0 = uStack_2d0;
  InfVal_op_Implicit_0x600003f(&uStack_300,param_7,0);
  uStack_118 = uStack_2f8;
  uStack_120 = uStack_300;
  uStack_108 = uStack_2e8;
  uStack_110 = uStack_2f0;
  InfVal_op_Multiply_0x6000074(&uStack_320,&uStack_e0,&uStack_120,0);
  uStack_138 = uStack_318;
  uStack_140 = uStack_320;
  uStack_128 = uStack_308;
  uStack_130 = uStack_310;
  InfVal_op_Implicit_0x600003f(&uStack_340,100,0);
  uStack_158 = uStack_338;
  uStack_160 = uStack_340;
  uStack_148 = uStack_328;
  uStack_150 = uStack_330;
  InfVal_op_Division_0x6000075(&uStack_360,&uStack_140,&uStack_160,0);
  uStack_d8 = uStack_358;
  uStack_e0 = uStack_360;
  uStack_c8 = uStack_348;
  uStack_d0 = uStack_350;
  InfVal_op_Multiply_0x6000074(&uStack_380,&uStack_e0,param_8,0);
  uStack_118 = uStack_378;
  uStack_120 = uStack_380;
  uStack_108 = uStack_368;
  uStack_110 = uStack_370;
  InfVal_op_Implicit_0x600003f(&uStack_3a0,100,0);
  uStack_138 = uStack_398;
  uStack_140 = uStack_3a0;
  uStack_128 = uStack_388;
  uStack_130 = uStack_390;
  InfVal_op_Division_0x6000075(&uStack_3c0,&uStack_120,&uStack_140,0);
  uStack_d8 = uStack_3b8;
  uStack_e0 = uStack_3c0;
  uStack_c8 = uStack_3a8;
  uStack_d0 = uStack_3b0;
  InfVal_op_Implicit_0x600003f(&uStack_3e0,param_9,0);
  uStack_118 = uStack_3d8;
  uStack_120 = uStack_3e0;
  uStack_108 = uStack_3c8;
  uStack_110 = uStack_3d0;
  InfVal_op_Multiply_0x6000074(&uStack_400,&uStack_e0,&uStack_120,0);
  param_1[1] = uStack_3f8;
  *param_1 = uStack_400;
  param_1[3] = uStack_3e8;
  param_1[2] = uStack_3f0;
  return;
}

