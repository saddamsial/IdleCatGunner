/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x48c21ec, Ghidra VA 049c21ec. */

/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */

long ParticleImage_GenerateParticle
               (undefined1 param_1 [16],float param_2,float param_3,long param_4,int param_5,
               int param_6,long param_7)

{
  int iVar1;
  undefined *puVar2;
  undefined *puVar3;
  bool bVar4;
  long lVar5;
  long lVar6;
  float *pfVar7;
  float fVar8;
  float fVar9;
  float fVar10;
  undefined4 uVar11;
  undefined4 uVar12;
  undefined4 uVar13;
  float fVar14;
  float fVar15;
  float fVar16;
  float fVar17;
  float fVar18;
  float fVar19;
  float fStack_98;
  float fStack_94;
  float fStack_90;
  float fStack_8c;
  float fStack_88;
  float fStack_84;
  
  fVar9 = 0.0;
  fVar8 = param_2;
  if (param_6 < 2) {
    if (param_6 == 0) {
      if (param_7 == 0) goto LAB_049c2ce4;
      fVar8 = (float)*(int *)(param_7 + 0x14);
LAB_049c2288:
      fVar9 = (360.0 / fVar8) * (float)param_5;
    }
    else {
      if (param_6 != 1) goto LAB_049c22a4;
      fVar8 = *(float *)(param_4 + 0x3120);
LAB_049c2254:
      fVar9 = ((360.0 / fVar8) * (float)param_5) / *(float *)(param_4 + 0x170);
    }
    fVar9 = *(float *)(param_4 + 0x148) * fVar9;
    fVar8 = *(float *)(param_4 + 0x148);
  }
  else {
    if (param_6 == 2) {
      fVar8 = *(float *)(param_4 + 0x3124);
      goto LAB_049c2288;
    }
    if (param_6 == 3) {
      fVar8 = *(float *)(param_4 + 0x3128);
      goto LAB_049c2254;
    }
  }
LAB_049c22a4:
  fVar17 = param_3;
  if (cRam000000000625b271 == '\0') {
    func_0x029f5a50(PTR_DAT_05e59608);
    cRam000000000625b271 = '\x01';
  }
  puVar3 = PTR_DAT_05e59608;
  puVar2 = PTR_DAT_05e58bf8;
  pfVar7 = *(float **)(*(long *)PTR_DAT_05e59608 + 0xb8);
  iVar1 = *(int *)(param_4 + 0x140);
  fVar16 = *pfVar7;
  fVar15 = pfVar7[1];
  if (iVar1 < 3) {
    if (iVar1 == 1) {
      if (*(char *)(param_4 + 0x165) == '\0') {
        if (*(int *)(param_4 + 0x144) == 0) {
          fVar10 = (float)Random_get_insideUnitCircle_0x6000bac(0);
          if (cRam000000000625b52c == '\0') {
            func_0x029f5a50(PTR_DAT_05e59000);
            cRam000000000625b52c = '\x01';
          }
          if (*(int *)(*(long *)PTR_DAT_05e59000 + 0xe4) == 0) {
            func_0x029f5bd0();
          }
          fVar17 = SQRT(fVar10 * fVar10 + fVar8 * fVar8);
          if (fVar17 <= _UNK_0116c240) {
            if (cRam000000000625b271 == '\0') {
              func_0x029f5a50(PTR_DAT_05e59608);
              cRam000000000625b271 = '\x01';
            }
            fVar10 = **(float **)(*(long *)puVar3 + 0xb8);
            fVar8 = (*(float **)(*(long *)puVar3 + 0xb8))[1];
          }
          else {
            fVar10 = fVar10 / fVar17;
            fVar8 = fVar8 / fVar17;
          }
          fVar15 = *(float *)(param_4 + 0x150);
          fVar17 = fVar15 - *(float *)(param_4 + 0x168);
          fVar16 = fVar10 * fVar15;
          fVar15 = fVar8 * fVar15;
          fVar10 = fVar10 * fVar17;
          fVar17 = fVar8 * fVar17;
LAB_049c2734:
          fVar14 = (float)Random_get_value_0x6000ba9(0);
          fVar8 = 1.0;
          if (fVar14 <= 1.0) {
            fVar8 = fVar14;
          }
          fVar18 = 0.0;
          if (0.0 <= fVar14) {
            fVar18 = fVar8;
          }
          fVar17 = fVar17 - fVar15;
          fVar16 = fVar16 + (fVar10 - fVar16) * fVar18;
          fVar15 = fVar15 + fVar17 * fVar18;
        }
        else {
          fVar15 = 0.0;
          Quaternion_Internal_FromEulerRad_0x6000a4b(0,0,fVar9 * _UNK_0116c26c,0);
          fVar16 = (float)Quaternion_op_Multiply_0x6000a54(0);
          fVar17 = *(float *)(param_4 + 0x150) - *(float *)(param_4 + 0x168);
          fVar8 = (float)Random_Range_0x6000ba6(*(float *)(param_4 + 0x150),fVar17,0);
          fVar16 = fVar16 * fVar8;
          fVar15 = fVar15 * fVar8;
        }
      }
      else {
        if (*(int *)(param_4 + 0x144) == 0) {
          fVar16 = (float)Random_get_insideUnitCircle_0x6000bac(0);
        }
        else {
          Random_Range_0x6000ba6(0,0x3f800000,0);
          fVar8 = 0.0;
          Quaternion_Internal_FromEulerRad_0x6000a4b(0,0,fVar9 * _UNK_0116c26c,0);
          fVar16 = (float)Quaternion_op_Multiply_0x6000a54(0);
        }
        fVar17 = *(float *)(param_4 + 0x150);
        fVar16 = fVar16 * fVar17;
        fVar15 = fVar8 * fVar17;
      }
    }
    else if (iVar1 == 2) {
      if (*(char *)(param_4 + 0x165) == '\0') {
        fVar17 = (float)Random_Range_0x6000ba6(0,0x43b40000,0);
        fVar16 = *(float *)(param_4 + 0x154);
        fVar10 = *(float *)(param_4 + 0x158);
        fVar8 = fVar9;
        if (*(int *)(param_4 + 0x144) != 1) {
          fVar8 = fVar17;
        }
        func_0x05afb270(fVar8 * _UNK_0116c26c,&fStack_8c,&fStack_90);
        fVar8 = 0.5;
        fVar17 = 0.5;
        if (fStack_8c <= 0.0) {
          fVar17 = -0.5;
        }
        if (fStack_90 <= 0.0) {
          fVar8 = -0.5;
        }
        fVar15 = fVar10 * fVar17;
        fVar17 = fVar17 * (fVar10 - *(float *)(param_4 + 0x168));
        fVar14 = fVar16 * fVar8;
        fVar8 = fVar8 * (fVar16 - *(float *)(param_4 + 0x168));
        fVar16 = fStack_90 * fVar15;
        fVar19 = fStack_90 * fVar17;
        fVar18 = fStack_8c * fVar14;
        bVar4 = ABS(fVar18) < ABS(fVar16);
        fVar10 = fStack_8c * fVar8;
        fVar16 = fVar16 / fStack_8c;
        if (bVar4) {
          fVar16 = fVar14;
        }
        if (bVar4) {
          fVar15 = fVar18 / fStack_90;
        }
        fVar14 = fVar19 / fStack_8c;
        if (ABS(fVar10) < ABS(fVar19)) {
          fVar17 = fVar10 / fStack_90;
          fVar14 = fVar8;
        }
        fVar10 = (float)Random_get_value_0x6000ba9(0);
        fVar17 = fVar17 - fVar15;
        fVar8 = 1.0;
        if (fVar10 <= 1.0) {
          fVar8 = fVar10;
        }
        fVar18 = 0.0;
        if (0.0 <= fVar10) {
          fVar18 = fVar8;
        }
        fVar16 = fVar16 + (fVar14 - fVar16) * fVar18;
        fVar15 = fVar15 + fVar17 * fVar18;
      }
      else {
        fVar8 = *(float *)(param_4 + 0x154);
        if (*(int *)(param_4 + 0x144) == 1) {
          fVar16 = *(float *)(param_4 + 0x158);
          func_0x05afb270(fVar9 * _UNK_0116c26c,&fStack_84,&fStack_88);
          fVar17 = 0.5;
          fVar15 = 0.5;
          if (fStack_84 <= 0.0) {
            fVar15 = -0.5;
          }
          if (fStack_88 <= 0.0) {
            fVar17 = -0.5;
          }
          fVar15 = fVar15 * fVar16;
          fVar14 = fStack_88 * fVar15;
          fVar10 = fStack_84 * fVar17 * fVar8;
          fVar16 = fVar14 / fStack_84;
          if (ABS(fVar10) < ABS(fVar14)) {
            fVar15 = fVar10 / fStack_88;
            fVar16 = fVar17 * fVar8;
          }
          if (cRam000000000625b278 == '\0') {
            func_0x029f5a50(puVar3);
            cRam000000000625b278 = '\x01';
            pfVar7 = *(float **)(*(long *)puVar3 + 0xb8);
          }
          fVar10 = pfVar7[2];
          fVar17 = pfVar7[3];
          goto LAB_049c2734;
        }
        fVar16 = (float)Random_Range_0x6000ba6(fVar8 * -0.5,fVar8 * 0.5,0);
        fVar17 = *(float *)(param_4 + 0x158) * -0.5;
        fVar15 = (float)Random_Range_0x6000ba6(fVar17,*(float *)(param_4 + 0x158) * 0.5,0);
      }
    }
  }
  else if (iVar1 == 3) {
    if (*(int *)(param_4 + 0x144) == 1) {
      fVar15 = 0.0;
      fVar16 = fVar9 - (float)(int)(fVar9 / _UNK_0116c138) * _UNK_0116c138;
      fVar8 = _UNK_0116c138;
      if (fVar16 <= _UNK_0116c138) {
        fVar8 = fVar16;
      }
      fVar17 = *(float *)(param_4 + 0x160) * -0.5;
      fVar10 = 0.0;
      if (0.0 <= fVar16) {
        fVar10 = fVar8 / 360.0;
      }
      fVar16 = fVar17 + fVar10 * (*(float *)(param_4 + 0x160) * 0.5 - fVar17);
    }
    else {
      fVar17 = *(float *)(param_4 + 0x160);
      fVar16 = (float)Random_Range_0x6000ba6(fVar17 * -0.5,fVar17 * 0.5,0);
      fVar15 = 0.0;
    }
  }
  else if (iVar1 == 4) {
    if (cRam000000000625b26f == '\0') {
      func_0x029f5a50(PTR_DAT_05e58bf8);
      cRam000000000625b26f = '\x01';
    }
    fVar16 = **(float **)(*(long *)puVar2 + 0xb8);
    fVar15 = (*(float **)(*(long *)puVar2 + 0xb8))[1];
  }
  if (cRam000000000625b26f == '\0') {
    func_0x029f5a50(PTR_DAT_05e58bf8);
    cRam000000000625b26f = '\x01';
  }
  iVar1 = *(int *)(param_4 + 0x140);
  pfVar7 = *(float **)(*(long *)puVar2 + 0xb8);
  fVar8 = *pfVar7;
  fVar10 = pfVar7[1];
  if (iVar1 < 2) {
    if (iVar1 != 0) {
      if (iVar1 != 1) goto LAB_049c2b78;
      goto LAB_049c2848;
    }
    if (*(int *)(param_4 + 0x144) == 1) {
      fVar8 = 0.0;
      Quaternion_Internal_FromEulerRad_0x6000a4b(0,0);
      fVar9 = (float)Quaternion_op_Multiply_0x6000a54(0);
      goto LAB_049c29a0;
    }
    fVar9 = (float)Random_get_insideUnitCircle_0x6000bac(0);
    if (cRam000000000625b52c == '\0') {
      func_0x029f5a50(PTR_DAT_05e59000);
      cRam000000000625b52c = '\x01';
    }
    if (*(int *)(*(long *)PTR_DAT_05e59000 + 0xe4) == 0) {
      func_0x029f5bd0();
    }
    fVar17 = SQRT(fVar9 * fVar9 + fVar8 * fVar8);
    if (fVar17 <= _UNK_0116c240) {
      if (cRam000000000625b271 == '\0') {
        func_0x029f5a50(PTR_DAT_05e59608);
        cRam000000000625b271 = '\x01';
      }
      fStack_94 = **(float **)(*(long *)puVar3 + 0xb8);
      fVar8 = (*(float **)(*(long *)puVar3 + 0xb8))[1];
    }
    else {
      fStack_94 = fVar9 / fVar17;
      fVar8 = fVar8 / fVar17;
    }
LAB_049c2b48:
    uVar11 = Random_get_value_0x6000ba9(0);
    uVar12 = Random_get_value_0x6000ba9(0);
    fVar10 = (float)MinMaxCurve_Evaluate_0x6000057(uVar11,uVar12,param_4 + 600,0);
    fStack_94 = fStack_94 * fVar10;
LAB_049c2b74:
    fVar10 = fVar8 * fVar10;
    fVar8 = fStack_94;
  }
  else if (iVar1 == 2) {
LAB_049c2848:
    if (cRam000000000625b52c == '\0') {
      func_0x029f5a50(PTR_DAT_05e59000);
      cRam000000000625b52c = '\x01';
    }
    if (*(int *)(*(long *)PTR_DAT_05e59000 + 0xe4) == 0) {
      func_0x029f5bd0();
    }
    fVar10 = SQRT(fVar15 * fVar15 + fVar16 * fVar16);
    if (fVar10 <= _UNK_0116c240) {
      if (cRam000000000625b271 == '\0') {
        func_0x029f5a50(PTR_DAT_05e59608);
        cRam000000000625b271 = '\x01';
      }
      fVar8 = **(float **)(*(long *)puVar3 + 0xb8);
      fVar10 = (*(float **)(*(long *)puVar3 + 0xb8))[1];
    }
    else {
      fVar8 = fVar16 / fVar10;
      fVar10 = fVar15 / fVar10;
    }
    uVar11 = Random_get_value_0x6000ba9(0);
    uVar12 = Random_get_value_0x6000ba9(0);
    fVar9 = (float)MinMaxCurve_Evaluate_0x6000057(uVar11,uVar12,param_4 + 600,0);
    fVar8 = fVar8 * fVar9;
    fVar10 = fVar10 * fVar9;
  }
  else {
    if (iVar1 == 3) {
      if (*(int *)(param_4 + 0x128) == 1) {
        lVar5 = Component_get_transform_0x6000c82(param_4,0);
        if (lVar5 == 0) goto LAB_049c2ce4;
        fVar9 = (float)Transform_get_up_0x6000f56(lVar5,0);
      }
      else {
        if (cRam000000000625b61d == '\0') {
          func_0x029f5a50(puVar2);
          cRam000000000625b61d = '\x01';
          pfVar7 = *(float **)(*(long *)puVar2 + 0xb8);
        }
        fVar9 = pfVar7[6];
        fVar8 = pfVar7[7];
      }
LAB_049c29a0:
      uVar11 = Random_get_value_0x6000ba9(0);
      uVar12 = Random_get_value_0x6000ba9(0);
      fVar10 = (float)MinMaxCurve_Evaluate_0x6000057(uVar11,uVar12,param_4 + 600,0);
      fStack_94 = fVar9 * fVar10;
      goto LAB_049c2b74;
    }
    if (iVar1 == 4) {
      if (*(int *)(param_4 + 0x128) == 1) {
        fVar8 = *(float *)(param_4 + 0x15c);
        if (*(int *)(param_4 + 0x144) == 1) {
          lVar5 = Component_get_transform_0x6000c82(param_4,0);
          if (lVar5 == 0) goto LAB_049c2ce4;
          fVar9 = fVar9 - (float)(int)(fVar9 / _UNK_0116c138) * _UNK_0116c138;
          fVar10 = _UNK_0116c138;
          if (fVar9 <= _UNK_0116c138) {
            fVar10 = fVar9;
          }
          fVar17 = fVar8 * 0.5;
          fVar14 = 0.0;
          if (0.0 <= fVar9) {
            fVar14 = fVar10 / 360.0;
          }
          fVar8 = fVar8 * -0.5 + fVar14 * (fVar17 - fVar8 * -0.5);
        }
        else {
          fVar8 = (float)Random_Range_0x6000ba6(fVar8 * -0.5,fVar8 * 0.5,0);
          lVar5 = Component_get_transform_0x6000c82(param_4,0);
          if (lVar5 == 0) goto LAB_049c2ce4;
        }
        Transform_get_eulerAngles_0x6000f51(lVar5,0);
        fVar8 = fVar8 - fVar17;
      }
      else if (*(int *)(param_4 + 0x144) == 1) {
        fVar9 = fVar9 - (float)(int)(fVar9 / _UNK_0116c138) * _UNK_0116c138;
        fVar17 = _UNK_0116c138;
        if (fVar9 <= _UNK_0116c138) {
          fVar17 = fVar9;
        }
        fVar8 = *(float *)(param_4 + 0x15c) * -0.5;
        fVar10 = 0.0;
        if (0.0 <= fVar9) {
          fVar10 = fVar17 / 360.0;
        }
        fVar8 = fVar8 + fVar10 * (*(float *)(param_4 + 0x15c) * 0.5 - fVar8);
      }
      else {
        fVar8 = (float)Random_Range_0x6000ba6
                                 (*(float *)(param_4 + 0x15c) * -0.5,
                                  *(float *)(param_4 + 0x15c) * 0.5,0);
      }
      func_0x05afb270(fVar8 * _UNK_0116c26c,&fStack_94,&fStack_98);
      fVar8 = fStack_98;
      goto LAB_049c2b48;
    }
  }
LAB_049c2b78:
  lVar5 = ParticleImage_get_pool_0x600008c(param_4);
  if (lVar5 != 0) {
    lVar6 = ParticlePool_Get_0x600016c(lVar5,0);
    uVar11 = Random_get_value_0x6000ba9(0);
    uVar12 = Random_get_value_0x6000ba9(0);
    lVar5 = param_4 + 0x410;
    if (*(char *)(param_4 + 0x409) != '\0') {
      lVar5 = param_4 + 0x470;
    }
    uVar11 = MinMaxCurve_Evaluate_0x6000057(uVar11,uVar12,lVar5,0);
    uVar12 = Random_get_value_0x6000ba9(0);
    Random_get_value_0x6000ba9(0);
    MinMaxGradient_Evaluate_0x6000064(uVar12,param_4 + 0x200,0);
    uVar12 = Random_get_value_0x6000ba9(0);
    Random_get_value_0x6000ba9(0);
    SeparatedMinMaxCurve_Evaluate_0x6000108(uVar12,param_4 + 0x178);
    uVar12 = Random_get_value_0x6000ba9(0);
    uVar13 = Random_get_value_0x6000ba9(0);
    MinMaxCurve_Evaluate_0x6000057(uVar12,uVar13,param_4 + 0x238,0);
    if (lVar6 != 0) {
      Particle_Initialize(param_2 + fVar16,param_3 + fVar15,fVar8,fVar10,0,0,uVar11,lVar6);
      return lVar6;
    }
  }
LAB_049c2ce4:
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

