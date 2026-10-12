/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2a7e1cc, Ghidra VA 02b7e1cc. */

void Gamemanager_MoneyValue_return(undefined8 *param_1,undefined8 *param_2)

{
  undefined *puVar1;
  undefined *puVar2;
  int iVar3;
  undefined8 uVar4;
  ulong uVar5;
  long lVar6;
  undefined8 uVar7;
  undefined8 *puVar8;
  undefined8 uVar9;
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
  undefined8 uStack_60;
  undefined8 uStack_58;
  undefined8 uStack_50;
  undefined8 uStack_48;
  
  puVar1 = PTR_DAT_05e5d338;
  if ((bRam000000000625b8b4 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e5d4c0);
    func_0x029f5a50(PTR_DAT_05e5d4f8);
    func_0x029f5a50(PTR_DAT_05e5d500);
    func_0x029f5a50(PTR_DAT_05e5d508);
    func_0x029f5a50(PTR_DAT_05e5d510);
    func_0x029f5a50(PTR_DAT_05e5d338);
    func_0x029f5a50(PTR_DAT_05e591c0);
    func_0x029f5a50(PTR_DAT_05e5d4d0);
    func_0x029f5a50(PTR_DAT_05e5d518);
    func_0x029f5a50(PTR_DAT_05e5d520);
    func_0x029f5a50(PTR_DAT_05e5d4d8);
    func_0x029f5a50(PTR_DAT_05e5d4e0);
    func_0x029f5a50(PTR_DAT_05e5d4e8);
    bRam000000000625b8b4 = 1;
  }
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
  uStack_58 = param_2[1];
  uStack_60 = *param_2;
  uStack_48 = param_2[3];
  uStack_50 = param_2[2];
  if (*(int *)(*(long *)puVar1 + 0xe4) == 0) {
    func_0x029f5bd0();
  }
  uStack_118 = uStack_58;
  uStack_120 = uStack_60;
  uStack_108 = uStack_48;
  uStack_110 = uStack_50;
  uVar4 = Gamemanager_GetMoneyCacheKey_0x6000072(&uStack_120);
  lVar6 = *(long *)(*(long *)(*(long *)puVar1 + 0xb8) + 0x160);
  if (lVar6 == 0) goto LAB_02b7e714;
  puVar8 = &uStack_80;
  uVar5 = func_0x03e3e520(lVar6,uVar4,&uStack_80,*(undefined8 *)PTR_DAT_05e5d500);
  if ((uVar5 & 1) == 0) {
    if (*(int *)(*(long *)PTR_DAT_05e5d4e8 + 0xe4) == 0) {
      func_0x029f5bd0();
    }
    Upgrade_manager_Money_return_0x6000f96(&uStack_60,0);
    uStack_b8 = uStack_58;
    uStack_c0 = uStack_60;
    uStack_a8 = uStack_48;
    uStack_b0 = uStack_50;
    InfVal_op_Multiply_0x6000074(&uStack_140,param_2,&uStack_c0,0);
    uStack_d8 = uStack_138;
    uStack_e0 = uStack_140;
    uStack_c8 = uStack_128;
    uStack_d0 = uStack_130;
    InfVal_op_Implicit_0x600003f(&uStack_160,100,0);
    uStack_f8 = uStack_158;
    uStack_100 = uStack_160;
    uStack_e8 = uStack_148;
    uStack_f0 = uStack_150;
    InfVal_op_Division_0x6000075(&uStack_180,&uStack_e0,&uStack_100,0);
    uStack_98 = uStack_178;
    uStack_a0 = uStack_180;
    uStack_88 = uStack_168;
    uStack_90 = uStack_170;
    Rebirth_manager_Money_return(&uStack_1a0,0);
    uStack_b8 = uStack_198;
    uStack_c0 = uStack_1a0;
    uStack_a8 = uStack_188;
    uStack_b0 = uStack_190;
    InfVal_op_Multiply_0x6000074(&uStack_1c0,&uStack_a0,&uStack_c0,0);
    uStack_d8 = uStack_1b8;
    uStack_e0 = uStack_1c0;
    uStack_c8 = uStack_1a8;
    uStack_d0 = uStack_1b0;
    InfVal_op_Implicit_0x600003f(&uStack_1e0,100,0);
    uStack_f8 = uStack_1d8;
    uStack_100 = uStack_1e0;
    uStack_e8 = uStack_1c8;
    uStack_f0 = uStack_1d0;
    InfVal_op_Division_0x6000075(&uStack_200,&uStack_e0,&uStack_100,0);
    uStack_98 = uStack_1f8;
    uStack_a0 = uStack_200;
    uStack_88 = uStack_1e8;
    uStack_90 = uStack_1f0;
    InfVal_op_Implicit_0x600003f
              (&uStack_220,*(undefined4 *)(*(long *)(*(long *)PTR_DAT_05e5d4e0 + 0xb8) + 8),0);
    uStack_b8 = uStack_218;
    uStack_c0 = uStack_220;
    uStack_a8 = uStack_208;
    uStack_b0 = uStack_210;
    InfVal_op_Multiply_0x6000074(&uStack_240,&uStack_a0,&uStack_c0,0);
    uStack_d8 = uStack_238;
    uStack_e0 = uStack_240;
    uStack_c8 = uStack_228;
    uStack_d0 = uStack_230;
    InfVal_op_Implicit_0x600003f(&uStack_260,100,0);
    uStack_f8 = uStack_258;
    uStack_100 = uStack_260;
    uStack_e8 = uStack_248;
    uStack_f0 = uStack_250;
    InfVal_op_Division_0x6000075(&uStack_280,&uStack_e0,&uStack_100,0);
    puVar2 = PTR_DAT_05e5d4d0;
    lVar6 = *(long *)PTR_DAT_05e5d4d0;
    uStack_98 = uStack_278;
    uStack_a0 = uStack_280;
    uStack_88 = uStack_268;
    uStack_90 = uStack_270;
    if (*(int *)(lVar6 + 0xe4) == 0) {
      func_0x029f5bd0();
      lVar6 = *(long *)puVar2;
    }
    InfVal_op_Multiply_0x6000074(&uStack_2a0,&uStack_a0,*(undefined8 *)(lVar6 + 0xb8),0);
    uStack_b8 = uStack_298;
    uStack_c0 = uStack_2a0;
    uStack_a8 = uStack_288;
    uStack_b0 = uStack_290;
    InfVal_op_Implicit_0x600003f(&uStack_2c0,100,0);
    uStack_d8 = uStack_2b8;
    uStack_e0 = uStack_2c0;
    uStack_c8 = uStack_2a8;
    uStack_d0 = uStack_2b0;
    InfVal_op_Division_0x6000075(&uStack_2e0,&uStack_c0,&uStack_e0,0);
    puVar2 = PTR_DAT_05e5d4d8;
    lVar6 = *(long *)PTR_DAT_05e5d4d8;
    uStack_98 = uStack_2d8;
    uStack_a0 = uStack_2e0;
    uStack_88 = uStack_2c8;
    uStack_90 = uStack_2d0;
    if (*(int *)(lVar6 + 0xe4) == 0) {
      func_0x029f5bd0();
      lVar6 = *(long *)puVar2;
    }
    InfVal_op_Multiply_0x6000074(&uStack_300,&uStack_a0,*(long *)(lVar6 + 0xb8) + 0x20,0);
    uStack_b8 = uStack_2f8;
    uStack_c0 = uStack_300;
    uStack_a8 = uStack_2e8;
    uStack_b0 = uStack_2f0;
    InfVal_op_Implicit_0x600003f(&uStack_320,100,0);
    uStack_d8 = uStack_318;
    uStack_e0 = uStack_320;
    uStack_c8 = uStack_308;
    uStack_d0 = uStack_310;
    InfVal_op_Division_0x6000075(&uStack_340,&uStack_c0,&uStack_e0,0);
    puVar2 = PTR_DAT_05e5d4c0;
    lVar6 = *(long *)PTR_DAT_05e5d4c0;
    uStack_98 = uStack_338;
    uStack_a0 = uStack_340;
    uStack_88 = uStack_328;
    uStack_90 = uStack_330;
    if (*(int *)(lVar6 + 0xe4) == 0) {
      func_0x029f5bd0();
      lVar6 = *(long *)puVar2;
    }
    uVar7 = **(undefined8 **)(lVar6 + 0xb8);
    if (*(int *)(*(long *)PTR_DAT_05e591c0 + 0xe4) == 0) {
      func_0x029f5bd0(*(long *)PTR_DAT_05e591c0);
    }
    uVar5 = Object_op_Inequality_0x6000ded(uVar7,0,0);
    if ((uVar5 & 1) != 0) {
      lVar6 = *(long *)puVar2;
      if (*(int *)(lVar6 + 0xe4) == 0) {
        func_0x029f5bd0();
        lVar6 = *(long *)puVar2;
      }
      if (**(long **)(lVar6 + 0xb8) == 0) goto LAB_02b7e714;
      uVar7 = Buff_manager_GetMult_0x600070d(**(long **)(lVar6 + 0xb8),0,0);
      InfVal_op_Implicit_0x600003f(&uStack_60,uVar7,0);
      uStack_b8 = uStack_58;
      uStack_c0 = uStack_60;
      uStack_a8 = uStack_48;
      uStack_b0 = uStack_50;
      InfVal_op_Multiply_0x6000074(&uStack_140,&uStack_a0,&uStack_c0,0);
      uStack_98 = uStack_138;
      uStack_a0 = uStack_140;
      uStack_88 = uStack_128;
      uStack_90 = uStack_130;
    }
    lVar6 = *(long *)puVar1;
    if (*(int *)(lVar6 + 0xe4) == 0) {
      func_0x029f5bd0();
      lVar6 = *(long *)puVar1;
    }
    lVar6 = *(long *)(*(long *)(lVar6 + 0xb8) + 0x160);
    if (lVar6 == 0) goto LAB_02b7e714;
    iVar3 = func_0x03e3c550(lVar6,*(undefined8 *)PTR_DAT_05e5d508);
    if (0x31 < iVar3) {
      lVar6 = *(long *)puVar1;
      if (*(int *)(lVar6 + 0xe4) == 0) {
        func_0x029f5bd0();
        lVar6 = *(long *)puVar1;
      }
      lVar6 = *(long *)(*(long *)(lVar6 + 0xb8) + 0x168);
      if (lVar6 == 0) goto LAB_02b7e714;
      uVar7 = func_0x03714074(lVar6,*(undefined8 *)PTR_DAT_05e5d518);
      lVar6 = *(long *)(*(long *)(*(long *)puVar1 + 0xb8) + 0x160);
      if (lVar6 == 0) goto LAB_02b7e714;
      func_0x03e3deb4(lVar6,uVar7,*(undefined8 *)PTR_DAT_05e5d4f8);
    }
    lVar6 = *(long *)puVar1;
    if (*(int *)(lVar6 + 0xe4) == 0) {
      func_0x029f5bd0();
      lVar6 = *(long *)puVar1;
    }
    lVar6 = *(long *)(*(long *)(lVar6 + 0xb8) + 0x160);
    if (lVar6 != 0) {
      uStack_58 = uStack_98;
      uStack_60 = uStack_a0;
      uStack_48 = uStack_88;
      uStack_50 = uStack_90;
      func_0x03e3c890(lVar6,uVar4,&uStack_60,*(undefined8 *)PTR_DAT_05e5d510);
      lVar6 = *(long *)(*(long *)(*(long *)puVar1 + 0xb8) + 0x168);
      if (lVar6 != 0) {
        func_0x03713ee4(lVar6,uVar4,*(undefined8 *)PTR_DAT_05e5d520);
        puVar8 = &uStack_a0;
        goto LAB_02b7e6f4;
      }
    }
LAB_02b7e714:
                    /* WARNING: Subroutine does not return */
    Throw_NullReference_Wrapper();
  }
LAB_02b7e6f4:
  uVar4 = *puVar8;
  uVar9 = puVar8[3];
  uVar7 = puVar8[2];
  param_1[1] = puVar8[1];
  *param_1 = uVar4;
  param_1[3] = uVar9;
  param_1[2] = uVar7;
  return;
}

