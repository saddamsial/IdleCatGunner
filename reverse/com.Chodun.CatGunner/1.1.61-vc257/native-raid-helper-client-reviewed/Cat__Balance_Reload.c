/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b38f10, Ghidra VA 02c38f10. */

void Cat__Balance_Reload(long param_1,uint param_2,long param_3)

{
  int iVar1;
  undefined *puVar2;
  undefined *puVar3;
  undefined *puVar4;
  undefined4 uVar5;
  int iVar6;
  int iVar7;
  undefined8 uVar8;
  ulong uVar9;
  long lVar10;
  long lVar11;
  uint uVar12;
  undefined8 *puVar13;
  float fVar14;
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
  
  puVar2 = PTR_DAT_05e5d5b0;
  if ((bRam000000000625c08a & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e631e0);
    func_0x029f5a50(PTR_DAT_05e5d4c0);
    func_0x029f5a50(PTR_DAT_05e5d5b0);
    func_0x029f5a50(PTR_DAT_05e5dd38);
    func_0x029f5a50(PTR_DAT_05e591c0);
    func_0x029f5a50(PTR_DAT_05e5d4d0);
    func_0x029f5a50(PTR_DAT_05e5e070);
    func_0x029f5a50(PTR_DAT_05e5d4d8);
    func_0x029f5a50(PTR_DAT_05e5d4e0);
    func_0x029f5a50(PTR_DAT_05e5e058);
    func_0x029f5a50(PTR_DAT_05e5dc20);
    func_0x029f5a50(PTR_DAT_05e5d368);
    func_0x029f5a50(PTR_DAT_05e5d4e8);
    func_0x029f5a50(PTR_DAT_05e5e040);
    bRam000000000625c08a = 1;
  }
  *(long *)(param_1 + 0x48) = param_3;
  *(uint *)(param_1 + 0x40) = param_2;
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
  Managed_WriteBarrier((long *)(param_1 + 0x48),param_3);
  puVar4 = PTR_DAT_05e5d4d8;
  puVar3 = PTR_DAT_05e5d4d0;
  lVar10 = *(long *)(*(long *)(*(long *)puVar2 + 0xb8) + 8);
  if (lVar10 == 0) goto LAB_02c399a0;
  uVar5 = func_0x032b04d4(*(undefined8 *)(lVar10 + 0x20),param_1,*(undefined8 *)PTR_DAT_05e631e0);
  fVar14 = 15.0;
  *(undefined4 *)(param_1 + 0x268) = uVar5;
  lVar10 = *(long *)puVar3;
  if (*(char *)(param_1 + 0x1b0) != '\0') {
    fVar14 = 17.0;
  }
  *(float *)(param_1 + 0x20) = fVar14;
  if (*(int *)(lVar10 + 0xe4) == 0) {
    func_0x029f5bd0();
    lVar10 = *(long *)puVar3;
  }
  puVar2 = PTR_DAT_05e5d368;
  lVar11 = *(long *)puVar4;
  iVar1 = *(int *)(*(long *)(lVar10 + 0xb8) + 0x20);
  if (*(int *)(lVar11 + 0xe4) == 0) {
    func_0x029f5bd0(lVar11);
    lVar11 = *(long *)puVar4;
  }
  lVar10 = *(long *)puVar2;
  *(float *)(param_1 + 0x20) =
       (fVar14 * (float)(*(int *)(*(long *)(lVar11 + 0xb8) + 0x60) + iVar1)) / 100.0;
  if (**(long **)(lVar10 + 0xb8) == 0) goto LAB_02c399a0;
  iVar1 = *(int *)(**(long **)(lVar10 + 0xb8) + 0x20);
  if (iVar1 == 4) {
    uVar12 = 1;
    *(undefined4 *)(param_1 + 0x128) = 0x3c;
    *(undefined4 *)(param_1 + 0xa4) = 0x42700000;
LAB_02c39110:
    if (param_3 == 0) goto LAB_02c399a0;
    uStack_e8 = *(undefined8 *)(param_3 + 0x28);
    uStack_f0 = *(undefined8 *)(param_3 + 0x20);
    uStack_d8 = *(undefined8 *)(param_3 + 0x38);
    uStack_e0 = *(undefined8 *)(param_3 + 0x30);
    *(undefined8 *)(param_1 + 0x58) = uStack_e8;
    *(undefined8 *)(param_1 + 0x50) = uStack_f0;
    *(undefined8 *)(param_1 + 0x68) = uStack_d8;
    *(undefined8 *)(param_1 + 0x60) = uStack_e0;
    Managed_WriteBarrier(param_1 + 0x50,0);
    if (iVar1 != 5) goto LAB_02c39240;
LAB_02c392b0:
    puVar3 = PTR_DAT_05e5dd38;
    puVar13 = (undefined8 *)(param_1 + 0x50);
    InfVal_op_Implicit_0x600003f(&uStack_130,**(undefined4 **)(*(long *)PTR_DAT_05e5d4e0 + 0xb8),0);
    uStack_88 = uStack_128;
    uStack_90 = uStack_130;
    uStack_78 = uStack_118;
    uStack_80 = uStack_120;
    InfVal_op_Multiply_0x6000074(&uStack_150,puVar13,&uStack_90,0);
    uStack_a8 = uStack_148;
    uStack_b0 = uStack_150;
    uStack_98 = uStack_138;
    uStack_a0 = uStack_140;
    InfVal_op_Implicit_0x600003f(&uStack_170,100,0);
    uStack_c8 = uStack_168;
    uStack_d0 = uStack_170;
    uStack_b8 = uStack_158;
    uStack_c0 = uStack_160;
    InfVal_op_Division_0x6000075(&uStack_190,&uStack_b0,&uStack_d0,0);
    *(undefined8 *)(param_1 + 0x58) = uStack_188;
    *puVar13 = uStack_190;
    *(undefined8 *)(param_1 + 0x68) = uStack_178;
    *(undefined8 *)(param_1 + 0x60) = uStack_180;
    Managed_WriteBarrier(puVar13,0);
    puVar2 = PTR_DAT_05e5d4c0;
    if (**(long **)(*(long *)puVar3 + 0xb8) == 0) goto LAB_02c399a0;
    iVar6 = Fish_manager_GetTotalDamage_0x60009a3(**(long **)(*(long *)puVar3 + 0xb8),0);
    InfVal_op_Implicit_0x600003f(&uStack_1b0,iVar6 + 100,0);
    uStack_88 = uStack_1a8;
    uStack_90 = uStack_1b0;
    uStack_78 = uStack_198;
    uStack_80 = uStack_1a0;
    InfVal_op_Multiply_0x6000074(&uStack_1d0,puVar13,&uStack_90,0);
    uStack_a8 = uStack_1c8;
    uStack_b0 = uStack_1d0;
    uStack_98 = uStack_1b8;
    uStack_a0 = uStack_1c0;
    InfVal_op_Implicit_0x600003f(&uStack_1f0,100,0);
    uStack_c8 = uStack_1e8;
    uStack_d0 = uStack_1f0;
    uStack_b8 = uStack_1d8;
    uStack_c0 = uStack_1e0;
    InfVal_op_Division_0x6000075(&uStack_210,&uStack_b0,&uStack_d0,0);
    *(undefined8 *)(param_1 + 0x58) = uStack_208;
    *puVar13 = uStack_210;
    *(undefined8 *)(param_1 + 0x68) = uStack_1f8;
    *(undefined8 *)(param_1 + 0x60) = uStack_200;
    Managed_WriteBarrier(puVar13,0);
    lVar10 = *(long *)puVar4;
    if (*(int *)(lVar10 + 0xe4) == 0) {
      func_0x029f5bd0();
      lVar10 = *(long *)puVar4;
    }
    InfVal_op_Multiply_0x6000074(&uStack_230,puVar13,*(undefined8 *)(lVar10 + 0xb8),0);
    uStack_88 = uStack_228;
    uStack_90 = uStack_230;
    uStack_78 = uStack_218;
    uStack_80 = uStack_220;
    InfVal_op_Implicit_0x600003f(&uStack_250,100,0);
    uStack_a8 = uStack_248;
    uStack_b0 = uStack_250;
    uStack_98 = uStack_238;
    uStack_a0 = uStack_240;
    InfVal_op_Division_0x6000075(&uStack_270,&uStack_90,&uStack_b0,0);
    uStack_c8 = uStack_268;
    uStack_d0 = uStack_270;
    uStack_b8 = uStack_258;
    uStack_c0 = uStack_260;
    InfVal_DiscardDecimal_return_0x600008c(&uStack_290,&uStack_d0,0);
    *(undefined8 *)(param_1 + 0x58) = uStack_288;
    *puVar13 = uStack_290;
    *(undefined8 *)(param_1 + 0x68) = uStack_278;
    *(undefined8 *)(param_1 + 0x60) = uStack_280;
    Managed_WriteBarrier(puVar13,0);
    lVar10 = *(long *)puVar2;
    if (*(int *)(lVar10 + 0xe4) == 0) {
      func_0x029f5bd0();
      lVar10 = *(long *)puVar2;
    }
    if (**(long **)(lVar10 + 0xb8) == 0) goto LAB_02c399a0;
    uVar8 = Buff_manager_GetMult_0x600070d(**(long **)(lVar10 + 0xb8),1);
    InfVal_op_Implicit_0x600003f(&uStack_2b0,uVar8,0);
    uStack_88 = uStack_2a8;
    uStack_90 = uStack_2b0;
    uStack_78 = uStack_298;
    uStack_80 = uStack_2a0;
    InfVal_op_Multiply_0x6000074(&uStack_2d0,puVar13,&uStack_90,0);
    *(undefined8 *)(param_1 + 0x58) = uStack_2c8;
    *puVar13 = uStack_2d0;
    *(undefined8 *)(param_1 + 0x68) = uStack_2b8;
    *(undefined8 *)(param_1 + 0x60) = uStack_2c0;
    Managed_WriteBarrier(puVar13,0);
    uVar9 = Cat__get_is_Helper(param_1);
    if ((uVar9 & 1) == 0) {
      uStack_128 = *(undefined8 *)(param_1 + 0x58);
      uStack_130 = *puVar13;
      uStack_118 = *(undefined8 *)(param_1 + 0x68);
      uStack_120 = *(undefined8 *)(param_1 + 0x60);
      uVar5 = *(undefined4 *)(param_1 + 0x268);
      if (*(int *)(*(long *)PTR_DAT_05e5e058 + 0xe4) == 0) {
        func_0x029f5bd0();
      }
      uStack_2e8 = uStack_128;
      uStack_2f0 = uStack_130;
      uStack_2d8 = uStack_118;
      uStack_2e0 = uStack_120;
      StarUpgrade_manager_Damage_Apply_Slot_0x6000ae3(&uStack_110,&uStack_2f0,uVar5,0);
    }
    else {
      uStack_128 = *(undefined8 *)(param_1 + 0x58);
      uStack_130 = *puVar13;
      uStack_118 = *(undefined8 *)(param_1 + 0x68);
      uStack_120 = *(undefined8 *)(param_1 + 0x60);
      if (*(int *)(*(long *)PTR_DAT_05e5e070 + 0xe4) == 0) {
        func_0x029f5bd0();
      }
      uVar5 = Raid_manager__Helper_StarLv_return(0);
      if (*(int *)(*(long *)PTR_DAT_05e5e058 + 0xe4) == 0) {
        func_0x029f5bd0(*(long *)PTR_DAT_05e5e058);
      }
      uStack_308 = uStack_128;
      uStack_310 = uStack_130;
      uStack_2f8 = uStack_118;
      uStack_300 = uStack_120;
      StarUpgrade_manager_Damage_Apply_0x6000ae2(&uStack_150,&uStack_310,uVar5,0);
      uStack_108 = uStack_148;
      uStack_110 = uStack_150;
      uStack_f8 = uStack_138;
      uStack_100 = uStack_140;
    }
    *(undefined8 *)(param_1 + 0x58) = uStack_108;
    *puVar13 = uStack_110;
    *(undefined8 *)(param_1 + 0x68) = uStack_f8;
    *(undefined8 *)(param_1 + 0x60) = uStack_100;
    Managed_WriteBarrier(puVar13,0);
    puVar2 = PTR_DAT_05e5e070;
    if (iVar1 == 5) {
      lVar10 = *(long *)PTR_DAT_05e5e070;
      if (*(int *)(lVar10 + 0xe4) == 0) {
        func_0x029f5bd0();
        lVar10 = *(long *)puVar2;
      }
      uVar8 = **(undefined8 **)(lVar10 + 0xb8);
      if (*(int *)(*(long *)PTR_DAT_05e591c0 + 0xe4) == 0) {
        func_0x029f5bd0(*(long *)PTR_DAT_05e591c0);
      }
      uVar9 = Object_op_Inequality_0x6000ded(uVar8,0,0);
      if ((uVar9 & 1) != 0) {
        lVar10 = *(long *)puVar2;
        iVar6 = *(int *)(param_3 + 0x18);
        if (*(int *)(lVar10 + 0xe4) == 0) {
          func_0x029f5bd0();
          lVar10 = *(long *)puVar2;
        }
        if (**(long **)(lVar10 + 0xb8) == 0) goto LAB_02c399a0;
        iVar7 = Raid_manager_Buff_GunNum_return_0x6000927(**(long **)(lVar10 + 0xb8),0);
        if (iVar6 == iVar7) {
          InfVal_op_Implicit_0x600003f(&uStack_130,10,0);
          uStack_88 = uStack_128;
          uStack_90 = uStack_130;
          uStack_78 = uStack_118;
          uStack_80 = uStack_120;
          InfVal_op_Multiply_0x6000074(&uStack_150,puVar13,&uStack_90,0);
          *(undefined8 *)(param_1 + 0x58) = uStack_148;
          *puVar13 = uStack_150;
          *(undefined8 *)(param_1 + 0x68) = uStack_138;
          *(undefined8 *)(param_1 + 0x60) = uStack_140;
          Managed_WriteBarrier(puVar13,0);
        }
      }
    }
    uVar8 = InfVal_InfVal_change_0x60000a8(puVar13,0);
    *(undefined8 *)(param_1 + 0x90) = uVar8;
    Managed_WriteBarrier();
    if (**(long **)(*(long *)puVar3 + 0xb8) == 0) goto LAB_02c399a0;
    iVar6 = Fish_manager_GetTotalCriVal_0x60009a5(**(long **)(*(long *)puVar3 + 0xb8),0);
    InfVal_op_Implicit_0x600003f(&uStack_130,iVar6 + 0x7d,0);
    uStack_88 = uStack_128;
    uStack_90 = uStack_130;
    uStack_78 = uStack_118;
    uStack_80 = uStack_120;
    InfVal_op_Multiply_0x6000074(&uStack_150,puVar13,&uStack_90,0);
    uStack_a8 = uStack_148;
    uStack_b0 = uStack_150;
    uStack_98 = uStack_138;
    uStack_a0 = uStack_140;
    InfVal_op_Implicit_0x600003f(&uStack_170,100,0);
    uStack_c8 = uStack_168;
    uStack_d0 = uStack_170;
    uStack_b8 = uStack_158;
    uStack_c0 = uStack_160;
    InfVal_op_Division_0x6000075(&uStack_190,&uStack_b0,&uStack_d0,0);
    *(undefined8 *)(param_1 + 0x78) = uStack_188;
    *(undefined8 *)(param_1 + 0x70) = uStack_190;
    *(undefined8 *)(param_1 + 0x88) = uStack_178;
    *(undefined8 *)(param_1 + 0x80) = uStack_180;
    Managed_WriteBarrier(param_1 + 0x70,0);
    lVar10 = *(long *)puVar4;
    if (*(int *)(lVar10 + 0xe4) == 0) {
      func_0x029f5bd0();
      lVar10 = *(long *)puVar4;
    }
    InfVal_op_Multiply_0x6000074(&uStack_1b0,param_1 + 0x70,*(long *)(lVar10 + 0xb8) + 0x40,0);
    uStack_88 = uStack_1a8;
    uStack_90 = uStack_1b0;
    uStack_78 = uStack_198;
    uStack_80 = uStack_1a0;
    InfVal_op_Implicit_0x600003f(&uStack_1d0,100,0);
    uStack_a8 = uStack_1c8;
    uStack_b0 = uStack_1d0;
    uStack_98 = uStack_1b8;
    uStack_a0 = uStack_1c0;
    InfVal_op_Division_0x6000075(&uStack_1f0,&uStack_90,&uStack_b0,0);
    uStack_c8 = uStack_1e8;
    uStack_d0 = uStack_1f0;
    uStack_b8 = uStack_1d8;
    uStack_c0 = uStack_1e0;
    InfVal_DiscardDecimal_return_0x600008c(&uStack_210,&uStack_d0,0);
    *(undefined8 *)(param_1 + 0x78) = uStack_208;
    *(undefined8 *)(param_1 + 0x70) = uStack_210;
    *(undefined8 *)(param_1 + 0x88) = uStack_1f8;
    *(undefined8 *)(param_1 + 0x80) = uStack_200;
    Managed_WriteBarrier(param_1 + 0x70,0);
    uVar8 = InfVal_InfVal_change_0x60000a8(param_1 + 0x70,0);
    *(undefined8 *)(param_1 + 0x98) = uVar8;
    Managed_WriteBarrier();
    if (**(long **)(*(long *)puVar3 + 0xb8) == 0) goto LAB_02c399a0;
    uVar9 = Fish_manager_GetTotalCriPer_0x60009a4(**(long **)(*(long *)puVar3 + 0xb8),0);
    *(float *)(param_1 + 0xa0) = (float)(int)uVar9 / 100.0;
    puVar2 = PTR_DAT_05e5dc20;
    if (iVar1 == 0) {
      lVar10 = *(long *)PTR_DAT_05e5dc20;
      if (*(int *)(lVar10 + 0xe4) == 0) {
        func_0x029f5bd0();
        lVar10 = *(long *)puVar2;
      }
      lVar10 = *(long *)(*(long *)(lVar10 + 0xb8) + 0x10);
      if (lVar10 == 0) goto LAB_02c399a0;
      uVar9 = Tree_manager_is_Clear_Stage_0x6000f10(lVar10,0);
      if ((uVar9 & 1) != 0) {
        *(float *)(param_1 + 0x20) = *(float *)(param_1 + 0x20) + *(float *)(param_1 + 0x20);
      }
    }
  }
  else {
    *(undefined4 *)(param_1 + 0x128) = 0x24;
    *(undefined4 *)(param_1 + 0xa4) = 0x42200000;
    if (iVar1 != 2) {
      uVar12 = iVar1 - 3;
      if (uVar12 < 3) goto LAB_02c39110;
      if (param_3 == 0) goto LAB_02c399a0;
      if (*(int *)(*(long *)PTR_DAT_05e5d4e8 + 0xe4) == 0) {
        func_0x029f5bd0();
      }
      Upgrade_manager_Power_return_0x6000f95(&uStack_130,0);
      uStack_88 = uStack_128;
      uStack_90 = uStack_130;
      uStack_78 = uStack_118;
      uStack_80 = uStack_120;
      InfVal_op_Multiply_0x6000074(&uStack_150,param_3 + 0x20,&uStack_90,0);
      uStack_a8 = uStack_148;
      uStack_b0 = uStack_150;
      uStack_98 = uStack_138;
      uStack_a0 = uStack_140;
      InfVal_op_Implicit_0x600003f(&uStack_170,100,0);
      uStack_c8 = uStack_168;
      uStack_d0 = uStack_170;
      uStack_b8 = uStack_158;
      uStack_c0 = uStack_160;
      InfVal_op_Division_0x6000075(&uStack_f0,&uStack_b0,&uStack_d0,0);
      *(undefined8 *)(param_1 + 0x58) = uStack_e8;
      *(undefined8 *)(param_1 + 0x50) = uStack_f0;
      *(undefined8 *)(param_1 + 0x68) = uStack_d8;
      *(undefined8 *)(param_1 + 0x60) = uStack_e0;
      Managed_WriteBarrier(param_1 + 0x50,0);
LAB_02c39240:
      puVar13 = (undefined8 *)(param_1 + 0x50);
      Rebirth_manager_Damage_return_0x6000c89(&uStack_130,0);
      uStack_88 = uStack_128;
      uStack_90 = uStack_130;
      uStack_78 = uStack_118;
      uStack_80 = uStack_120;
      InfVal_op_Multiply_0x6000074(&uStack_150,puVar13,&uStack_90,0);
      uStack_a8 = uStack_148;
      uStack_b0 = uStack_150;
      uStack_98 = uStack_138;
      uStack_a0 = uStack_140;
      InfVal_op_Implicit_0x600003f(&uStack_170,100,0);
      uStack_c8 = uStack_168;
      uStack_d0 = uStack_170;
      uStack_b8 = uStack_158;
      uStack_c0 = uStack_160;
      InfVal_op_Division_0x6000075(&uStack_190,&uStack_b0,&uStack_d0,0);
      *(undefined8 *)(param_1 + 0x58) = uStack_188;
      *puVar13 = uStack_190;
      *(undefined8 *)(param_1 + 0x68) = uStack_178;
      *(undefined8 *)(param_1 + 0x60) = uStack_180;
      Managed_WriteBarrier(puVar13,0);
      goto LAB_02c392b0;
    }
    InfVal_op_Implicit_0x600003f(&uStack_130,1,0);
    *(undefined8 *)(param_1 + 0x58) = uStack_128;
    *(undefined8 *)(param_1 + 0x50) = uStack_130;
    *(undefined8 *)(param_1 + 0x68) = uStack_118;
    *(undefined8 *)(param_1 + 0x60) = uStack_120;
    Managed_WriteBarrier(param_1 + 0x50,0);
    *(undefined8 *)(param_1 + 0x90) = *(undefined8 *)PTR_DAT_05e5e040;
    uVar9 = Managed_WriteBarrier((undefined8 *)(param_1 + 0x90));
    *(undefined4 *)(param_1 + 0xa0) = 0;
    if (param_3 == 0) goto LAB_02c399a0;
    uVar12 = 0xffffffff;
  }
  uVar5 = Cat_CalculateAtkCoolMax_0x6000730
                    (*(undefined4 *)(param_3 + 0x40),uVar9,uVar12 < 3,iVar1 == 0,iVar1 == 5);
  lVar10 = *(long *)(param_1 + 0x118);
  *(undefined4 *)(param_1 + 0xb0) = uVar5;
  if (lVar10 != 0) {
    if (*(uint *)(lVar10 + 0x18) <= param_2) {
LAB_02c399c8:
                    /* WARNING: Subroutine does not return */
      Throw_Index_Wrapper();
    }
    lVar11 = (long)(int)param_2;
    lVar10 = *(long *)(lVar10 + lVar11 * 8 + 0x20);
    if (lVar10 != 0) {
      *(undefined8 *)(param_1 + 0xe0) = *(undefined8 *)(lVar10 + 0x20);
      Managed_WriteBarrier((undefined8 *)(param_1 + 0xe0));
      lVar10 = *(long *)(param_1 + 0x118);
      if (lVar10 != 0) {
        if (*(uint *)(lVar10 + 0x18) <= param_2) goto LAB_02c399c8;
        lVar10 = *(long *)(lVar10 + lVar11 * 8 + 0x20);
        if (lVar10 != 0) {
          *(undefined8 *)(param_1 + 0xf0) = *(undefined8 *)(lVar10 + 0x28);
          Managed_WriteBarrier((undefined8 *)(param_1 + 0xf0));
          lVar10 = *(long *)(param_1 + 0x118);
          if (lVar10 != 0) {
            if (*(uint *)(lVar10 + 0x18) <= param_2) goto LAB_02c399c8;
            lVar10 = *(long *)(lVar10 + lVar11 * 8 + 0x20);
            if (lVar10 != 0) {
              *(undefined8 *)(param_1 + 0xf8) = *(undefined8 *)(lVar10 + 0x30);
              Managed_WriteBarrier((undefined8 *)(param_1 + 0xf8));
              lVar10 = *(long *)(param_1 + 0x118);
              if (lVar10 != 0) {
                lVar11 = 0;
                while( true ) {
                  uVar12 = (uint)lVar11;
                  if ((int)*(uint *)(lVar10 + 0x18) <= (int)uVar12) break;
                  if (*(uint *)(lVar10 + 0x18) <= uVar12) goto LAB_02c399c8;
                  lVar10 = *(long *)(lVar10 + lVar11 * 8 + 0x20);
                  if ((lVar10 == 0) ||
                     (lVar10 = Component_get_gameObject_0x6000c83(lVar10,0), lVar10 == 0))
                  goto LAB_02c399a0;
                  GameObject_SetActive_0x6000cfe(lVar10,param_2 == uVar12,0);
                  lVar10 = *(long *)(param_1 + 0x118);
                  lVar11 = lVar11 + 1;
                  if (lVar10 == 0) goto LAB_02c399a0;
                }
                lVar10 = *(long *)(param_1 + 0x280);
                *(undefined4 *)(param_1 + 0x13c) = 0;
                if (lVar10 != 0) {
                  lVar11 = 0;
                  goto LAB_02c39964;
                }
              }
            }
          }
        }
      }
    }
  }
LAB_02c399a0:
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
  while( true ) {
    GameObject_SetActive_0x6000cfe(lVar10,(int)param_2 / 5 == uVar12,0);
    lVar10 = *(long *)(param_1 + 0x280);
    lVar11 = lVar11 + 1;
    if (lVar10 == 0) break;
LAB_02c39964:
    uVar12 = (uint)lVar11;
    if ((int)*(uint *)(lVar10 + 0x18) <= (int)uVar12) {
      return;
    }
    if (*(uint *)(lVar10 + 0x18) <= uVar12) goto LAB_02c399c8;
    lVar10 = *(long *)(lVar10 + lVar11 * 8 + 0x20);
    if (lVar10 == 0) break;
  }
  goto LAB_02c399a0;
}

