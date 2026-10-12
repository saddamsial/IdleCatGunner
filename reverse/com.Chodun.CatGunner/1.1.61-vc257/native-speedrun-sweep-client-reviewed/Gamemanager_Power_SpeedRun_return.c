/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2a808d4, Ghidra VA 02b808d4. */

/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */

void Gamemanager_Power_SpeedRun_return(double *param_1)

{
  uint uVar1;
  int iVar2;
  float fVar3;
  undefined *puVar4;
  undefined *puVar5;
  ulong uVar6;
  long lVar7;
  uint uVar8;
  long lVar9;
  ulong uVar10;
  undefined8 uVar11;
  long lVar12;
  float fVar13;
  double dVar14;
  float fVar15;
  double dVar16;
  float fVar17;
  double dStack_320;
  double dStack_318;
  double dStack_310;
  double dStack_308;
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
  double dStack_2a0;
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
  double dStack_1c0;
  double dStack_1b8;
  double dStack_1b0;
  double dStack_1a8;
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
  double dStack_100;
  double dStack_f8;
  double dStack_f0;
  double dStack_e8;
  undefined8 uStack_e0;
  undefined8 uStack_d8;
  undefined8 uStack_d0;
  undefined8 uStack_c8;
  double dStack_c0;
  double dStack_b8;
  double dStack_b0;
  double dStack_a8;
  
  puVar5 = PTR_DAT_05e5d5b0;
  puVar4 = PTR_DAT_05e591c0;
  if ((bRam000000000625b8d0 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e5d5b0);
    func_0x029f5a50(PTR_DAT_05e591c0);
    bRam000000000625b8d0 = 1;
  }
  uStack_198 = 0;
  uStack_1a0 = 0;
  uStack_188 = 0;
  uStack_190 = 0;
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
  dStack_f8 = 0.0;
  dStack_100 = 0.0;
  dStack_e8 = 0.0;
  dStack_f0 = 0.0;
  uStack_d8 = 0;
  uStack_e0 = 0;
  uStack_c8 = 0;
  uStack_d0 = 0;
  dStack_b8 = 0.0;
  dStack_c0 = 0.0;
  dStack_a8 = 0.0;
  dStack_b0 = 0.0;
  uVar11 = *(undefined8 *)(*(long *)(*(long *)puVar5 + 0xb8) + 8);
  if (*(int *)(*(long *)puVar4 + 0xe4) == 0) {
    func_0x029f5bd0();
  }
  uVar6 = Object_op_Equality_0x6000dec(uVar11,0,0);
  if ((uVar6 & 1) == 0) {
    lVar9 = *(long *)(*(long *)(*(long *)puVar5 + 0xb8) + 8);
    if (lVar9 == 0) {
LAB_02b80d6c:
                    /* WARNING: Subroutine does not return */
      Throw_NullReference_Wrapper();
    }
    lVar9 = *(long *)(lVar9 + 0x20);
    if (lVar9 != 0) {
      InfVal_op_Implicit_0x600003f(&dStack_1c0,0,0);
      fVar3 = _UNK_0116c268;
      dStack_b8 = dStack_1b8;
      dStack_c0 = dStack_1c0;
      dStack_a8 = dStack_1a8;
      dStack_b0 = dStack_1b0;
      if (0 < (int)*(ulong *)(lVar9 + 0x18)) {
        uVar6 = 0;
        uVar10 = *(ulong *)(lVar9 + 0x18) & 0xffffffff;
        do {
          if (uVar10 <= uVar6) {
                    /* WARNING: Subroutine does not return */
            Throw_Index_Wrapper();
          }
          lVar12 = *(long *)(lVar9 + 0x20 + uVar6 * 8);
          if (*(int *)(*(long *)puVar4 + 0xe4) == 0) {
            func_0x029f5bd0();
          }
          uVar10 = Object_op_Equality_0x6000dec(lVar12,0,0);
          if ((uVar10 & 1) == 0) {
            if ((lVar12 == 0) || (lVar7 = Component_get_gameObject_0x6000c83(lVar12,0), lVar7 == 0))
            goto LAB_02b80d6c;
            uVar10 = GameObject_get_activeInHierarchy_0x6000d00(lVar7,0);
            if (((uVar10 & 1) != 0) &&
               (fVar13 = (float)Cat_AtkCool_SpeedRun_return(lVar12,0), fVar3 < fVar13)) {
              lVar7 = *(long *)(lVar12 + 0x48);
              if (lVar7 == 0) goto LAB_02b80d6c;
              iVar2 = *(int *)(lVar7 + 0x18);
              fVar17 = 5.0;
              if (iVar2 < 4) {
                if (iVar2 == 1) {
                  fVar17 = 7.0;
                }
                else {
                  fVar17 = 5.0;
                  if (iVar2 != 2) {
                    if (iVar2 != 3) goto LAB_02b80ad0;
                    iVar2 = *(int *)(lVar7 + 0x44);
                    if (iVar2 < 2) {
                      iVar2 = 1;
                    }
                    fVar17 = (float)iVar2;
                  }
                }
              }
              else if (1 < iVar2 - 4U) {
                if (iVar2 == 6) {
                  fVar17 = 10.0;
                }
                else {
LAB_02b80ad0:
                  fVar17 = 1.0;
                }
              }
              fVar15 = *(float *)(lVar12 + 0xa0);
              if (cRam000000000625b95a == '\0') {
                func_0x029f5a50(PTR_DAT_05e59000);
                cRam000000000625b95a = '\x01';
              }
              if (*(int *)(*(long *)PTR_DAT_05e59000 + 0xe4) == 0) {
                func_0x029f5bd0();
              }
              fVar15 = fVar15 * 100.0;
              dVar16 = (double)fVar15;
              dVar14 = (double)func_0x05afb230(dVar16,&dStack_1c0);
              if (0.0 <= fVar15) {
                if (dVar14 == 0.5) {
                  dVar14 = dStack_1c0 + 1.0;
                  goto LAB_02b80b5c;
                }
                dVar16 = (double)(long)(dVar16 + 0.5);
              }
              else if (dVar14 == -0.5) {
                dVar14 = dStack_1c0 + -1.0;
LAB_02b80b5c:
                dVar16 = dStack_1c0;
                if (((long)dStack_1c0 & 1U) != 0) {
                  dVar16 = dVar14;
                }
              }
              else {
                dVar16 = (double)(long)(dVar16 + -0.5);
              }
              uVar8 = (uint)dVar16;
              if (99 < (int)uVar8) {
                uVar8 = 100;
              }
              uVar1 = 0;
              if (dVar16 != INFINITY) {
                uVar1 = uVar8 & ((int)uVar8 >> 0x1f ^ 0xffffffffU);
              }
              InfVal_op_Implicit_0x600003f(&dStack_1c0,100 - uVar1,0);
              dStack_f8 = dStack_1b8;
              dStack_100 = dStack_1c0;
              dStack_e8 = dStack_1a8;
              dStack_f0 = dStack_1b0;
              InfVal_op_Multiply_0x6000074(&uStack_1e0,lVar12 + 0x50,&dStack_100,0);
              uStack_118 = uStack_1d8;
              uStack_120 = uStack_1e0;
              uStack_108 = uStack_1c8;
              uStack_110 = uStack_1d0;
              InfVal_op_Implicit_0x600003f(&uStack_200,uVar1,0);
              uStack_138 = uStack_1f8;
              uStack_140 = uStack_200;
              uStack_128 = uStack_1e8;
              uStack_130 = uStack_1f0;
              InfVal_op_Multiply_0x6000074(&uStack_220,lVar12 + 0x70,&uStack_140,0);
              uStack_158 = uStack_218;
              uStack_160 = uStack_220;
              uStack_148 = uStack_208;
              uStack_150 = uStack_210;
              InfVal_op_Addition_0x6000072(&uStack_240,&uStack_120,&uStack_160,0);
              uStack_178 = uStack_238;
              uStack_180 = uStack_240;
              uStack_168 = uStack_228;
              uStack_170 = uStack_230;
              InfVal_op_Implicit_0x600003f(&uStack_260,100,0);
              uStack_198 = uStack_258;
              uStack_1a0 = uStack_260;
              uStack_188 = uStack_248;
              uStack_190 = uStack_250;
              InfVal_op_Division_0x6000075(&uStack_280,&uStack_180,&uStack_1a0,0);
              iVar2 = -0x80000000;
              if (fVar17 * 100.0 != INFINITY) {
                iVar2 = (int)(fVar17 * 100.0);
              }
              uStack_d8 = uStack_278;
              uStack_e0 = uStack_280;
              uStack_c8 = uStack_268;
              uStack_d0 = uStack_270;
              InfVal_op_Implicit_0x600003f(&dStack_2a0,iVar2,0);
              dStack_f8 = (double)uStack_298;
              dStack_100 = dStack_2a0;
              dStack_e8 = (double)uStack_288;
              dStack_f0 = (double)uStack_290;
              InfVal_op_Multiply_0x6000074(&uStack_2c0,&uStack_e0,&dStack_100,0);
              iVar2 = -0x80000000;
              if (fVar13 * 100.0 != INFINITY) {
                iVar2 = (int)(fVar13 * 100.0);
              }
              uStack_118 = uStack_2b8;
              uStack_120 = uStack_2c0;
              uStack_108 = uStack_2a8;
              uStack_110 = uStack_2b0;
              InfVal_op_Implicit_0x600003f(&uStack_2e0,iVar2,0);
              uStack_138 = uStack_2d8;
              uStack_140 = uStack_2e0;
              uStack_128 = uStack_2c8;
              uStack_130 = uStack_2d0;
              InfVal_op_Division_0x6000075(&uStack_300,&uStack_120,&uStack_140,0);
              uStack_158 = uStack_2f8;
              uStack_160 = uStack_300;
              uStack_148 = uStack_2e8;
              uStack_150 = uStack_2f0;
              InfVal_op_Addition_0x6000072(&dStack_320,&dStack_c0,&uStack_160,0);
              dStack_b8 = dStack_318;
              dStack_c0 = dStack_320;
              dStack_a8 = dStack_308;
              dStack_b0 = dStack_310;
            }
          }
          uVar10 = (ulong)*(uint *)(lVar9 + 0x18);
          uVar6 = uVar6 + 1;
        } while ((long)uVar6 < (long)(int)*(uint *)(lVar9 + 0x18));
      }
      InfVal_ToPrecision_0x6000089(&dStack_1c0,&dStack_c0,5,0);
      goto LAB_02b80d34;
    }
  }
  InfVal_op_Implicit_0x600003f(&dStack_1c0,0,0);
LAB_02b80d34:
  param_1[1] = dStack_1b8;
  *param_1 = dStack_1c0;
  param_1[3] = dStack_1a8;
  param_1[2] = dStack_1b0;
  return;
}

