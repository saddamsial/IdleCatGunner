/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b0a470, Ghidra VA 02c0a470. */

/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */

undefined8 _RunCoroutine_d__13_MoveNext(long param_1)

{
  int iVar1;
  undefined4 uVar2;
  uint uVar3;
  undefined4 uVar4;
  undefined4 uVar5;
  undefined4 uVar6;
  undefined4 uVar7;
  undefined4 uVar8;
  char cVar9;
  undefined *puVar10;
  undefined *puVar11;
  undefined *puVar12;
  undefined *puVar13;
  undefined *puVar14;
  undefined4 uVar15;
  long *plVar16;
  ulong uVar17;
  long lVar18;
  undefined8 *puVar19;
  undefined4 *puVar20;
  long lVar21;
  int iVar22;
  int iVar23;
  undefined8 uVar24;
  float fVar25;
  undefined8 uVar26;
  undefined8 uVar27;
  float fVar28;
  double dVar29;
  undefined1 auVar30 [16];
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
  
  if ((bRam000000000625be95 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e620e8);
    func_0x029f5a50(PTR_DAT_05e620f0);
    func_0x029f5a50(PTR_DAT_05e591c0);
    func_0x029f5a50(PTR_DAT_05e62040);
    func_0x029f5a50(PTR_DAT_05e620f8);
    func_0x029f5a50(PTR_DAT_05e5d4d0);
    func_0x029f5a50(PTR_DAT_05e5d4d8);
    func_0x029f5a50(PTR_DAT_05e5d4e0);
    func_0x029f5a50(PTR_DAT_05e58f28);
    func_0x029f5a50(PTR_DAT_05e62100);
    func_0x029f5a50(PTR_DAT_05e62108);
    func_0x029f5a50(PTR_DAT_05e62110);
    func_0x029f5a50(PTR_DAT_05e62118);
    func_0x029f5a50(PTR_DAT_05e620b0);
    bRam000000000625be95 = 1;
  }
  puVar14 = PTR_DAT_05e62040;
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
  uStack_f8 = 0;
  uStack_100 = 0;
  uStack_118 = 0;
  uStack_120 = 0;
  uStack_108 = 0;
  uStack_110 = 0;
  uStack_128 = 0;
  uStack_130 = 0;
  if (*(int *)(param_1 + 0x10) == 1) {
    *(undefined4 *)(param_1 + 0x10) = 0xffffffff;
    if (*(long *)(param_1 + 0x1c0) != 0) {
      Stopwatch_Restart_0x6000559(*(long *)(param_1 + 0x1c0),0);
      goto LAB_02c0ac5c;
    }
  }
  else {
    if (*(int *)(param_1 + 0x10) != 0) {
      return 0;
    }
    lVar18 = *(long *)(param_1 + 0x20);
    *(undefined4 *)(param_1 + 0x10) = 0xffffffff;
    if ((lVar18 != 0) && (lVar21 = *(long *)(lVar18 + 0x108), lVar21 != 0)) {
      uVar3 = *(uint *)(lVar21 + 0x18);
      if ((uVar3 == 0) ||
         ((*(undefined4 *)(param_1 + 0x44) = *(undefined4 *)(lVar21 + 0x20), uVar3 == 1 ||
          (*(undefined4 *)(param_1 + 0x48) = *(undefined4 *)(lVar21 + 0x24), uVar3 < 3)))) {
                    /* WARNING: Subroutine does not return */
        Throw_Index_Wrapper();
      }
      *(undefined4 *)(param_1 + 0x4c) = *(undefined4 *)(lVar21 + 0x28);
      *(undefined8 *)(param_1 + 0x50) = *(undefined8 *)(lVar18 + 0x1d0);
      *(undefined4 *)(param_1 + 0x58) = *(undefined4 *)(lVar18 + 0x1d8);
      uVar27 = *(undefined8 *)(lVar18 + 0x30);
      uVar24 = *(undefined8 *)(lVar18 + 0x28);
      uVar26 = *(undefined8 *)(lVar18 + 0x18);
      *(undefined8 *)(param_1 + 0x68) = *(undefined8 *)(lVar18 + 0x20);
      *(undefined8 *)(param_1 + 0x60) = uVar26;
      *(undefined8 *)(param_1 + 0x78) = uVar27;
      *(undefined8 *)(param_1 + 0x70) = uVar24;
      Managed_WriteBarrier(param_1 + 0x60,0);
      lVar18 = *(long *)(param_1 + 0x20);
      if (lVar18 != 0) {
        uVar27 = *(undefined8 *)(lVar18 + 0x50);
        uVar24 = *(undefined8 *)(lVar18 + 0x48);
        uVar26 = *(undefined8 *)(lVar18 + 0x38);
        *(undefined8 *)(param_1 + 0x88) = *(undefined8 *)(lVar18 + 0x40);
        *(undefined8 *)(param_1 + 0x80) = uVar26;
        *(undefined8 *)(param_1 + 0x98) = uVar27;
        *(undefined8 *)(param_1 + 0x90) = uVar24;
        Managed_WriteBarrier(param_1 + 0x80,0);
        puVar10 = PTR_DAT_05e620b0;
        lVar18 = *(long *)PTR_DAT_05e620b0;
        if (*(int *)(lVar18 + 0xe4) == 0) {
          func_0x029f5bd0();
          lVar18 = *(long *)puVar10;
        }
        puVar19 = *(undefined8 **)(lVar18 + 0xb8);
        lVar21 = puVar19[1];
        if (lVar21 == 0) {
          if (*(int *)(lVar18 + 0xe4) == 0) {
            func_0x029f5bd0();
            puVar19 = *(undefined8 **)(*(long *)puVar10 + 0xb8);
          }
          uVar24 = *puVar19;
          lVar21 = func_0x029f5cec(*(undefined8 *)PTR_DAT_05e620f0);
          func_0x0423534c(lVar21,uVar24,*(undefined8 *)PTR_DAT_05e62100,0);
          plVar16 = (long *)(*(long *)(*(long *)puVar10 + 0xb8) + 8);
          *plVar16 = lVar21;
          Managed_WriteBarrier(plVar16,lVar21);
        }
        InfVal_op_Implicit_0x600003f(&uStack_150,100,0);
        if (*(int *)(*(long *)puVar14 + 0xe4) == 0) {
          func_0x029f5bd0();
        }
        uStack_188 = uStack_148;
        uStack_190 = uStack_150;
        uStack_178 = uStack_138;
        uStack_180 = uStack_140;
        OfflineProgressSimulator_SafeManagerCall_0x60003dc(&uStack_170,lVar21,&uStack_190);
        *(undefined8 *)(param_1 + 0xa8) = uStack_168;
        *(undefined8 *)(param_1 + 0xa0) = uStack_170;
        *(undefined8 *)(param_1 + 0xb8) = uStack_158;
        *(undefined8 *)(param_1 + 0xb0) = uStack_160;
        Managed_WriteBarrier(param_1 + 0xa0,0);
        lVar18 = *(long *)puVar10;
        if (*(int *)(lVar18 + 0xe4) == 0) {
          func_0x029f5bd0();
          lVar18 = *(long *)puVar10;
        }
        puVar19 = *(undefined8 **)(lVar18 + 0xb8);
        lVar21 = puVar19[2];
        if (lVar21 == 0) {
          if (*(int *)(lVar18 + 0xe4) == 0) {
            func_0x029f5bd0();
            puVar19 = *(undefined8 **)(*(long *)puVar10 + 0xb8);
          }
          uVar24 = *puVar19;
          lVar21 = func_0x029f5cec(*(undefined8 *)PTR_DAT_05e620f0);
          func_0x0423534c(lVar21,uVar24,*(undefined8 *)PTR_DAT_05e62108,0);
          plVar16 = (long *)(*(long *)(*(long *)puVar10 + 0xb8) + 0x10);
          *plVar16 = lVar21;
          Managed_WriteBarrier(plVar16,lVar21);
        }
        InfVal_op_Implicit_0x600003f(&uStack_150,100,0);
        if (*(int *)(*(long *)puVar14 + 0xe4) == 0) {
          func_0x029f5bd0();
        }
        uStack_1a8 = uStack_148;
        uStack_1b0 = uStack_150;
        uStack_198 = uStack_138;
        uStack_1a0 = uStack_140;
        OfflineProgressSimulator_SafeManagerCall_0x60003dc(&uStack_170,lVar21,&uStack_1b0);
        *(undefined8 *)(param_1 + 200) = uStack_168;
        *(undefined8 *)(param_1 + 0xc0) = uStack_170;
        *(undefined8 *)(param_1 + 0xd8) = uStack_158;
        *(undefined8 *)(param_1 + 0xd0) = uStack_160;
        Managed_WriteBarrier(param_1 + 0xc0,0);
        lVar18 = *(long *)puVar10;
        if (*(int *)(lVar18 + 0xe4) == 0) {
          func_0x029f5bd0();
          lVar18 = *(long *)puVar10;
        }
        puVar19 = *(undefined8 **)(lVar18 + 0xb8);
        lVar21 = puVar19[3];
        if (lVar21 == 0) {
          if (*(int *)(lVar18 + 0xe4) == 0) {
            func_0x029f5bd0();
            puVar19 = *(undefined8 **)(*(long *)puVar10 + 0xb8);
          }
          uVar24 = *puVar19;
          lVar21 = func_0x029f5cec(*(undefined8 *)PTR_DAT_05e620f0);
          func_0x0423534c(lVar21,uVar24,*(undefined8 *)PTR_DAT_05e62110,0);
          plVar16 = (long *)(*(long *)(*(long *)puVar10 + 0xb8) + 0x18);
          *plVar16 = lVar21;
          Managed_WriteBarrier(plVar16,lVar21);
        }
        InfVal_op_Implicit_0x600003f(&uStack_150,100,0);
        if (*(int *)(*(long *)puVar14 + 0xe4) == 0) {
          func_0x029f5bd0();
        }
        uStack_1c8 = uStack_148;
        uStack_1d0 = uStack_150;
        uStack_1b8 = uStack_138;
        uStack_1c0 = uStack_140;
        OfflineProgressSimulator_SafeManagerCall_0x60003dc(&uStack_170,lVar21,&uStack_1d0);
        *(undefined8 *)(param_1 + 0xe8) = uStack_168;
        *(undefined8 *)(param_1 + 0xe0) = uStack_170;
        *(undefined8 *)(param_1 + 0xf8) = uStack_158;
        *(undefined8 *)(param_1 + 0xf0) = uStack_160;
        Managed_WriteBarrier(param_1 + 0xe0,0);
        puVar13 = PTR_DAT_05e5d4e0;
        puVar11 = PTR_DAT_05e591c0;
        uVar24 = *(undefined8 *)(*(long *)(*(long *)PTR_DAT_05e5d4e0 + 0xb8) + 0x10);
        if (*(int *)(*(long *)PTR_DAT_05e591c0 + 0xe4) == 0) {
          func_0x029f5bd0();
        }
        uVar17 = Object_op_Inequality_0x6000ded(uVar24,0,0);
        puVar20 = *(undefined4 **)(*(long *)puVar13 + 0xb8);
        if ((uVar17 & 1) == 0) {
          uVar15 = 100;
        }
        else {
          uVar15 = *puVar20;
        }
        lVar18 = *(long *)puVar11;
        *(undefined4 *)(param_1 + 0x100) = uVar15;
        uVar24 = *(undefined8 *)(puVar20 + 4);
        if (*(int *)(lVar18 + 0xe4) == 0) {
          func_0x029f5bd0();
        }
        uVar17 = Object_op_Inequality_0x6000ded(uVar24,0,0);
        lVar18 = *(long *)(*(long *)puVar13 + 0xb8);
        if ((uVar17 & 1) == 0) {
          uVar15 = 100;
        }
        else {
          uVar15 = *(undefined4 *)(lVar18 + 4);
        }
        lVar21 = *(long *)puVar11;
        *(undefined4 *)(param_1 + 0x104) = uVar15;
        uVar24 = *(undefined8 *)(lVar18 + 0x10);
        if (*(int *)(lVar21 + 0xe4) == 0) {
          func_0x029f5bd0();
        }
        uVar17 = Object_op_Inequality_0x6000ded(uVar24,0,0);
        puVar12 = PTR_DAT_05e5d4d0;
        if ((uVar17 & 1) == 0) {
          uVar15 = 100;
        }
        else {
          uVar15 = *(undefined4 *)(*(long *)(*(long *)puVar13 + 0xb8) + 8);
        }
        *(undefined4 *)(param_1 + 0x108) = uVar15;
        lVar18 = *(long *)puVar12;
        if (*(int *)(lVar18 + 0xe4) == 0) {
          func_0x029f5bd0();
          lVar18 = *(long *)puVar12;
        }
        uVar24 = *(undefined8 *)(*(long *)(lVar18 + 0xb8) + 0x28);
        if (*(int *)(*(long *)puVar11 + 0xe4) == 0) {
          func_0x029f5bd0(*(long *)puVar11);
        }
        uVar17 = Object_op_Inequality_0x6000ded(uVar24,0,0);
        if ((uVar17 & 1) == 0) {
          uVar15 = 100;
        }
        else {
          lVar18 = *(long *)puVar12;
          if (*(int *)(lVar18 + 0xe4) == 0) {
            func_0x029f5bd0();
            lVar18 = *(long *)puVar12;
          }
          uVar15 = InfVal_op_Explicit_0x6000056(*(undefined8 *)(lVar18 + 0xb8),0);
        }
        lVar18 = *(long *)puVar10;
        *(undefined4 *)(param_1 + 0x10c) = uVar15;
        if (*(int *)(lVar18 + 0xe4) == 0) {
          func_0x029f5bd0();
          lVar18 = *(long *)puVar10;
        }
        puVar19 = *(undefined8 **)(lVar18 + 0xb8);
        lVar21 = puVar19[4];
        if (lVar21 == 0) {
          if (*(int *)(lVar18 + 0xe4) == 0) {
            func_0x029f5bd0();
            puVar19 = *(undefined8 **)(*(long *)puVar10 + 0xb8);
          }
          uVar24 = *puVar19;
          lVar21 = func_0x029f5cec(*(undefined8 *)PTR_DAT_05e620e8);
          func_0x042353fc(lVar21,uVar24,*(undefined8 *)PTR_DAT_05e62118,0);
          plVar16 = (long *)(*(long *)(*(long *)puVar10 + 0xb8) + 0x20);
          *plVar16 = lVar21;
          Managed_WriteBarrier(plVar16,lVar21);
        }
        if (*(int *)(*(long *)puVar14 + 0xe4) == 0) {
          func_0x029f5bd0();
        }
        uVar15 = OfflineProgressSimulator_SafeManagerCall_0x60003de(lVar21,0);
        puVar10 = PTR_DAT_05e5d4d8;
        *(undefined4 *)(param_1 + 0x110) = uVar15;
        lVar18 = *(long *)puVar10;
        if (*(int *)(lVar18 + 0xe4) == 0) {
          func_0x029f5bd0();
          lVar18 = *(long *)puVar10;
        }
        puVar19 = *(undefined8 **)(lVar18 + 0xb8);
        uVar26 = *puVar19;
        uVar27 = puVar19[3];
        uVar24 = puVar19[2];
        *(undefined8 *)(param_1 + 0x120) = puVar19[1];
        *(undefined8 *)(param_1 + 0x118) = uVar26;
        *(undefined8 *)(param_1 + 0x130) = uVar27;
        *(undefined8 *)(param_1 + 0x128) = uVar24;
        Managed_WriteBarrier((undefined8 *)(param_1 + 0x118),0);
        lVar18 = *(long *)(*(long *)puVar10 + 0xb8);
        uVar24 = *(undefined8 *)(lVar18 + 0x40);
        uVar26 = *(undefined8 *)(lVar18 + 0x58);
        uVar27 = *(undefined8 *)(lVar18 + 0x50);
        *(undefined8 *)(param_1 + 0x140) = *(undefined8 *)(lVar18 + 0x48);
        *(undefined8 *)(param_1 + 0x138) = uVar24;
        *(undefined8 *)(param_1 + 0x150) = uVar26;
        *(undefined8 *)(param_1 + 0x148) = uVar27;
        Managed_WriteBarrier((undefined8 *)(param_1 + 0x138),0);
        lVar18 = *(long *)(*(long *)puVar10 + 0xb8);
        uVar24 = *(undefined8 *)(lVar18 + 0x20);
        uVar26 = *(undefined8 *)(lVar18 + 0x38);
        uVar27 = *(undefined8 *)(lVar18 + 0x30);
        *(undefined8 *)(param_1 + 0x160) = *(undefined8 *)(lVar18 + 0x28);
        *(undefined8 *)(param_1 + 0x158) = uVar24;
        *(undefined8 *)(param_1 + 0x170) = uVar26;
        *(undefined8 *)(param_1 + 0x168) = uVar27;
        Managed_WriteBarrier((undefined8 *)(param_1 + 0x158),0);
        if (*(long *)(param_1 + 0x20) != 0) {
          cVar9 = *(char *)(*(long *)(param_1 + 0x20) + 0x1ff);
          *(undefined4 *)(param_1 + 0x184) = *(undefined4 *)(param_1 + 0x4c);
          *(undefined8 *)(param_1 + 0x17c) = *(undefined8 *)(param_1 + 0x44);
          uVar15 = 4;
          if (cVar9 == '\0') {
            uVar15 = 1;
          }
          *(undefined4 *)(param_1 + 0x178) = uVar15;
          *(undefined8 *)(param_1 + 400) = *(undefined8 *)(param_1 + 0x68);
          *(undefined8 *)(param_1 + 0x188) = *(undefined8 *)(param_1 + 0x60);
          *(undefined8 *)(param_1 + 0x1a0) = *(undefined8 *)(param_1 + 0x78);
          *(undefined8 *)(param_1 + 0x198) = *(undefined8 *)(param_1 + 0x70);
          Managed_WriteBarrier((undefined8 *)(param_1 + 0x188),0);
          puVar10 = PTR_DAT_05e58f28;
          *(undefined4 *)(param_1 + 0x1a8) = 0;
          dVar29 = *(double *)(param_1 + 0x30);
          *(undefined4 *)(param_1 + 0x1ac) = *(undefined4 *)(param_1 + 0x28);
          lVar18 = *(long *)puVar10;
          *(undefined4 *)(param_1 + 0x1b0) = 0;
          if (*(int *)(lVar18 + 0xe4) == 0) {
            func_0x029f5bd0();
            lVar18 = *(long *)puVar10;
          }
          dVar29 = (dVar29 * (double)**(long **)(lVar18 + 0xb8)) / _UNK_01170860;
          lVar18 = -0x8000000000000000;
          if (dVar29 != INFINITY) {
            lVar18 = (long)dVar29;
          }
          *(long *)(param_1 + 0x1b8) = lVar18;
          uVar24 = Stopwatch_StartNew_0x6000550(0);
          *(undefined8 *)(param_1 + 0x1c0) = uVar24;
          Managed_WriteBarrier(param_1 + 0x1c0,uVar24);
          *(undefined4 *)(param_1 + 0x1d8) = 0xffffffff;
          *(undefined8 *)(param_1 + 0x1c8) = 0xffffffffffffffff;
          *(undefined8 *)(param_1 + 0x1d0) = 0xffffffffffffffff;
          *(undefined8 *)(param_1 + 0x1e0) = 0;
          *(undefined8 *)(param_1 + 0x1e8) = 0;
          InfVal_op_Implicit_0x600003f(&uStack_150,0,0);
          *(undefined8 *)(param_1 + 0x1f8) = uStack_148;
          *(undefined8 *)(param_1 + 0x1f0) = uStack_150;
          *(undefined8 *)(param_1 + 0x208) = uStack_138;
          *(undefined8 *)(param_1 + 0x200) = uStack_140;
          Managed_WriteBarrier(param_1 + 0x1f0,0);
          InfVal_op_Implicit_0x600003f(&uStack_170,0,0);
          *(undefined8 *)(param_1 + 0x218) = uStack_168;
          *(undefined8 *)(param_1 + 0x210) = uStack_170;
          *(undefined8 *)(param_1 + 0x228) = uStack_158;
          *(undefined8 *)(param_1 + 0x220) = uStack_160;
          Managed_WriteBarrier(param_1 + 0x210,0);
          fVar25 = *(float *)(param_1 + 0x1ac);
          *(undefined1 *)(param_1 + 0x230) = 0;
LAB_02c0ac18:
          if ((fVar25 <= _UNK_0116c094) ||
             (iVar22 = *(int *)(param_1 + 0x1b0), *(int *)(param_1 + 0x1b0) = iVar22 + 1,
             29999 < iVar22)) goto LAB_02c0b220;
          if (*(long *)(param_1 + 0x1c0) == 0) goto LAB_02c0b360;
          lVar18 = Stopwatch_get_ElapsedTicks_0x6000554(*(long *)(param_1 + 0x1c0),0);
          if (*(long *)(param_1 + 0x1b8) <= lVar18) {
            *(undefined8 *)(param_1 + 0x18) = 0;
            Managed_WriteBarrier((undefined8 *)(param_1 + 0x18),0);
            *(undefined4 *)(param_1 + 0x10) = 1;
            return 1;
          }
LAB_02c0ac5c:
          if (*(int *)(*(long *)puVar14 + 0xe4) == 0) {
            func_0x029f5bd0();
          }
          uVar17 = OfflineProgressSimulator_BuyAllAffordable
                             (param_1 + 0x44,param_1 + 0x48,param_1 + 0x4c,param_1 + 0x60);
          if ((uVar17 & 1) == 0) {
            iVar22 = *(int *)(param_1 + 0x44);
            if (*(char *)(param_1 + 0x230) == '\0') goto LAB_02c0acec;
            iVar23 = *(int *)(param_1 + 0x48);
            if ((((*(int *)(param_1 + 0x1c8) != iVar22) || (*(int *)(param_1 + 0x1cc) != iVar23)) ||
                (*(int *)(param_1 + 0x1d0) != *(int *)(param_1 + 0x4c))) ||
               ((*(int *)(param_1 + 0x1d4) != *(int *)(param_1 + 0x50) ||
                (*(int *)(param_1 + 0x1d8) != *(int *)(param_1 + 0x54))))) goto LAB_02c0acf0;
          }
          else {
            iVar22 = *(int *)(param_1 + 0x44);
            *(undefined1 *)(param_1 + 0x230) = 0;
LAB_02c0acec:
            iVar23 = *(int *)(param_1 + 0x48);
LAB_02c0acf0:
            uStack_148 = *(undefined8 *)(param_1 + 0xa8);
            uStack_150 = *(undefined8 *)(param_1 + 0xa0);
            uStack_138 = *(undefined8 *)(param_1 + 0xb8);
            uStack_140 = *(undefined8 *)(param_1 + 0xb0);
            uVar4 = *(undefined4 *)(param_1 + 0x58);
            uVar5 = *(undefined4 *)(param_1 + 0x100);
            uVar15 = *(undefined4 *)(param_1 + 0x50);
            uVar2 = *(undefined4 *)(param_1 + 0x54);
            uVar6 = *(undefined4 *)(param_1 + 0x104);
            uVar7 = *(undefined4 *)(param_1 + 0x110);
            uVar8 = *(undefined4 *)(param_1 + 0x178);
            uStack_168 = *(undefined8 *)(param_1 + 200);
            uStack_170 = *(undefined8 *)(param_1 + 0xc0);
            uStack_158 = *(undefined8 *)(param_1 + 0xd8);
            uStack_160 = *(undefined8 *)(param_1 + 0xd0);
            uStack_1e8 = *(undefined8 *)(param_1 + 0x120);
            uStack_1f0 = *(undefined8 *)(param_1 + 0x118);
            uStack_1d8 = *(undefined8 *)(param_1 + 0x130);
            uStack_1e0 = *(undefined8 *)(param_1 + 0x128);
            uStack_208 = *(undefined8 *)(param_1 + 0x140);
            uStack_210 = *(undefined8 *)(param_1 + 0x138);
            uStack_1f8 = *(undefined8 *)(param_1 + 0x150);
            uStack_200 = *(undefined8 *)(param_1 + 0x148);
            if (*(int *)(*(long *)puVar14 + 0xe4) == 0) {
              func_0x029f5bd0();
            }
            uStack_228 = uStack_148;
            uStack_230 = uStack_150;
            uStack_218 = uStack_138;
            uStack_220 = uStack_140;
            uStack_248 = uStack_168;
            uStack_250 = uStack_170;
            uStack_238 = uStack_158;
            uStack_240 = uStack_160;
            uStack_268 = uStack_1e8;
            uStack_270 = uStack_1f0;
            uStack_258 = uStack_1d8;
            uStack_260 = uStack_1e0;
            uStack_288 = uStack_208;
            uStack_290 = uStack_210;
            uStack_278 = uStack_1f8;
            uStack_280 = uStack_200;
            auVar30 = OfflineProgressSimulator_CalcClearInfo
                                (iVar22,iVar23,uVar15,uVar2,uVar4,&uStack_230,&uStack_250,uVar5,
                                 uVar6,&uStack_270,&uStack_290,uVar7,uVar8);
            uStack_2c8 = *(undefined8 *)(param_1 + 0xe8);
            uStack_2d0 = *(undefined8 *)(param_1 + 0xe0);
            uStack_2b8 = *(undefined8 *)(param_1 + 0xf8);
            uStack_2c0 = *(undefined8 *)(param_1 + 0xf0);
            *(undefined1 (*) [16])(param_1 + 0x1e0) = auVar30;
            uStack_2e8 = *(undefined8 *)(param_1 + 0x160);
            uStack_2f0 = *(undefined8 *)(param_1 + 0x158);
            uStack_2d8 = *(undefined8 *)(param_1 + 0x170);
            uStack_2e0 = *(undefined8 *)(param_1 + 0x168);
            OfflineProgressSimulator_CalcFarmMoneyPerSec
                      (&uStack_2b0,auVar30._8_8_,*(undefined4 *)(param_1 + 0x4c),
                       *(undefined4 *)(param_1 + 0x50),*(undefined4 *)(param_1 + 0x54),&uStack_2d0,
                       *(undefined4 *)(param_1 + 0x108),*(undefined4 *)(param_1 + 0x10c),&uStack_2f0
                       ,*(undefined4 *)(param_1 + 0x178));
            *(undefined8 *)(param_1 + 0x1f8) = uStack_2a8;
            *(undefined8 *)(param_1 + 0x1f0) = uStack_2b0;
            *(undefined8 *)(param_1 + 0x208) = uStack_298;
            *(undefined8 *)(param_1 + 0x200) = uStack_2a0;
            Managed_WriteBarrier(param_1 + 0x1f0,0);
            uStack_328 = *(undefined8 *)(param_1 + 0xe8);
            uStack_330 = *(undefined8 *)(param_1 + 0xe0);
            uStack_318 = *(undefined8 *)(param_1 + 0xf8);
            uStack_320 = *(undefined8 *)(param_1 + 0xf0);
            uStack_348 = *(undefined8 *)(param_1 + 0x160);
            uStack_350 = *(undefined8 *)(param_1 + 0x158);
            uStack_338 = *(undefined8 *)(param_1 + 0x170);
            uStack_340 = *(undefined8 *)(param_1 + 0x168);
            OfflineProgressSimulator_CalcMoneyPerStage
                      (&uStack_310,*(undefined4 *)(param_1 + 0x4c),*(undefined4 *)(param_1 + 0x50),
                       *(undefined4 *)(param_1 + 0x54),&uStack_330,*(undefined4 *)(param_1 + 0x108),
                       *(undefined4 *)(param_1 + 0x10c),&uStack_350,*(undefined4 *)(param_1 + 0x178)
                      );
            *(undefined8 *)(param_1 + 0x218) = uStack_308;
            *(undefined8 *)(param_1 + 0x210) = uStack_310;
            *(undefined8 *)(param_1 + 0x228) = uStack_2f8;
            *(undefined8 *)(param_1 + 0x220) = uStack_300;
            Managed_WriteBarrier(param_1 + 0x210,0);
            *(undefined8 *)(param_1 + 0x1d0) = *(undefined8 *)(param_1 + 0x4c);
            *(undefined8 *)(param_1 + 0x1c8) = *(undefined8 *)(param_1 + 0x44);
            *(undefined4 *)(param_1 + 0x1d8) = *(undefined4 *)(param_1 + 0x54);
            *(undefined1 *)(param_1 + 0x230) = 1;
          }
          uStack_88 = *(undefined8 *)(param_1 + 0x1f8);
          uStack_90 = *(undefined8 *)(param_1 + 0x1f0);
          uStack_78 = *(undefined8 *)(param_1 + 0x208);
          uStack_80 = *(undefined8 *)(param_1 + 0x200);
          fVar28 = *(float *)(param_1 + 0x1e0);
          iVar22 = *(int *)(*(long *)puVar14 + 0xe4);
          if (iVar22 == 0) {
            func_0x029f5bd0();
            iVar22 = *(int *)(*(long *)puVar14 + 0xe4);
          }
          fVar25 = fVar28 * _UNK_0116c1b4 + 5.0;
          if (0xfe < ((uint)fVar28 >> 0x17 & 0xff)) {
            fVar25 = INFINITY;
          }
          if (iVar22 == 0) {
            func_0x029f5bd0();
          }
          if ((((uint)fVar25 >> 0x17 & 0xff) < 0xff) && (fVar25 <= *(float *)(param_1 + 0x1ac))) {
            uStack_a8 = *(undefined8 *)(param_1 + 0x218);
            uStack_b0 = *(undefined8 *)(param_1 + 0x210);
            uStack_98 = *(undefined8 *)(param_1 + 0x228);
            uStack_a0 = *(undefined8 *)(param_1 + 0x220);
            InfVal_op_Addition_0x6000072(&uStack_150,param_1 + 0x60,&uStack_b0,0);
            *(undefined8 *)(param_1 + 0x68) = uStack_148;
            *(undefined8 *)(param_1 + 0x60) = uStack_150;
            *(undefined8 *)(param_1 + 0x78) = uStack_138;
            *(undefined8 *)(param_1 + 0x70) = uStack_140;
            Managed_WriteBarrier(param_1 + 0x60,0);
            InfVal_op_Addition_0x6000072(&uStack_170,param_1 + 0x80,&uStack_b0,0);
            *(undefined8 *)(param_1 + 0x88) = uStack_168;
            *(undefined8 *)(param_1 + 0x80) = uStack_170;
            *(undefined8 *)(param_1 + 0x98) = uStack_158;
            *(undefined8 *)(param_1 + 0x90) = uStack_160;
            Managed_WriteBarrier(param_1 + 0x80,0);
            iVar23 = *(int *)(param_1 + 0x50);
            iVar22 = *(int *)(param_1 + 0x54) + 1;
            fVar25 = *(float *)(param_1 + 0x1ac) - fVar25;
            if (4 < iVar22) {
              iVar23 = iVar23 + 1;
            }
            iVar1 = 0;
            if (iVar22 < 5) {
              iVar1 = *(int *)(param_1 + 0x54) + 1;
            }
            *(float *)(param_1 + 0x1ac) = fVar25;
            if (iVar1 + iVar23 * 10 <= *(int *)(param_1 + 0x58)) {
              *(int *)(param_1 + 0x50) = iVar23;
              *(int *)(param_1 + 0x54) = iVar1;
              *(int *)(param_1 + 0x1a8) = *(int *)(param_1 + 0x1a8) + 1;
            }
            goto LAB_02c0ac18;
          }
          if (*(int *)(*(long *)puVar14 + 0xe4) == 0) {
            func_0x029f5bd0();
          }
          if ((uint)ABS(fVar25) >> 0x17 < 0xff) {
            InfVal_op_Implicit_0x600003f(&uStack_150,0,0);
            uStack_e8 = uStack_148;
            uStack_f0 = uStack_150;
            uStack_d8 = uStack_138;
            uStack_e0 = uStack_140;
            uVar17 = InfVal_op_GreaterThan_0x600007f(&uStack_90,&uStack_f0,0);
            if ((uVar17 & 1) == 0) goto LAB_02c0b220;
            uVar15 = *(undefined4 *)(param_1 + 0x1ac);
            if (*(int *)(*(long *)puVar14 + 0xe4) == 0) {
              func_0x029f5bd0();
            }
            OfflineProgressSimulator_ToInfVal_0x60003d9(&uStack_150,uVar15);
            uStack_e8 = uStack_148;
            uStack_f0 = uStack_150;
            uStack_d8 = uStack_138;
            uStack_e0 = uStack_140;
            InfVal_op_Multiply_0x6000074(&uStack_170,&uStack_90,&uStack_f0,0);
            uStack_128 = uStack_168;
            uStack_130 = uStack_170;
            uStack_118 = uStack_158;
            uStack_120 = uStack_160;
            InfVal_op_Addition_0x6000072(&uStack_1f0,param_1 + 0x60,&uStack_130,0);
            *(undefined8 *)(param_1 + 0x68) = uStack_1e8;
            *(undefined8 *)(param_1 + 0x60) = uStack_1f0;
            *(undefined8 *)(param_1 + 0x78) = uStack_1d8;
            *(undefined8 *)(param_1 + 0x70) = uStack_1e0;
            Managed_WriteBarrier(param_1 + 0x60,0);
            puVar19 = &uStack_130;
          }
          else {
            uStack_148 = *(undefined8 *)(param_1 + 0x68);
            uStack_150 = *(undefined8 *)(param_1 + 0x60);
            uStack_138 = *(undefined8 *)(param_1 + 0x78);
            uStack_140 = *(undefined8 *)(param_1 + 0x70);
            uVar15 = *(undefined4 *)(param_1 + 0x44);
            uVar2 = *(undefined4 *)(param_1 + 0x48);
            uVar4 = *(undefined4 *)(param_1 + 0x4c);
            uStack_168 = uStack_88;
            uStack_170 = uStack_90;
            uStack_158 = uStack_78;
            uStack_160 = uStack_80;
            if (*(int *)(*(long *)puVar14 + 0xe4) == 0) {
              func_0x029f5bd0();
            }
            uStack_368 = uStack_148;
            uStack_370 = uStack_150;
            uStack_358 = uStack_138;
            uStack_360 = uStack_140;
            uStack_388 = uStack_168;
            uStack_390 = uStack_170;
            uStack_378 = uStack_158;
            uStack_380 = uStack_160;
            fVar25 = (float)OfflineProgressSimulator_CalcTimeToNextUpgrade
                                      (&uStack_370,&uStack_390,uVar15,uVar2,uVar4);
            if ((((uint)fVar25 >> 0x17 & 0xff) < 0xff) && (fVar25 <= *(float *)(param_1 + 0x1ac))) {
              if (*(int *)(*(long *)puVar14 + 0xe4) == 0) {
                func_0x029f5bd0();
              }
              OfflineProgressSimulator_ToInfVal_0x60003d9(&uStack_150,fVar25);
              uStack_e8 = uStack_148;
              uStack_f0 = uStack_150;
              uStack_d8 = uStack_138;
              uStack_e0 = uStack_140;
              InfVal_op_Multiply_0x6000074(&uStack_170,&uStack_90,&uStack_f0,0);
              uStack_c8 = uStack_168;
              uStack_d0 = uStack_170;
              uStack_b8 = uStack_158;
              uStack_c0 = uStack_160;
              InfVal_op_Addition_0x6000072(&uStack_1f0,param_1 + 0x60,&uStack_d0,0);
              *(undefined8 *)(param_1 + 0x68) = uStack_1e8;
              *(undefined8 *)(param_1 + 0x60) = uStack_1f0;
              *(undefined8 *)(param_1 + 0x78) = uStack_1d8;
              *(undefined8 *)(param_1 + 0x70) = uStack_1e0;
              Managed_WriteBarrier(param_1 + 0x60,0);
              InfVal_op_Addition_0x6000072(&uStack_210,param_1 + 0x80,&uStack_d0,0);
              *(undefined8 *)(param_1 + 0x88) = uStack_208;
              *(undefined8 *)(param_1 + 0x80) = uStack_210;
              *(undefined8 *)(param_1 + 0x98) = uStack_1f8;
              *(undefined8 *)(param_1 + 0x90) = uStack_200;
              Managed_WriteBarrier(param_1 + 0x80,0);
              fVar25 = *(float *)(param_1 + 0x1ac) - fVar25;
              *(float *)(param_1 + 0x1ac) = fVar25;
              goto LAB_02c0ac18;
            }
            InfVal_op_Implicit_0x600003f(&uStack_150,0,0);
            uStack_e8 = uStack_148;
            uStack_f0 = uStack_150;
            uStack_d8 = uStack_138;
            uStack_e0 = uStack_140;
            uVar17 = InfVal_op_GreaterThan_0x600007f(&uStack_90,&uStack_f0,0);
            if ((uVar17 & 1) == 0) goto LAB_02c0b220;
            uVar15 = *(undefined4 *)(param_1 + 0x1ac);
            if (*(int *)(*(long *)puVar14 + 0xe4) == 0) {
              func_0x029f5bd0();
            }
            OfflineProgressSimulator_ToInfVal_0x60003d9(&uStack_150,uVar15);
            uStack_e8 = uStack_148;
            uStack_f0 = uStack_150;
            uStack_d8 = uStack_138;
            uStack_e0 = uStack_140;
            InfVal_op_Multiply_0x6000074(&uStack_170,&uStack_90,&uStack_f0,0);
            uStack_108 = uStack_168;
            uStack_110 = uStack_170;
            uStack_f8 = uStack_158;
            uStack_100 = uStack_160;
            InfVal_op_Addition_0x6000072(&uStack_1f0,param_1 + 0x60,&uStack_110,0);
            *(undefined8 *)(param_1 + 0x68) = uStack_1e8;
            *(undefined8 *)(param_1 + 0x60) = uStack_1f0;
            *(undefined8 *)(param_1 + 0x78) = uStack_1d8;
            *(undefined8 *)(param_1 + 0x70) = uStack_1e0;
            Managed_WriteBarrier(param_1 + 0x60,0);
            puVar19 = &uStack_110;
          }
          InfVal_op_Addition_0x6000072(&uStack_210,param_1 + 0x80,puVar19,0);
          *(undefined8 *)(param_1 + 0x88) = uStack_208;
          *(undefined8 *)(param_1 + 0x80) = uStack_210;
          *(undefined8 *)(param_1 + 0x98) = uStack_1f8;
          *(undefined8 *)(param_1 + 0x90) = uStack_200;
          Managed_WriteBarrier(param_1 + 0x80,0);
LAB_02c0b220:
          if (*(int *)(*(long *)puVar14 + 0xe4) == 0) {
            func_0x029f5bd0();
          }
          OfflineProgressSimulator_BuyAllAffordable
                    (param_1 + 0x44,param_1 + 0x48,param_1 + 0x4c,param_1 + 0x60);
          lVar18 = *(long *)(param_1 + 0x38);
          if (lVar18 != 0) {
            lVar21 = func_0x029f5cec(*(undefined8 *)PTR_DAT_05e620f8);
            Object__ctor_0x600100e(lVar21,0);
            if (lVar21 == 0) goto LAB_02c0b360;
            fVar25 = *(float *)(param_1 + 0x28);
            *(float *)(lVar21 + 0x10) = fVar25;
            if (0.0 <= *(float *)(param_1 + 0x40)) {
              fVar25 = *(float *)(param_1 + 0x40);
            }
            *(float *)(lVar21 + 0x14) = fVar25;
            InfVal_op_Subtraction_0x6000073(&uStack_150,param_1 + 0x60,param_1 + 0x188,0);
            *(undefined8 *)(lVar21 + 0x20) = uStack_148;
            *(undefined8 *)(lVar21 + 0x18) = uStack_150;
            *(undefined8 *)(lVar21 + 0x30) = uStack_138;
            *(undefined8 *)(lVar21 + 0x28) = uStack_140;
            Managed_WriteBarrier(lVar21 + 0x18,0);
            uVar26 = *(undefined8 *)(param_1 + 0x68);
            uVar27 = *(undefined8 *)(param_1 + 0x60);
            uVar24 = *(undefined8 *)(param_1 + 0x70);
            *(undefined8 *)(lVar21 + 0x50) = *(undefined8 *)(param_1 + 0x78);
            *(undefined8 *)(lVar21 + 0x48) = uVar24;
            *(undefined8 *)(lVar21 + 0x40) = uVar26;
            *(undefined8 *)(lVar21 + 0x38) = uVar27;
            Managed_WriteBarrier(lVar21 + 0x38,0);
            uVar26 = *(undefined8 *)(param_1 + 0x88);
            uVar27 = *(undefined8 *)(param_1 + 0x80);
            uVar24 = *(undefined8 *)(param_1 + 0x90);
            *(undefined8 *)(lVar21 + 0x70) = *(undefined8 *)(param_1 + 0x98);
            *(undefined8 *)(lVar21 + 0x68) = uVar24;
            *(undefined8 *)(lVar21 + 0x60) = uVar26;
            *(undefined8 *)(lVar21 + 0x58) = uVar27;
            Managed_WriteBarrier(lVar21 + 0x58,0);
            iVar22 = *(int *)(param_1 + 0x4c);
            *(int *)(lVar21 + 0x80) = iVar22;
            uVar24 = *(undefined8 *)(param_1 + 0x44);
            *(undefined8 *)(lVar21 + 0x78) = uVar24;
            uVar27 = *(undefined8 *)(param_1 + 0x17c);
            *(ulong *)(lVar21 + 0x84) =
                 CONCAT44((int)((ulong)uVar24 >> 0x20) - (int)((ulong)uVar27 >> 0x20),
                          (int)uVar24 - (int)uVar27);
            *(int *)(lVar21 + 0x8c) = iVar22 - *(int *)(param_1 + 0x184);
            *(undefined8 *)(lVar21 + 0x90) = *(undefined8 *)(param_1 + 0x50);
            *(undefined4 *)(lVar21 + 0x98) = *(undefined4 *)(param_1 + 0x58);
            *(undefined4 *)(lVar21 + 0x9c) = *(undefined4 *)(param_1 + 0x1a8);
            (**(code **)(lVar18 + 0x18))
                      (*(undefined8 *)(lVar18 + 0x40),lVar21,*(undefined8 *)(lVar18 + 0x28));
          }
          return 0;
        }
      }
    }
  }
LAB_02c0b360:
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

