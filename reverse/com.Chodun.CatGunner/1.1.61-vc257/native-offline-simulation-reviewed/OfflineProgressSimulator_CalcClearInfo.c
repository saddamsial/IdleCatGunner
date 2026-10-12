/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b077b0, Ghidra VA 02c077b0. */

/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */

float OfflineProgressSimulator_CalcClearInfo
                (undefined4 param_1,undefined4 param_2,int param_3,int param_4,int param_5,
                undefined8 param_6,undefined8 param_7,undefined4 param_8,int param_9,
                undefined8 param_10,undefined8 param_11,int param_12,int param_13)

{
  int iVar1;
  uint uVar2;
  uint uVar3;
  float fVar4;
  undefined *puVar5;
  undefined *puVar6;
  int iVar7;
  int iVar8;
  ulong uVar9;
  long lVar10;
  long *plVar11;
  int iVar12;
  long lVar13;
  undefined8 *puVar14;
  ulong uVar15;
  long lVar16;
  undefined8 uVar17;
  float fVar18;
  float fVar19;
  float fVar20;
  double dVar21;
  double dVar22;
  double dVar23;
  float fVar24;
  float fVar25;
  float fVar26;
  double dVar27;
  undefined8 uStack_700;
  undefined8 uStack_6f8;
  undefined8 uStack_6f0;
  undefined8 uStack_6e8;
  undefined8 uStack_6e0;
  undefined8 uStack_6d8;
  undefined8 uStack_6d0;
  undefined8 uStack_6c8;
  undefined8 uStack_6c0;
  undefined8 uStack_6b8;
  undefined8 uStack_6b0;
  undefined8 uStack_6a8;
  undefined8 uStack_6a0;
  undefined8 uStack_698;
  undefined8 uStack_690;
  undefined8 uStack_688;
  undefined8 uStack_680;
  undefined8 uStack_678;
  undefined8 uStack_670;
  undefined8 uStack_668;
  undefined8 uStack_660;
  undefined8 uStack_658;
  undefined8 uStack_650;
  undefined8 uStack_648;
  undefined8 uStack_640;
  undefined8 uStack_638;
  undefined8 uStack_630;
  undefined8 uStack_628;
  undefined8 uStack_620;
  undefined8 uStack_618;
  undefined8 uStack_610;
  undefined8 uStack_608;
  undefined8 uStack_600;
  undefined8 uStack_5f8;
  undefined8 uStack_5f0;
  undefined8 uStack_5e8;
  undefined8 uStack_5e0;
  undefined8 uStack_5d8;
  undefined8 uStack_5d0;
  undefined8 uStack_5c8;
  undefined8 uStack_5c0;
  undefined8 uStack_5b8;
  undefined8 uStack_5b0;
  undefined8 uStack_5a8;
  undefined8 uStack_5a0;
  undefined8 uStack_598;
  undefined8 uStack_590;
  undefined8 uStack_588;
  undefined8 uStack_580;
  undefined8 uStack_578;
  undefined8 uStack_570;
  undefined8 uStack_568;
  undefined8 uStack_560;
  undefined8 uStack_558;
  undefined8 uStack_550;
  undefined8 uStack_548;
  undefined8 uStack_540;
  undefined8 uStack_538;
  undefined8 uStack_530;
  undefined8 uStack_528;
  undefined8 uStack_520;
  undefined8 uStack_518;
  undefined8 uStack_510;
  undefined8 uStack_508;
  undefined8 uStack_500;
  undefined8 uStack_4f8;
  undefined8 uStack_4f0;
  undefined8 uStack_4e8;
  undefined8 uStack_4e0;
  undefined8 uStack_4d8;
  undefined8 uStack_4d0;
  undefined8 uStack_4c8;
  undefined8 uStack_4c0;
  undefined8 uStack_4b8;
  undefined8 uStack_4b0;
  undefined8 uStack_4a8;
  undefined8 uStack_4a0;
  undefined8 uStack_498;
  undefined8 uStack_490;
  undefined8 uStack_488;
  undefined8 uStack_480;
  undefined8 uStack_478;
  undefined8 uStack_470;
  undefined8 uStack_468;
  undefined8 uStack_460;
  undefined8 uStack_458;
  undefined8 uStack_450;
  undefined8 uStack_448;
  undefined8 uStack_440;
  undefined8 uStack_438;
  undefined8 uStack_430;
  undefined8 uStack_428;
  undefined8 uStack_420;
  undefined8 uStack_418;
  undefined8 uStack_410;
  undefined8 uStack_408;
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
  
  puVar5 = PTR_DAT_05e62040;
  if ((bRam000000000625be7f & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e62098);
    func_0x029f5a50(PTR_DAT_05e5dd40);
    func_0x029f5a50(PTR_DAT_05e59000);
    func_0x029f5a50(PTR_DAT_05e591c0);
    func_0x029f5a50(PTR_DAT_05e62040);
    func_0x029f5a50(PTR_DAT_05e5d4d0);
    func_0x029f5a50(PTR_DAT_05e620a0);
    func_0x029f5a50(PTR_DAT_05e620a8);
    func_0x029f5a50(PTR_DAT_05e620b0);
    bRam000000000625be7f = 1;
  }
  uStack_a8 = 0;
  uStack_b0 = 0;
  uStack_b8 = 0;
  uStack_c0 = 0;
  uStack_c8 = 0;
  uStack_d0 = 0;
  uStack_d8 = 0;
  uStack_e0 = 0;
  uStack_e8 = 0;
  uStack_f0 = 0;
  uStack_f8 = 0;
  uStack_100 = 0;
  uStack_108 = 0;
  uStack_110 = 0;
  uStack_118 = 0;
  uStack_120 = 0;
  uStack_128 = 0;
  uStack_130 = 0;
  uStack_138 = 0;
  uStack_140 = 0;
  uStack_148 = 0;
  uStack_150 = 0;
  uStack_158 = 0;
  uStack_160 = 0;
  uStack_168 = 0;
  uStack_170 = 0;
  uStack_178 = 0;
  uStack_180 = 0;
  uStack_188 = 0;
  uStack_190 = 0;
  uStack_198 = 0;
  uStack_1a0 = 0;
  uStack_1a8 = 0;
  uStack_1b0 = 0;
  uStack_1b8 = 0;
  uStack_1c0 = 0;
  uStack_1c8 = 0;
  uStack_1d0 = 0;
  uStack_1d8 = 0;
  uStack_1e0 = 0;
  uStack_1e8 = 0;
  uStack_1f0 = 0;
  uStack_1f8 = 0;
  uStack_200 = 0;
  uStack_208 = 0;
  uStack_210 = 0;
  uStack_218 = 0;
  uStack_220 = 0;
  if (*(int *)(*(long *)puVar5 + 0xe4) == 0) {
    func_0x029f5bd0();
  }
  iVar7 = param_3 * 10 + 0x1e;
  if (99 < iVar7) {
    iVar7 = 100;
  }
  if (iVar7 < 0x1f) {
    iVar7 = 0x1e;
  }
  uVar3 = iVar7 + iVar7 * param_4;
  if ((int)(uVar3 | param_4 == 4) < 1) {
    return 0.0;
  }
  if (*(int *)(*(long *)puVar5 + 0xe4) == 0) {
    func_0x029f5bd0();
  }
  OfflineProgressSimulator_GetStageHealth(&uStack_240,param_3);
  uStack_138 = uStack_238;
  uStack_140 = uStack_240;
  uStack_128 = uStack_228;
  uStack_130 = uStack_230;
  OfflineProgressSimulator_AvgDegreeHealth(param_4);
  OfflineProgressSimulator_ToInfVal_0x60003da(&uStack_260);
  uStack_158 = uStack_258;
  uStack_160 = uStack_260;
  uStack_148 = uStack_248;
  uStack_150 = uStack_250;
  InfVal_op_Multiply_0x6000074(&uStack_280,&uStack_140,&uStack_160,0);
  uStack_b8 = uStack_278;
  uStack_c0 = uStack_280;
  uStack_a8 = uStack_268;
  uStack_b0 = uStack_270;
  InfVal_op_Implicit_0x600003f(&uStack_2a0,0,0);
  uStack_138 = uStack_298;
  uStack_140 = uStack_2a0;
  uStack_128 = uStack_288;
  uStack_130 = uStack_290;
  uVar9 = InfVal_op_LessThanOrEqual_0x6000080(&uStack_c0,&uStack_140,0);
  if ((uVar9 & 1) != 0) {
    InfVal_op_Implicit_0x600003f(&uStack_240,1,0);
    uStack_b8 = uStack_238;
    uStack_c0 = uStack_240;
    uStack_a8 = uStack_228;
    uStack_b0 = uStack_230;
  }
  if (param_4 == 4) {
    if (*(int *)(*(long *)puVar5 + 0xe4) == 0) {
      func_0x029f5bd0();
    }
    OfflineProgressSimulator_GetStageHealth(&uStack_240,param_3);
    uStack_128 = uStack_228;
    uStack_130 = uStack_230;
    uStack_138 = uStack_238;
    uStack_140 = uStack_240;
    lVar13 = **(long **)(*(long *)puVar5 + 0xb8);
    if (lVar13 == 0) goto LAB_02c086e0;
    if ((*(uint *)(lVar13 + 0x18) & 0xfffffffc) == 0) {
LAB_02c086e4:
                    /* WARNING: Subroutine does not return */
      Throw_Index_Wrapper();
    }
    OfflineProgressSimulator_ToInfVal_0x60003da(&uStack_260,*(undefined8 *)(lVar13 + 0x38));
    uStack_158 = uStack_258;
    uStack_160 = uStack_260;
    uStack_148 = uStack_248;
    uStack_150 = uStack_250;
    InfVal_op_Multiply_0x6000074(&uStack_280,&uStack_140,&uStack_160,0);
    uStack_218 = uStack_278;
    uStack_220 = uStack_280;
    uStack_208 = uStack_268;
    uStack_210 = uStack_270;
  }
  else {
    InfVal_op_Implicit_0x600003f(&uStack_220,0,0);
  }
  puVar5 = PTR_DAT_05e591c0;
  uStack_d8 = uStack_218;
  uStack_e0 = uStack_220;
  uStack_c8 = uStack_208;
  uStack_d0 = uStack_210;
  lVar13 = **(long **)(*(long *)PTR_DAT_05e5dd40 + 0xb8);
  if (*(int *)(*(long *)PTR_DAT_05e591c0 + 0xe4) == 0) {
    func_0x029f5bd0();
  }
  uVar9 = Object_op_Equality_0x6000dec(lVar13,0,0);
  puVar6 = PTR_DAT_05e620b0;
  if ((uVar9 & 1) != 0) {
    return INFINITY;
  }
  if (lVar13 != 0) {
    if (*(long *)(lVar13 + 0x28) == 0) {
      return INFINITY;
    }
    if (*(long *)(lVar13 + 0x20) == 0) {
      return INFINITY;
    }
    lVar10 = *(long *)PTR_DAT_05e620b0;
    if (*(int *)(lVar10 + 0xe4) == 0) {
      func_0x029f5bd0();
      lVar10 = *(long *)puVar6;
    }
    puVar14 = *(undefined8 **)(lVar10 + 0xb8);
    lVar16 = puVar14[5];
    if (lVar16 == 0) {
      if (*(int *)(lVar10 + 0xe4) == 0) {
        func_0x029f5bd0();
        puVar14 = *(undefined8 **)(*(long *)puVar6 + 0xb8);
      }
      uVar17 = *puVar14;
      lVar16 = func_0x029f5cec(*(undefined8 *)PTR_DAT_05e62098);
      func_0x04235b8c(lVar16,uVar17,*(undefined8 *)PTR_DAT_05e620a0,0);
      plVar11 = (long *)(*(long *)(*(long *)puVar6 + 0xb8) + 0x28);
      *plVar11 = lVar16;
      Managed_WriteBarrier(plVar11,lVar16);
    }
    if (*(int *)(*(long *)PTR_DAT_05e62040 + 0xe4) == 0) {
      func_0x029f5bd0();
    }
    fVar18 = (float)OfflineProgressSimulator_SafeManagerCall_0x60003dd(0,lVar16);
    lVar10 = *(long *)puVar6;
    fVar18 = fVar18 / 100.0;
    fVar19 = 1.0;
    if (fVar18 <= 1.0) {
      fVar19 = fVar18;
    }
    fVar24 = 0.0;
    if (0.0 <= fVar18) {
      fVar24 = fVar19;
    }
    if (*(int *)(lVar10 + 0xe4) == 0) {
      func_0x029f5bd0();
      lVar10 = *(long *)puVar6;
    }
    puVar14 = *(undefined8 **)(lVar10 + 0xb8);
    lVar16 = puVar14[6];
    if (lVar16 == 0) {
      if (*(int *)(lVar10 + 0xe4) == 0) {
        func_0x029f5bd0();
        puVar14 = *(undefined8 **)(*(long *)puVar6 + 0xb8);
      }
      uVar17 = *puVar14;
      lVar16 = func_0x029f5cec(*(undefined8 *)PTR_DAT_05e62098);
      func_0x04235b8c(lVar16,uVar17,*(undefined8 *)PTR_DAT_05e620a8,0);
      plVar11 = (long *)(*(long *)(*(long *)puVar6 + 0xb8) + 0x30);
      *plVar11 = lVar16;
      Managed_WriteBarrier(plVar11,lVar16);
    }
    if (*(int *)(*(long *)PTR_DAT_05e62040 + 0xe4) == 0) {
      func_0x029f5bd0();
    }
    fVar19 = (float)OfflineProgressSimulator_SafeManagerCall_0x60003dd(0,lVar16);
    OfflineProgressSimulator_GetPowerBalance(&uStack_240,param_1);
    uStack_f8 = uStack_238;
    uStack_100 = uStack_240;
    uStack_e8 = uStack_228;
    uStack_f0 = uStack_230;
    iVar7 = OfflineProgressSimulator_GetSpeedBalance(param_2);
    iVar8 = InfVal_op_Explicit_0x6000056(param_7,0);
    puVar6 = PTR_DAT_05e5d4d0;
    lVar10 = *(long *)PTR_DAT_05e5d4d0;
    iVar7 = param_9 + param_3 * -0x1e + iVar7 + iVar8 + -200;
    if (9999 < iVar7) {
      iVar7 = 10000;
    }
    if (iVar7 < 0x65) {
      iVar7 = 100;
    }
    if (*(int *)(lVar10 + 0xe4) == 0) {
      func_0x029f5bd0();
      lVar10 = *(long *)puVar6;
    }
    uVar17 = *(undefined8 *)(*(long *)(lVar10 + 0xb8) + 0x28);
    if (*(int *)(*(long *)puVar5 + 0xe4) == 0) {
      func_0x029f5bd0(*(long *)puVar5);
    }
    uVar9 = Object_op_Inequality_0x6000ded(uVar17,0,0);
    if ((uVar9 & 1) == 0) {
      fVar18 = 100.0;
    }
    else {
      lVar10 = *(long *)puVar6;
      if (*(int *)(lVar10 + 0xe4) == 0) {
        func_0x029f5bd0();
        lVar10 = *(long *)puVar6;
      }
      fVar18 = (float)*(int *)(*(long *)(lVar10 + 0xb8) + 0x20);
    }
    iVar8 = param_3 * 10 + param_4;
    fVar25 = fVar18 / 100.0;
    if (fVar18 / 100.0 <= _UNK_0116c088) {
      fVar25 = _UNK_0116c088;
    }
    fVar18 = (_UNK_0116c174 / fVar25) * 0.5;
    if (param_5 <= iVar8) {
      fVar18 = _UNK_0116c174 / fVar25;
    }
    InfVal_op_Implicit_0x600003f(&uStack_240,0,0);
    puVar5 = PTR_DAT_05e62040;
    dVar22 = _UNK_0116f660;
    fVar4 = _UNK_0116c094;
    lVar10 = *(long *)(lVar13 + 0x28);
    uStack_118 = uStack_238;
    uStack_120 = uStack_240;
    uStack_108 = uStack_228;
    uStack_110 = uStack_230;
    if (lVar10 != 0) {
      iVar1 = -0x7fffff83;
      if (fVar19 != INFINITY) {
        iVar1 = (int)fVar19 + 0x7d;
      }
      if ((int)*(ulong *)(lVar10 + 0x18) < 1) {
        dVar27 = 0.0;
      }
      else {
        dVar27 = 0.0;
        uVar9 = 0;
        uVar15 = *(ulong *)(lVar10 + 0x18) & 0xffffffff;
        do {
          if (uVar15 <= uVar9) goto LAB_02c086e4;
          uVar2 = *(uint *)(lVar10 + 0x20 + uVar9 * 4);
          if (-1 < (int)uVar2) {
            lVar16 = *(long *)(lVar13 + 0x20);
            if (lVar16 == 0) goto LAB_02c086e0;
            if ((int)uVar2 < *(int *)(lVar16 + 0x18)) {
              lVar16 = *(long *)(lVar16 + (ulong)uVar2 * 8 + 0x20);
              if (lVar16 == 0) goto LAB_02c086e0;
              uStack_138 = *(undefined8 *)(lVar16 + 0x28);
              uStack_140 = *(undefined8 *)(lVar16 + 0x20);
              uStack_128 = *(undefined8 *)(lVar16 + 0x38);
              uStack_130 = *(undefined8 *)(lVar16 + 0x30);
              InfVal_op_Multiply_0x6000074(&uStack_240,&uStack_140,&uStack_100,0);
              uStack_158 = uStack_238;
              uStack_160 = uStack_240;
              uStack_148 = uStack_228;
              uStack_150 = uStack_230;
              InfVal_op_Implicit_0x600003f(&uStack_260,100,0);
              uStack_1d8 = uStack_258;
              uStack_1e0 = uStack_260;
              uStack_1c8 = uStack_248;
              uStack_1d0 = uStack_250;
              InfVal_op_Division_0x6000075(&uStack_280,&uStack_160,&uStack_1e0,0);
              uStack_178 = uStack_278;
              uStack_180 = uStack_280;
              uStack_168 = uStack_268;
              uStack_170 = uStack_270;
              InfVal_op_Multiply_0x6000074(&uStack_2a0,&uStack_180,param_6,0);
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
              uStack_1d8 = uStack_2d8;
              uStack_1e0 = uStack_2e0;
              uStack_1c8 = uStack_2c8;
              uStack_1d0 = uStack_2d0;
              InfVal_DiscardDecimal_return_0x600008c(&uStack_300,&uStack_1e0,0);
              uStack_178 = uStack_2f8;
              uStack_180 = uStack_300;
              uStack_168 = uStack_2e8;
              uStack_170 = uStack_2f0;
              InfVal_op_Implicit_0x600003f(&uStack_320,param_8,0);
              uStack_138 = uStack_318;
              uStack_140 = uStack_320;
              uStack_128 = uStack_308;
              uStack_130 = uStack_310;
              InfVal_op_Multiply_0x6000074(&uStack_340,&uStack_180,&uStack_140,0);
              uStack_158 = uStack_338;
              uStack_160 = uStack_340;
              uStack_148 = uStack_328;
              uStack_150 = uStack_330;
              InfVal_op_Implicit_0x600003f(&uStack_360,100,0);
              uStack_1d8 = uStack_358;
              uStack_1e0 = uStack_360;
              uStack_1c8 = uStack_348;
              uStack_1d0 = uStack_350;
              InfVal_op_Division_0x6000075(&uStack_380,&uStack_160,&uStack_1e0,0);
              uStack_1f8 = uStack_378;
              uStack_200 = uStack_380;
              uStack_1e8 = uStack_368;
              uStack_1f0 = uStack_370;
              InfVal_DiscardDecimal_return_0x600008c(&uStack_3a0,&uStack_200,0);
              uStack_178 = uStack_398;
              uStack_180 = uStack_3a0;
              uStack_168 = uStack_388;
              uStack_170 = uStack_390;
              InfVal_op_Implicit_0x600003f(&uStack_3c0,param_12 + 100,0);
              uStack_138 = uStack_3b8;
              uStack_140 = uStack_3c0;
              uStack_128 = uStack_3a8;
              uStack_130 = uStack_3b0;
              InfVal_op_Multiply_0x6000074(&uStack_3e0,&uStack_180,&uStack_140,0);
              uStack_158 = uStack_3d8;
              uStack_160 = uStack_3e0;
              uStack_148 = uStack_3c8;
              uStack_150 = uStack_3d0;
              InfVal_op_Implicit_0x600003f(&uStack_400,100,0);
              uStack_1d8 = uStack_3f8;
              uStack_1e0 = uStack_400;
              uStack_1c8 = uStack_3e8;
              uStack_1d0 = uStack_3f0;
              InfVal_op_Division_0x6000075(&uStack_420,&uStack_160,&uStack_1e0,0);
              uStack_1f8 = uStack_418;
              uStack_200 = uStack_420;
              uStack_1e8 = uStack_408;
              uStack_1f0 = uStack_410;
              InfVal_DiscardDecimal_return_0x600008c(&uStack_440,&uStack_200,0);
              uStack_178 = uStack_438;
              uStack_180 = uStack_440;
              uStack_168 = uStack_428;
              uStack_170 = uStack_430;
              InfVal_op_Multiply_0x6000074(&uStack_460,&uStack_180,param_10,0);
              uStack_138 = uStack_458;
              uStack_140 = uStack_460;
              uStack_128 = uStack_448;
              uStack_130 = uStack_450;
              InfVal_op_Implicit_0x600003f(&uStack_480,100,0);
              uStack_158 = uStack_478;
              uStack_160 = uStack_480;
              uStack_148 = uStack_468;
              uStack_150 = uStack_470;
              InfVal_op_Division_0x6000075(&uStack_4a0,&uStack_140,&uStack_160,0);
              uStack_1d8 = uStack_498;
              uStack_1e0 = uStack_4a0;
              uStack_1c8 = uStack_488;
              uStack_1d0 = uStack_490;
              InfVal_DiscardDecimal_return_0x600008c(&uStack_4c0,&uStack_1e0,0);
              uStack_178 = uStack_4b8;
              uStack_180 = uStack_4c0;
              uStack_168 = uStack_4a8;
              uStack_170 = uStack_4b0;
              InfVal_op_Implicit_0x600003f(&uStack_4e0,param_13,0);
              uStack_138 = uStack_4d8;
              uStack_140 = uStack_4e0;
              uStack_128 = uStack_4c8;
              uStack_130 = uStack_4d0;
              InfVal_op_Multiply_0x6000074(&uStack_500,&uStack_180,&uStack_140,0);
              uStack_158 = uStack_4f8;
              uStack_160 = uStack_500;
              uStack_148 = uStack_4e8;
              uStack_150 = uStack_4f0;
              InfVal_DiscardDecimal_return_0x600008c(&uStack_520,&uStack_160,0);
              uStack_178 = uStack_518;
              uStack_180 = uStack_520;
              uStack_168 = uStack_508;
              uStack_170 = uStack_510;
              InfVal_op_Implicit_0x600003f(&uStack_540,iVar1,0);
              uStack_138 = uStack_538;
              uStack_140 = uStack_540;
              uStack_128 = uStack_528;
              uStack_130 = uStack_530;
              InfVal_op_Multiply_0x6000074(&uStack_560,&uStack_180,&uStack_140,0);
              uStack_158 = uStack_558;
              uStack_160 = uStack_560;
              uStack_148 = uStack_548;
              uStack_150 = uStack_550;
              InfVal_op_Implicit_0x600003f(&uStack_580,100,0);
              uStack_1d8 = uStack_578;
              uStack_1e0 = uStack_580;
              uStack_1c8 = uStack_568;
              uStack_1d0 = uStack_570;
              InfVal_op_Division_0x6000075(&uStack_5a0,&uStack_160,&uStack_1e0,0);
              uStack_1f8 = uStack_598;
              uStack_200 = uStack_5a0;
              uStack_1e8 = uStack_588;
              uStack_1f0 = uStack_590;
              InfVal_DiscardDecimal_return_0x600008c(&uStack_5c0,&uStack_200,0);
              uStack_198 = uStack_5b8;
              uStack_1a0 = uStack_5c0;
              uStack_188 = uStack_5a8;
              uStack_190 = uStack_5b0;
              InfVal_op_Multiply_0x6000074(&uStack_5e0,&uStack_1a0,param_11,0);
              uStack_138 = uStack_5d8;
              uStack_140 = uStack_5e0;
              uStack_128 = uStack_5c8;
              uStack_130 = uStack_5d0;
              InfVal_op_Implicit_0x600003f(&uStack_600,100,0);
              uStack_158 = uStack_5f8;
              uStack_160 = uStack_600;
              uStack_148 = uStack_5e8;
              uStack_150 = uStack_5f0;
              InfVal_op_Division_0x6000075(&uStack_620,&uStack_140,&uStack_160,0);
              uStack_1d8 = uStack_618;
              uStack_1e0 = uStack_620;
              uStack_1c8 = uStack_608;
              uStack_1d0 = uStack_610;
              InfVal_DiscardDecimal_return_0x600008c(&uStack_640,&uStack_1e0,0);
              uStack_198 = uStack_638;
              uStack_1a0 = uStack_640;
              uStack_188 = uStack_628;
              uStack_190 = uStack_630;
              if (*(int *)(*(long *)puVar5 + 0xe4) == 0) {
                func_0x029f5bd0();
              }
              OfflineProgressSimulator_ToInfVal_0x60003d9(&uStack_660,1.0 - fVar24);
              uStack_138 = uStack_658;
              uStack_140 = uStack_660;
              uStack_128 = uStack_648;
              uStack_130 = uStack_650;
              InfVal_op_Multiply_0x6000074(&uStack_680,&uStack_180,&uStack_140,0);
              uStack_158 = uStack_678;
              uStack_160 = uStack_680;
              uStack_148 = uStack_668;
              uStack_150 = uStack_670;
              OfflineProgressSimulator_ToInfVal_0x60003d9(&uStack_6a0,fVar24);
              uStack_1d8 = uStack_698;
              uStack_1e0 = uStack_6a0;
              uStack_1c8 = uStack_688;
              uStack_1d0 = uStack_690;
              InfVal_op_Multiply_0x6000074(&uStack_6c0,&uStack_1a0,&uStack_1e0,0);
              uStack_1f8 = uStack_6b8;
              uStack_200 = uStack_6c0;
              uStack_1e8 = uStack_6a8;
              uStack_1f0 = uStack_6b0;
              InfVal_op_Addition_0x6000072(&uStack_6e0,&uStack_160,&uStack_200,0);
              uStack_1b8 = uStack_6d8;
              uStack_1c0 = uStack_6e0;
              uStack_1a8 = uStack_6c8;
              uStack_1b0 = uStack_6d0;
              InfVal_op_Implicit_0x600003f(&uStack_700,0,0);
              uStack_138 = uStack_6f8;
              uStack_140 = uStack_700;
              uStack_128 = uStack_6e8;
              uStack_130 = uStack_6f0;
              uVar15 = InfVal_op_LessThanOrEqual_0x6000080(&uStack_1c0,&uStack_140,0);
              if ((uVar15 & 1) == 0) {
                fVar20 = ((*(float *)(lVar16 + 0x40) / (float)iVar7) * 100.0) / (float)param_13;
                fVar19 = 2.0;
                if (fVar20 <= 2.0) {
                  fVar19 = fVar20;
                }
                fVar26 = fVar4;
                if (fVar4 <= fVar20) {
                  fVar26 = fVar19;
                }
                uVar15 = InfVal_op_GreaterThanOrEqual_0x6000081(&uStack_1c0,&uStack_c0,0);
                if ((uVar15 & 1) == 0) {
                  InfVal_op_Division_0x6000075(&uStack_240,&uStack_c0,&uStack_1c0,0);
                  uStack_138 = uStack_238;
                  uStack_140 = uStack_240;
                  uStack_128 = uStack_228;
                  uStack_130 = uStack_230;
                  dVar21 = (double)InfVal_op_Explicit_0x600005b(&uStack_140,0);
                  lVar16 = *(long *)PTR_DAT_05e59000;
                  dVar23 = dVar22;
                  if (((ulong)dVar21 >> 0x34 & 0x7ff) < 0x7ff) {
                    if (*(int *)(lVar16 + 0xe4) == 0) {
                      func_0x029f5bd0();
                      lVar16 = *(long *)PTR_DAT_05e59000;
                    }
                    dVar23 = (double)(long)dVar21;
                  }
                  dVar21 = 1.0;
                  if (1.0 <= dVar23) {
                    dVar21 = dVar23;
                  }
                  if (*(int *)(lVar16 + 0xe4) == 0) {
                    func_0x029f5bd0();
                  }
                  dVar23 = (double)Math_Min_0x600088d(dVar21 * (double)fVar26,dVar22,0);
                  fVar19 = (float)dVar23;
                  if ((float)dVar23 <= fVar18) {
                    fVar19 = fVar18;
                  }
                  dVar23 = 1.0;
                }
                else {
                  if (*(int *)(*(long *)puVar5 + 0xe4) == 0) {
                    func_0x029f5bd0();
                  }
                  iVar12 = *(int *)(lVar16 + 0x18);
                  if (iVar12 - 4U < 3) {
                    iVar12 = 5;
                  }
                  else if (iVar12 - 1U < 2) {
                    iVar12 = 10;
                  }
                  else if (iVar12 == 3) {
                    iVar12 = *(int *)(lVar16 + 0x44);
                    if (iVar12 < 2) {
                      iVar12 = 1;
                    }
                  }
                  else {
                    iVar12 = 1;
                  }
                  dVar23 = (double)iVar12;
                  fVar19 = fVar26;
                  if (fVar26 <= fVar18) {
                    fVar19 = fVar18;
                  }
                }
                dVar27 = dVar27 + dVar23 / (double)fVar19;
                if (param_4 == 4) {
                  if (*(int *)(*(long *)puVar5 + 0xe4) == 0) {
                    func_0x029f5bd0();
                  }
                  OfflineProgressSimulator_ToInfVal_0x60003d9(&uStack_240,fVar26);
                  uStack_138 = uStack_238;
                  uStack_140 = uStack_240;
                  uStack_128 = uStack_228;
                  uStack_130 = uStack_230;
                  InfVal_op_Division_0x6000075(&uStack_260,&uStack_1c0,&uStack_140,0);
                  uStack_158 = uStack_258;
                  uStack_160 = uStack_260;
                  uStack_148 = uStack_248;
                  uStack_150 = uStack_250;
                  InfVal_op_Addition_0x6000072(&uStack_280,&uStack_120,&uStack_160,0);
                  uStack_118 = uStack_278;
                  uStack_120 = uStack_280;
                  uStack_108 = uStack_268;
                  uStack_110 = uStack_270;
                }
              }
            }
          }
          uVar15 = (ulong)*(uint *)(lVar10 + 0x18);
          uVar9 = uVar9 + 1;
        } while ((long)uVar9 < (long)(int)*(uint *)(lVar10 + 0x18));
      }
      if (dVar27 <= 0.0) {
        return INFINITY;
      }
      fVar19 = (_UNK_0116c094 / fVar25) * 0.5;
      if (param_5 <= iVar8) {
        fVar19 = _UNK_0116c094 / fVar25;
      }
      fVar24 = (float)((double)(int)uVar3 / dVar27);
      if ((float)((double)(int)uVar3 / dVar27) <= fVar19 * (float)(int)uVar3) {
        fVar24 = fVar19 * (float)(int)uVar3;
      }
      fVar19 = 0.0;
      if (param_4 == 4) {
        InfVal_op_Implicit_0x600003f(&uStack_240,0,0);
        uStack_138 = uStack_238;
        uStack_140 = uStack_240;
        uStack_128 = uStack_228;
        uStack_130 = uStack_230;
        uVar9 = InfVal_op_LessThanOrEqual_0x6000080(&uStack_120,&uStack_140,0);
        if ((uVar9 & 1) != 0) {
          return INFINITY;
        }
        InfVal_op_Division_0x6000075(&uStack_240,&uStack_e0,&uStack_120,0);
        uStack_138 = uStack_238;
        uStack_140 = uStack_240;
        uStack_128 = uStack_228;
        uStack_130 = uStack_230;
        dVar22 = (double)InfVal_op_Explicit_0x600005b(&uStack_140,0);
        if (0x7fe < ((ulong)dVar22 >> 0x34 & 0x7ff)) {
          return INFINITY;
        }
        fVar19 = (float)dVar22;
        if ((float)dVar22 <= fVar18) {
          fVar19 = fVar18;
        }
      }
      fVar24 = fVar24 + fVar19;
      if (*(int *)(*(long *)puVar5 + 0xe4) == 0) {
        func_0x029f5bd0();
      }
      if (0xfe < ((uint)fVar24 >> 0x17 & 0xff)) {
        return INFINITY;
      }
      if (180.0 < fVar24) {
        return INFINITY;
      }
      return fVar24;
    }
  }
LAB_02c086e0:
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

