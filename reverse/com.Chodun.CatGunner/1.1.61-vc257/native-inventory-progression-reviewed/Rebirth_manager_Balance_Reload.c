/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b86de4, Ghidra VA 02c86de4. */

/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */

void Rebirth_manager_Balance_Reload(long param_1)

{
  ulong uVar1;
  uint uVar2;
  undefined8 uVar3;
  undefined *puVar4;
  undefined *puVar5;
  undefined *puVar6;
  undefined8 uVar7;
  long lVar8;
  long *plVar9;
  undefined8 *puVar10;
  ulong uVar11;
  long lVar12;
  double dVar13;
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
  
  if ((bRam000000000625c380 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e63090);
    func_0x029f5a50(PTR_DAT_05e620b8);
    func_0x029f5a50(PTR_DAT_05e59000);
    bRam000000000625c380 = 1;
  }
  lVar8 = *(long *)(param_1 + 0x20);
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
  if (lVar8 != 0) {
    uVar2 = *(uint *)(lVar8 + 0x18);
    if (uVar2 == 0) {
LAB_02c87360:
                    /* WARNING: Subroutine does not return */
      Throw_Index_Wrapper();
    }
    if (*(long *)(lVar8 + 0x20) != 0) {
      *(undefined4 *)(*(long *)(lVar8 + 0x20) + 0x28) = 20000;
      if (uVar2 == 1) goto LAB_02c87360;
      if (*(long *)(lVar8 + 0x28) != 0) {
        *(undefined4 *)(*(long *)(lVar8 + 0x28) + 0x28) = 20000;
        puVar6 = PTR_DAT_05e63090;
        puVar5 = PTR_DAT_05e620b8;
        puVar4 = PTR_DAT_05e59000;
        if (uVar2 < 3) goto LAB_02c87360;
        if (*(long *)(lVar8 + 0x30) != 0) {
          uVar7 = *(undefined8 *)PTR_DAT_05e63090;
          *(undefined4 *)(*(long *)(lVar8 + 0x30) + 0x28) = 20000;
          lVar8 = func_0x029f5b40(uVar7,0x4e21);
          plVar9 = (long *)(param_1 + 0x28);
          *plVar9 = lVar8;
          Managed_WriteBarrier(plVar9,lVar8);
          InfVal_op_Implicit_0x600003f(&uStack_1a0,1,0);
          uVar3 = _UNK_01170a18;
          uVar7 = _UNK_0116fd58;
          uStack_98 = uStack_198;
          uStack_a0 = uStack_1a0;
          uStack_88 = uStack_188;
          uStack_90 = uStack_190;
          uVar11 = 0;
          do {
            if (*(int *)(*(long *)puVar4 + 0xe4) == 0) {
              func_0x029f5bd0();
            }
            uVar1 = uVar11 + 1;
            dVar13 = (double)Math_Pow_0x60008ae((double)(int)uVar1,uVar3,0);
            InfVal_op_Implicit_0x600004c(&uStack_1a0,dVar13 * 3.0,0);
            uStack_b8 = uStack_198;
            uStack_c0 = uStack_1a0;
            uStack_a8 = uStack_188;
            uStack_b0 = uStack_190;
            if (15000 < uVar11) {
              InfVal_op_Implicit_0x600004c(&uStack_1a0,uVar7,0);
              uStack_d8 = uStack_198;
              uStack_e0 = uStack_1a0;
              uStack_c8 = uStack_188;
              uStack_d0 = uStack_190;
              InfVal_op_Multiply_0x6000074(&uStack_1c0,&uStack_a0,&uStack_e0,0);
              uStack_f8 = uStack_1b8;
              uStack_100 = uStack_1c0;
              uStack_e8 = uStack_1a8;
              uStack_f0 = uStack_1b0;
              InfVal_ToPrecision_0x6000089(&uStack_1e0,&uStack_100,4,0);
              uStack_98 = uStack_1d8;
              uStack_a0 = uStack_1e0;
              uStack_88 = uStack_1c8;
              uStack_90 = uStack_1d0;
              InfVal_op_Multiply_0x6000074(&uStack_200,&uStack_c0,&uStack_a0,0);
              uStack_b8 = uStack_1f8;
              uStack_c0 = uStack_200;
              uStack_a8 = uStack_1e8;
              uStack_b0 = uStack_1f0;
            }
            lVar8 = *plVar9;
            InfVal_DiscardDecimal_return_0x600008c(&uStack_1a0,&uStack_c0,0);
            uStack_d8 = uStack_198;
            uStack_e0 = uStack_1a0;
            uStack_c8 = uStack_188;
            uStack_d0 = uStack_190;
            InfVal_ToPrecision_0x6000089(&uStack_1c0,&uStack_e0,3,0);
            if (lVar8 == 0) goto LAB_02c8708c;
            if (*(uint *)(lVar8 + 0x18) <= uVar11) goto LAB_02c87360;
            lVar8 = lVar8 + uVar11 * 0x20;
            *(undefined8 *)(lVar8 + 0x28) = uStack_1b8;
            *(undefined8 *)(lVar8 + 0x20) = uStack_1c0;
            *(undefined8 *)(lVar8 + 0x38) = uStack_1a8;
            *(undefined8 *)(lVar8 + 0x30) = uStack_1b0;
            Managed_WriteBarrier(lVar8 + 0x20,0);
            uVar11 = uVar1;
          } while (uVar1 != 0x4e21);
          lVar8 = *(long *)(param_1 + 0x20);
          if (lVar8 != 0) {
            lVar12 = 0;
            do {
              uVar7 = _UNK_0116fde8;
              if ((int)*(uint *)(lVar8 + 0x18) <= (int)(uint)lVar12) {
                uVar11 = 0;
                goto LAB_02c870a0;
              }
              if (*(uint *)(lVar8 + 0x18) <= (uint)lVar12) goto LAB_02c87360;
              lVar8 = *(long *)(lVar8 + lVar12 * 8 + 0x20);
              uVar7 = func_0x029f5b40(*(undefined8 *)puVar6,0x4e21);
              if (lVar8 == 0) break;
              puVar10 = (undefined8 *)(lVar8 + 0x30);
              *puVar10 = uVar7;
              Managed_WriteBarrier(puVar10,uVar7);
              lVar8 = *(long *)(param_1 + 0x20);
              lVar12 = lVar12 + 1;
            } while (lVar8 != 0);
          }
        }
      }
    }
  }
LAB_02c8708c:
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
LAB_02c870a0:
  lVar8 = *(long *)(param_1 + 0x20);
  if (lVar8 == 0) goto LAB_02c8708c;
  if (*(int *)(lVar8 + 0x18) == 0) goto LAB_02c87360;
  if (*(long *)(lVar8 + 0x20) == 0) goto LAB_02c8708c;
  lVar8 = *(long *)(*(long *)(lVar8 + 0x20) + 0x30);
  InfVal_op_Implicit_0x600004c(&uStack_1a0,uVar7,0);
  uStack_d8 = uStack_198;
  uStack_e0 = uStack_1a0;
  uStack_c8 = uStack_188;
  uStack_d0 = uStack_190;
  if (*(int *)(*(long *)puVar5 + 0xe4) == 0) {
    func_0x029f5bd0();
  }
  MathInfVal_Pow_0x60000f3(&uStack_1c0,&uStack_e0,uVar11 & 0xffffffff,1,0);
  uStack_f8 = uStack_1b8;
  uStack_100 = uStack_1c0;
  uStack_e8 = uStack_1a8;
  uStack_f0 = uStack_1b0;
  InfVal_op_Implicit_0x600003f(&uStack_1e0,100,0);
  uStack_118 = uStack_1d8;
  uStack_120 = uStack_1e0;
  uStack_108 = uStack_1c8;
  uStack_110 = uStack_1d0;
  InfVal_op_Multiply_0x6000074(&uStack_200,&uStack_100,&uStack_120,0);
  uStack_138 = uStack_1f8;
  uStack_140 = uStack_200;
  uStack_128 = uStack_1e8;
  uStack_130 = uStack_1f0;
  InfVal_op_Implicit_0x600003f(&uStack_220,100,0);
  uStack_158 = uStack_218;
  uStack_160 = uStack_220;
  uStack_148 = uStack_208;
  uStack_150 = uStack_210;
  InfVal_op_Subtraction_0x6000073(&uStack_240,&uStack_140,&uStack_160,0);
  uStack_178 = uStack_238;
  uStack_180 = uStack_240;
  uStack_168 = uStack_228;
  uStack_170 = uStack_230;
  InfVal_DiscardDecimal_return_0x600008c(&uStack_260,&uStack_180,0);
  uStack_178 = uStack_258;
  uStack_180 = uStack_260;
  uStack_168 = uStack_248;
  uStack_170 = uStack_250;
  InfVal_ToPrecision_0x6000089(&uStack_280,&uStack_180,3,0);
  if (lVar8 == 0) goto LAB_02c8708c;
  if (*(uint *)(lVar8 + 0x18) <= uVar11) goto LAB_02c87360;
  lVar8 = lVar8 + uVar11 * 0x20;
  *(undefined8 *)(lVar8 + 0x28) = uStack_278;
  *(undefined8 *)(lVar8 + 0x20) = uStack_280;
  *(undefined8 *)(lVar8 + 0x38) = uStack_268;
  *(undefined8 *)(lVar8 + 0x30) = uStack_270;
  Managed_WriteBarrier(lVar8 + 0x20,0);
  lVar8 = *(long *)(param_1 + 0x20);
  if (lVar8 == 0) goto LAB_02c8708c;
  if ((*(uint *)(lVar8 + 0x18) & 0xfffffffe) == 0) goto LAB_02c87360;
  if (*(long *)(lVar8 + 0x28) == 0) goto LAB_02c8708c;
  lVar8 = *(long *)(*(long *)(lVar8 + 0x28) + 0x30);
  InfVal_op_Implicit_0x600003f(&uStack_2a0,(int)uVar11 * 5,0);
  if (lVar8 == 0) goto LAB_02c8708c;
  if (*(uint *)(lVar8 + 0x18) <= uVar11) goto LAB_02c87360;
  lVar8 = lVar8 + uVar11 * 0x20;
  *(undefined8 *)(lVar8 + 0x28) = uStack_298;
  *(undefined8 *)(lVar8 + 0x20) = uStack_2a0;
  *(undefined8 *)(lVar8 + 0x38) = uStack_288;
  *(undefined8 *)(lVar8 + 0x30) = uStack_290;
  Managed_WriteBarrier(lVar8 + 0x20,0);
  lVar8 = *(long *)(param_1 + 0x20);
  if (lVar8 == 0) goto LAB_02c8708c;
  if (*(uint *)(lVar8 + 0x18) < 3) goto LAB_02c87360;
  if (*(long *)(lVar8 + 0x30) == 0) goto LAB_02c8708c;
  lVar8 = *(long *)(*(long *)(lVar8 + 0x30) + 0x30);
  InfVal_op_Implicit_0x600004c(&uStack_2c0,uVar7,0);
  uStack_d8 = uStack_2b8;
  uStack_e0 = uStack_2c0;
  uStack_c8 = uStack_2a8;
  uStack_d0 = uStack_2b0;
  MathInfVal_Pow_0x60000f3(&uStack_2e0,&uStack_e0,uVar11 & 0xffffffff,1,0);
  uStack_f8 = uStack_2d8;
  uStack_100 = uStack_2e0;
  uStack_e8 = uStack_2c8;
  uStack_f0 = uStack_2d0;
  InfVal_op_Implicit_0x600003f(&uStack_300,100,0);
  uStack_118 = uStack_2f8;
  uStack_120 = uStack_300;
  uStack_108 = uStack_2e8;
  uStack_110 = uStack_2f0;
  InfVal_op_Multiply_0x6000074(&uStack_320,&uStack_100,&uStack_120,0);
  uStack_138 = uStack_318;
  uStack_140 = uStack_320;
  uStack_128 = uStack_308;
  uStack_130 = uStack_310;
  InfVal_op_Implicit_0x600003f(&uStack_340,100,0);
  uStack_158 = uStack_338;
  uStack_160 = uStack_340;
  uStack_148 = uStack_328;
  uStack_150 = uStack_330;
  InfVal_op_Subtraction_0x6000073(&uStack_360,&uStack_140,&uStack_160,0);
  uStack_178 = uStack_358;
  uStack_180 = uStack_360;
  uStack_168 = uStack_348;
  uStack_170 = uStack_350;
  InfVal_DiscardDecimal_return_0x600008c(&uStack_380,&uStack_180,0);
  uStack_178 = uStack_378;
  uStack_180 = uStack_380;
  uStack_168 = uStack_368;
  uStack_170 = uStack_370;
  InfVal_ToPrecision_0x6000089(&uStack_3a0,&uStack_180,3,0);
  if (lVar8 == 0) goto LAB_02c8708c;
  if (*(uint *)(lVar8 + 0x18) <= uVar11) goto LAB_02c87360;
  lVar8 = lVar8 + uVar11 * 0x20;
  *(undefined8 *)(lVar8 + 0x28) = uStack_398;
  *(undefined8 *)(lVar8 + 0x20) = uStack_3a0;
  *(undefined8 *)(lVar8 + 0x38) = uStack_388;
  *(undefined8 *)(lVar8 + 0x30) = uStack_390;
  Managed_WriteBarrier(lVar8 + 0x20,0);
  uVar11 = uVar11 + 1;
  if (uVar11 == 0x4e21) {
    return;
  }
  goto LAB_02c870a0;
}

