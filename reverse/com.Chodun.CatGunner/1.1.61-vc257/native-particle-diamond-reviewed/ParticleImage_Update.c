/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x48c0a84, Ghidra VA 049c0a84. */

/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */

void ParticleImage_Update(undefined1 param_1 [16],ulong param_2,ulong param_3,long param_4)

{
  int iVar1;
  int iVar2;
  int iVar3;
  float fVar4;
  undefined *puVar5;
  undefined *puVar6;
  long lVar7;
  long lVar8;
  int iVar9;
  int iVar10;
  int iVar11;
  float fVar12;
  float fVar13;
  float fVar14;
  float fVar15;
  undefined4 uVar16;
  float fVar17;
  float fVar18;
  float fVar19;
  double dVar20;
  float fVar21;
  float fVar22;
  float fVar23;
  undefined4 uVar24;
  float fVar25;
  float fVar26;
  double dVar27;
  float fVar28;
  int iStack_cc;
  float fStack_b0;
  float fStack_a8;
  float fStack_a4;
  
  if ((bRam000000000626283d & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e58f08);
    bRam000000000626283d = 1;
  }
  if (*(int *)(param_4 + 300) == 1) {
    Time_get_deltaTime_0x6000ee5(0);
  }
  else {
    Time_get_unscaledDeltaTime_0x6000ee8(0);
  }
  ParticleImage_Simulate(param_4,0);
  puVar6 = PTR_DAT_05e59000;
  puVar5 = PTR_DAT_05e58f08;
  fVar4 = _UNK_0116c1ac;
  if ((*(char *)(param_4 + 0x624) != '\0') && (*(char *)(param_4 + 0x3220) != '\0')) {
    if ((*(char *)(param_4 + 0x322c) == '\0') || (*(char *)(param_4 + 0x322d) == '\0')) {
      iVar9 = *(int *)(param_4 + 0x3224);
      iVar3 = *(int *)(param_4 + 0x3228);
      iVar1 = iVar9;
      if (iVar9 < 0) {
        iVar1 = iVar9 + 1;
      }
      iVar2 = iVar3;
      if (iVar3 < 0) {
        iVar2 = iVar3 + 1;
      }
      if (1 < iVar9) {
        iVar2 = iVar2 >> 1;
        iVar9 = -(iVar1 >> 1);
        do {
          if (1 < iVar3) {
            fVar12 = (float)(iVar9 * 10);
            iVar11 = iVar2 * -10;
            iVar10 = -iVar2;
            do {
              if (*(long *)(param_4 + 0x3208) == 0) goto LAB_049c121c;
              fVar28 = (float)iVar11;
              fVar22 = *(float *)(param_4 + 0x3214) + fVar28;
              fVar15 = fVar12;
              fStack_b0 = (float)Noise_GetNoise_0x600012a(*(float *)(param_4 + 0x3210) + fVar12);
              if (*(int *)(param_4 + 0x128) == 1) {
                lVar8 = *(long *)(param_4 + 0x3208);
                lVar7 = Component_get_transform_0x6000c82(param_4,0);
                if (lVar7 == 0) goto LAB_049c121c;
                fVar21 = (float)Transform_get_localPosition_0x6000f4f(lVar7,0);
                fVar23 = *(float *)(param_4 + 0x3210);
                lVar7 = Component_get_transform_0x6000c82(param_4,0);
                if ((lVar7 == 0) || (Transform_get_localPosition_0x6000f4f(lVar7,0), lVar8 == 0))
                goto LAB_049c121c;
                fVar15 = *(float *)(param_4 + 0x3214);
                fVar22 = fVar22 + fVar28 + fVar15;
                fStack_b0 = (float)Noise_GetNoise_0x600012a(fVar23 + fVar21 + fVar12,lVar8);
              }
              lVar7 = Component_get_transform_0x6000c82(param_4,0);
              if (lVar7 == 0) goto LAB_049c121c;
              fVar21 = (float)Transform_get_localPosition_0x6000f4f(lVar7,0);
              if (*(long *)(param_4 + 0xe8) == 0) goto LAB_049c121c;
              fVar23 = (float)Transform_get_localScale_0x6000f5d(*(long *)(param_4 + 0xe8),0);
              if (*(long *)(param_4 + 0xe8) == 0) goto LAB_049c121c;
              fVar15 = fVar15 + 0.0;
              fVar22 = fVar22 + fVar28;
              fVar13 = fVar15 * fVar23;
              fVar14 = fVar22 * fVar23;
              uVar16 = Transform_get_eulerAngles_0x6000f51(*(long *)(param_4 + 0xe8),0);
              fVar15 = (float)ParticleImage_RotatePointAroundCenter_0x60000dc
                                        ((fVar21 + fVar12) * fVar23,fVar14,fVar13,uVar16,fVar15,
                                         fVar22);
              if (*(long *)(param_4 + 0xe8) == 0) goto LAB_049c121c;
              fVar23 = fVar14;
              fVar25 = fVar13;
              fVar19 = (float)Transform_get_position_0x6000f4d(*(long *)(param_4 + 0xe8),0);
              fVar22 = fVar23;
              fVar21 = fVar25;
              lVar7 = Component_get_transform_0x6000c82(param_4,0);
              if (lVar7 == 0) goto LAB_049c121c;
              fVar17 = (float)Transform_get_localPosition_0x6000f4f(lVar7,0);
              if (*(long *)(param_4 + 0xe8) == 0) goto LAB_049c121c;
              fVar18 = (float)Transform_get_localScale_0x6000f5d(*(long *)(param_4 + 0xe8),0);
              lVar7 = *(long *)(param_4 + 0xe8);
              if (lVar7 == 0) goto LAB_049c121c;
              fVar26 = (fVar21 + 0.0) * fVar18;
              func_0x05afb270(fStack_b0 * fVar4,&fStack_a4,&fStack_a8);
              fVar17 = fVar17 + fVar12;
              fVar28 = fStack_a4 * 10.0 + fVar22 + fVar28;
              fVar22 = fStack_a8 * 10.0 + fVar17;
              fVar21 = fVar28 * fVar18;
              uVar16 = Transform_get_eulerAngles_0x6000f51(lVar7,0);
              fVar22 = (float)ParticleImage_RotatePointAroundCenter_0x60000dc
                                        (fVar22 * fVar18,fVar21,fVar26,uVar16,fVar28,fVar17);
              if (*(long *)(param_4 + 0xe8) == 0) goto LAB_049c121c;
              fVar28 = fVar21;
              fVar17 = fVar26;
              fVar18 = (float)Transform_get_position_0x6000f4d(*(long *)(param_4 + 0xe8),0);
              if (*(int *)(*(long *)puVar5 + 0xe4) == 0) {
                func_0x029f5bd0();
              }
              Debug_DrawLine_0x6000337
                        (fVar15 + fVar19,fVar14 + fVar23,fVar13 + fVar25,fVar22 + fVar18,
                         fVar21 + fVar28,fVar26 + fVar17,0);
              iVar10 = iVar10 + 1;
              iVar11 = iVar11 + 10;
            } while (iVar10 < iVar2);
          }
          iVar9 = iVar9 + 1;
        } while (iVar9 < iVar1 >> 1);
      }
    }
    else {
      iVar9 = *(int *)(param_4 + 0x3224);
      iVar3 = *(int *)(param_4 + 0x3228);
      iVar1 = iVar9;
      if (iVar9 < 0) {
        iVar1 = iVar9 + 1;
      }
      iVar2 = iVar3;
      if (iVar3 < 0) {
        iVar2 = iVar3 + 1;
      }
      if (1 < iVar9) {
        iVar2 = iVar2 >> 1;
        iStack_cc = -(iVar1 >> 1);
        do {
          if (1 < iVar3) {
            fVar12 = (float)(iStack_cc * 10);
            iVar10 = iVar2 * -10;
            iVar9 = -iVar2;
            do {
              fVar22 = (float)param_3;
              fVar15 = (float)param_2;
              fVar28 = (float)iVar10;
              if (*(int *)(param_4 + 0x128) == 0) {
                fVar14 = *(float *)(param_4 + 0x3210) + fVar12;
                fVar21 = *(float *)(param_4 + 0x3214) + fVar28;
                fVar23 = 0.0;
              }
              else {
                lVar7 = Component_get_transform_0x6000c82(param_4,0);
                if (lVar7 == 0) {
LAB_049c121c:
                    /* WARNING: Subroutine does not return */
                  Throw_NullReference_Wrapper();
                }
                fVar13 = (float)Transform_get_localPosition_0x6000f4f(lVar7,0);
                fVar21 = fVar15;
                fVar23 = fVar22;
                lVar7 = Component_get_transform_0x6000c82(param_4,0);
                if (lVar7 == 0) goto LAB_049c121c;
                fVar14 = (float)Transform_get_localPosition_0x6000f4f(lVar7,0);
                fVar14 = fVar13 + fVar12 + fVar14;
                fVar21 = fVar15 + fVar28 + fVar21;
                fVar23 = fVar22 + 0.0 + fVar23;
              }
              fVar15 = (float)float3_op_Implicit_0x6001255(fVar14,fVar21,fVar23,0);
              fVar23 = 100.0;
              fVar22 = (fVar21 * *(float *)(param_4 + 0x3218)) / 100.0;
              fVar15 = (float)noise_snoise_0x6001e76
                                        ((fVar15 * *(float *)(param_4 + 0x3218)) / 100.0,0);
              lVar7 = Component_get_transform_0x6000c82(param_4,0);
              if (lVar7 == 0) goto LAB_049c121c;
              fVar21 = (float)Transform_get_localPosition_0x6000f4f(lVar7,0);
              if (*(long *)(param_4 + 0xe8) == 0) goto LAB_049c121c;
              fVar14 = (float)Transform_get_localScale_0x6000f5d(*(long *)(param_4 + 0xe8),0);
              if (*(long *)(param_4 + 0xe8) == 0) goto LAB_049c121c;
              fVar22 = fVar22 + fVar28;
              fVar23 = fVar23 + 0.0;
              fVar13 = fVar22 * fVar14;
              fVar25 = fVar23 * fVar14;
              uVar16 = Transform_get_eulerAngles_0x6000f51(*(long *)(param_4 + 0xe8),0);
              fVar22 = (float)ParticleImage_RotatePointAroundCenter_0x60000dc
                                        ((fVar21 + fVar12) * fVar14,fVar13,fVar25,uVar16,fVar23,
                                         fVar22);
              if (*(long *)(param_4 + 0xe8) == 0) goto LAB_049c121c;
              fVar14 = fVar13;
              fVar19 = fVar25;
              fVar17 = (float)Transform_get_position_0x6000f4d(*(long *)(param_4 + 0xe8),0);
              fVar21 = fVar19;
              fVar23 = fVar14;
              lVar7 = Component_get_transform_0x6000c82(param_4,0);
              if (lVar7 == 0) goto LAB_049c121c;
              fVar18 = (float)Transform_get_localPosition_0x6000f4f(lVar7,0);
              if (cRam0000000006262871 == '\0') {
                func_0x029f5a50(puVar6);
                cRam0000000006262871 = '\x01';
              }
              if (*(int *)(*(long *)puVar6 + 0xe4) == 0) {
                func_0x029f5bd0();
              }
              dVar27 = (double)(fVar15 * fVar4);
              dVar20 = (double)func_0x05afb320(dVar27);
              if (cRam0000000006262872 == '\0') {
                func_0x029f5a50(puVar6);
                cRam0000000006262872 = '\x01';
              }
              if (*(int *)(*(long *)puVar6 + 0xe4) == 0) {
                func_0x029f5bd0();
              }
              if (*(long *)(param_4 + 0xe8) == 0) goto LAB_049c121c;
              fVar15 = (float)Transform_get_localScale_0x6000f5d(*(long *)(param_4 + 0xe8),0);
              lVar7 = *(long *)(param_4 + 0xe8);
              if (lVar7 == 0) goto LAB_049c121c;
              fVar26 = (fVar21 + 0.0) * fVar15;
              dVar27 = (double)func_0x05afb310(dVar27);
              uVar24 = 0x41200000;
              fVar21 = (float)dVar20 * 10.0 + fVar18 + fVar12;
              fVar18 = fVar21 * fVar15;
              fVar15 = ((float)dVar27 * 10.0 + fVar23 + fVar28) * fVar15;
              uVar16 = Transform_get_eulerAngles_0x6000f51(lVar7,0);
              fVar28 = (float)ParticleImage_RotatePointAroundCenter_0x60000dc
                                        (fVar18,fVar15,fVar26,uVar16,fVar21,uVar24);
              if (*(long *)(param_4 + 0xe8) == 0) goto LAB_049c121c;
              fVar21 = fVar15;
              fVar23 = fVar26;
              fVar18 = (float)Transform_get_position_0x6000f4d(*(long *)(param_4 + 0xe8),0);
              if (*(int *)(*(long *)puVar5 + 0xe4) == 0) {
                func_0x029f5bd0();
              }
              param_2 = (ulong)(uint)(fVar13 + fVar14);
              param_3 = (ulong)(uint)(fVar25 + fVar19);
              Debug_DrawLine_0x6000337
                        (fVar22 + fVar17,param_2,param_3,fVar28 + fVar18,fVar15 + fVar21,
                         fVar26 + fVar23,0);
              iVar9 = iVar9 + 1;
              iVar10 = iVar10 + 10;
            } while (iVar9 < iVar2);
          }
          iStack_cc = iStack_cc + 1;
        } while (iStack_cc < iVar1 >> 1);
      }
    }
  }
  return;
}

