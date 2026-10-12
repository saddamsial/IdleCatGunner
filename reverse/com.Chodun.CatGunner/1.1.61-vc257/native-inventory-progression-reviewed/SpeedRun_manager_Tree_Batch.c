/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2baa234, Ghidra VA 02caa234. */

/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */

void SpeedRun_manager_Tree_Batch(long param_1,int param_2)

{
  uint uVar1;
  undefined *puVar2;
  long lVar3;
  long lVar4;
  uint uVar5;
  int iVar6;
  ulong uVar7;
  long lVar8;
  ulong uVar9;
  int iVar10;
  ulong uVar11;
  int iVar12;
  int iVar13;
  long lVar14;
  float fVar15;
  float fVar16;
  float fVar17;
  double dVar18;
  float fVar19;
  float fVar20;
  float fVar21;
  double dVar22;
  float fVar23;
  float fStack_b0;
  float fStack_ac;
  double dStack_a8;
  
  if ((bRam000000000625c503 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e5d790);
    func_0x029f5a50(PTR_DAT_05e5d5e8);
    bRam000000000625c503 = 1;
  }
  if (*(long *)(param_1 + 0x20) == 0) {
    return;
  }
  if (param_2 < 1) {
    return;
  }
  if (*(long *)(*(long *)(param_1 + 0x20) + 0x18) == 0) {
    return;
  }
  fVar19 = *(float *)(param_1 + 0xe0);
  fVar15 = *(float *)(param_1 + 0xe4);
  fVar20 = (fVar15 * fVar15 - fVar19 * fVar19) * _UNK_0116c1ac;
  if (cRam000000000625b95a == '\0') {
    func_0x029f5a50(PTR_DAT_05e59000);
    cRam000000000625b95a = '\x01';
  }
  puVar2 = PTR_DAT_05e59000;
  fVar15 = (fVar15 - fVar19) / SQRT(fVar20 / (float)param_2);
  if (*(int *)(*(long *)PTR_DAT_05e59000 + 0xe4) == 0) {
    func_0x029f5bd0();
  }
  dVar22 = (double)fVar15;
  dVar18 = (double)func_0x05afb230(dVar22,&dStack_a8);
  if (0.0 <= fVar15) {
    if (dVar18 == 0.5) {
      dVar18 = 1.0;
      goto LAB_02caa360;
    }
    dVar22 = (double)(long)(dVar22 + 0.5);
  }
  else if (dVar18 == -0.5) {
    dVar18 = -1.0;
LAB_02caa360:
    dVar22 = dStack_a8;
    if (((long)dStack_a8 & 1U) != 0) {
      dVar22 = dStack_a8 + dVar18;
    }
  }
  else {
    dVar22 = (double)(long)(dVar22 + -0.5);
  }
  uVar5 = (uint)dVar22;
  fVar19 = *(float *)(param_1 + 0xe0);
  fVar15 = *(float *)(param_1 + 0xe4);
  if ((int)uVar5 < 2) {
    uVar5 = 1;
  }
  if (dVar22 == INFINITY) {
    uVar5 = 1;
  }
  uVar9 = (ulong)uVar5;
  lVar3 = func_0x029f5b40(*(undefined8 *)PTR_DAT_05e5d5e8,uVar9);
  fVar20 = _UNK_0116be60;
  if (lVar3 == 0) {
LAB_02caa70c:
                    /* WARNING: Subroutine does not return */
    Throw_NullReference_Wrapper();
  }
  fVar23 = 0.0;
  uVar1 = *(uint *)(lVar3 + 0x18);
  uVar7 = 0;
  do {
    if (uVar1 == uVar7) goto LAB_02caa708;
    fVar21 = ((fVar15 - fVar19) / (float)(int)uVar5) * ((float)(int)uVar7 + 0.5) +
             *(float *)(param_1 + 0xe0);
    *(float *)(lVar3 + 0x20 + uVar7 * 4) = fVar21;
    uVar7 = uVar7 + 1;
    fVar23 = fVar23 + fVar21 * fVar20;
  } while (uVar9 != uVar7);
  lVar4 = func_0x029f5b40(*(undefined8 *)PTR_DAT_05e5d790,uVar5);
  uVar7 = 0;
  iVar12 = 0;
  do {
    if (*(uint *)(lVar3 + 0x18) <= uVar7) goto LAB_02caa708;
    fVar15 = *(float *)(lVar3 + 0x20 + uVar7 * 4);
    if (cRam000000000625b95a == '\0') {
      func_0x029f5a50(puVar2);
      cRam000000000625b95a = '\x01';
    }
    if (*(int *)(*(long *)puVar2 + 0xe4) == 0) {
      func_0x029f5bd0();
    }
    fVar15 = ((fVar15 * fVar20) / fVar23) * (float)param_2;
    dVar22 = (double)fVar15;
    dVar18 = (double)func_0x05afb230(dVar22,&dStack_a8);
    if (0.0 <= fVar15) {
      if (dVar18 == 0.5) {
        dVar18 = dStack_a8 + 1.0;
        goto LAB_02caa4e4;
      }
      dVar22 = (double)(long)(dVar22 + 0.5);
    }
    else if (dVar18 == -0.5) {
      dVar18 = dStack_a8 + -1.0;
LAB_02caa4e4:
      dVar22 = dStack_a8;
      if (((long)dStack_a8 & 1U) != 0) {
        dVar22 = dVar18;
      }
    }
    else {
      dVar22 = (double)(long)(dVar22 + -0.5);
    }
    iVar6 = (int)dVar22;
    if (iVar6 < 2) {
      iVar6 = 1;
    }
    if (dVar22 == INFINITY) {
      iVar6 = 1;
    }
    if (lVar4 == 0) goto LAB_02caa70c;
    uVar1 = *(uint *)(lVar4 + 0x18);
    if (uVar1 <= uVar7) goto LAB_02caa708;
    *(int *)(lVar4 + 0x20 + uVar7 * 4) = iVar6;
    uVar7 = uVar7 + 1;
    iVar12 = iVar6 + iVar12;
  } while (uVar9 != uVar7);
  if (param_2 - iVar12 != 0) {
    uVar5 = uVar5 - 1;
    if (uVar1 <= uVar5) goto LAB_02caa708;
    lVar14 = lVar4 + (ulong)uVar5 * 4;
    iVar12 = (param_2 - iVar12) + *(int *)(lVar14 + 0x20);
    *(int *)(lVar14 + 0x20) = iVar12;
    if (iVar12 < 1) {
      *(undefined4 *)(lVar4 + (ulong)uVar5 * 4 + 0x20) = 1;
    }
  }
  fVar15 = _UNK_0116c26c;
  uVar7 = 0;
  uVar11 = 0;
  while ((uVar7 < *(uint *)(lVar4 + 0x18) && (uVar7 < *(uint *)(lVar3 + 0x18)))) {
    iVar12 = *(int *)(lVar4 + uVar7 * 4 + 0x20);
    fVar19 = 0.0;
    if ((uVar7 & 1) != 0) {
      fVar19 = (360.0 / (float)iVar12) * 0.5;
    }
    if (0 < iVar12) {
      lVar14 = 0;
      iVar10 = (int)uVar11;
      fVar20 = *(float *)(lVar3 + uVar7 * 4 + 0x20);
      iVar6 = iVar10;
      if (iVar10 <= param_2) {
        iVar6 = param_2;
      }
      do {
        iVar13 = (int)lVar14;
        if ((iVar10 - iVar6) + iVar13 == 0) {
          return;
        }
        func_0x05afb270((fVar19 + (360.0 / (float)iVar12) * (float)iVar13) * fVar15,&fStack_ac,
                        &fStack_b0);
        fVar21 = fStack_ac;
        fVar23 = fStack_b0;
        fVar16 = (float)Random_Range_0x6000ba6(-*(float *)(param_1 + 0xe8),0);
        fVar17 = (float)Random_Range_0x6000ba6(-*(float *)(param_1 + 0xec),0);
        lVar8 = *(long *)(param_1 + 0x20);
        if (lVar8 == 0) goto LAB_02caa70c;
        if (*(uint *)(lVar8 + 0x18) <= (uint)(iVar10 + iVar13)) goto LAB_02caa708;
        lVar8 = *(long *)(lVar8 + (-(uVar11 >> 0x1f) & 0xfffffff800000000 | uVar11 << 3) + 0x20 +
                         lVar14 * 8);
        if ((lVar8 == 0) || (lVar8 = Component_get_transform_0x6000c82(lVar8,0), lVar8 == 0))
        goto LAB_02caa70c;
        Transform_set_localPosition_0x6000f50
                  ((fVar20 * fVar23 + fVar23 * fVar16) - fVar21 * fVar17,0,
                   fVar20 * fVar21 + fVar21 * fVar16 + fVar23 * fVar17,lVar8,0);
        lVar14 = lVar14 + 1;
      } while (iVar12 != (int)lVar14);
      uVar11 = (ulong)(uint)(iVar10 + (int)lVar14);
    }
    uVar7 = uVar7 + 1;
    if (uVar7 == uVar9) {
      return;
    }
  }
LAB_02caa708:
                    /* WARNING: Subroutine does not return */
  Throw_Index_Wrapper();
}

