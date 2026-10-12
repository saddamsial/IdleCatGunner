/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2a83914, Ghidra VA 02b83914. */

/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */

void DamageTextObject_ApplyAnimation
               (float param_1,float param_2,float param_3,float param_4,float param_5,float param_6,
               long param_7,byte param_8,byte param_9,byte param_10)

{
  long lVar1;
  uint uVar2;
  undefined1 uVar3;
  uint uVar4;
  float *pfVar5;
  long lVar6;
  long lVar7;
  long lVar8;
  long lVar9;
  float fVar10;
  float fVar11;
  float fVar12;
  float fVar13;
  float fVar14;
  float fVar15;
  float fVar16;
  float fVar17;
  float fVar18;
  int iVar19;
  float fVar20;
  float fVar21;
  float fVar22;
  float fVar23;
  float fVar24;
  
  param_9 = param_9 | param_10;
  if (((((param_9 & 1) != 0) || ((param_8 & 1) != 0)) &&
      (lVar7 = *(long *)(param_7 + 0x48), lVar7 != 0)) &&
     (lVar6 = *(long *)(param_7 + 0x78), lVar6 != 0)) {
    fVar11 = *(float *)(param_7 + 0x38) * _UNK_0116c1b0;
    lVar8 = *(long *)(lVar7 + 0x20);
    lVar9 = *(long *)(lVar7 + 0x10);
    fVar13 = *(float *)(param_7 + 0x3c) * _UNK_0116c1b0;
    fVar17 = *(float *)(param_7 + 0x40) * _UNK_0116c1b0;
    uVar3 = *(undefined1 *)(param_7 + 0x44);
    lVar7 = lVar9 + 0x20;
    lVar1 = lVar8 + 0x23;
    fVar10 = *(float *)(param_7 + 0x2c) + param_1 * fVar11 + param_4 * fVar13;
    fVar12 = param_5 * fVar13 + param_2 * fVar11 + *(float *)(param_7 + 0x30);
    fVar11 = param_6 * fVar13 + param_3 * fVar11 + *(float *)(param_7 + 0x34);
    do {
      uVar4 = *(uint *)(lVar6 + 0x40);
      if (((param_8 | param_10) & 1) != 0) {
        if (lVar9 == 0) goto LAB_02b83b60;
        uVar2 = *(uint *)(lVar9 + 0x18);
        if (uVar2 <= uVar4) goto LAB_02b83b5c;
        iVar19 = *(int *)(lVar6 + 0x3c);
        pfVar5 = (float *)(lVar7 + (long)(int)uVar4 * 0xc);
        fVar18 = *(float *)(lVar6 + 0x30);
        fVar21 = *(float *)(lVar6 + 0x34);
        fVar15 = param_4 * fVar17 * fVar21;
        fVar13 = fVar18 + (float)*(int *)(lVar6 + 0x38);
        fVar14 = param_5 * fVar17 * fVar21;
        fVar23 = fVar10 + param_1 * fVar17 * fVar13;
        fVar24 = fVar12 + param_2 * fVar17 * fVar13;
        fVar16 = param_6 * fVar17 * fVar21;
        fVar13 = fVar11 + param_3 * fVar17 * fVar13;
        *pfVar5 = fVar15 + fVar23;
        pfVar5[1] = fVar14 + fVar24;
        pfVar5[2] = fVar16 + fVar13;
        if (uVar2 <= uVar4 + 1) goto LAB_02b83b5c;
        pfVar5 = (float *)(lVar7 + (long)(int)(uVar4 + 1) * 0xc);
        fVar21 = fVar21 + (float)iVar19;
        fVar22 = param_4 * fVar17 * fVar21;
        fVar20 = param_5 * fVar17 * fVar21;
        fVar21 = param_6 * fVar17 * fVar21;
        *pfVar5 = fVar23 + fVar22;
        pfVar5[1] = fVar24 + fVar20;
        pfVar5[2] = fVar13 + fVar21;
        if (uVar2 <= uVar4 + 2) goto LAB_02b83b5c;
        pfVar5 = (float *)(lVar7 + (long)(int)(uVar4 + 2) * 0xc);
        fVar13 = fVar10 + param_1 * fVar17 * fVar18;
        fVar23 = fVar12 + param_2 * fVar17 * fVar18;
        fVar18 = fVar11 + param_3 * fVar17 * fVar18;
        *pfVar5 = fVar13 + fVar22;
        pfVar5[1] = fVar23 + fVar20;
        pfVar5[2] = fVar18 + fVar21;
        if (uVar2 <= uVar4 + 3) goto LAB_02b83b5c;
        pfVar5 = (float *)(lVar7 + (long)(int)(uVar4 + 3) * 0xc);
        *pfVar5 = fVar13 + fVar15;
        pfVar5[1] = fVar23 + fVar14;
        pfVar5[2] = fVar18 + fVar16;
      }
      if ((param_9 & 1) != 0) {
        if (lVar8 == 0) goto LAB_02b83b60;
        if (*(uint *)(lVar8 + 0x18) <= uVar4) {
LAB_02b83b5c:
                    /* WARNING: Subroutine does not return */
          Throw_Index_Wrapper();
        }
        *(undefined1 *)(lVar1 + (long)(int)uVar4 * 4) = uVar3;
        uVar2 = uVar4 + 1;
        if (*(uint *)(lVar8 + 0x18) <= uVar2) goto LAB_02b83b5c;
        *(undefined1 *)(lVar1 + (-(ulong)(uVar2 >> 0x1f) & 0xfffffffc00000000 | (ulong)uVar2 << 2))
             = uVar3;
        uVar2 = uVar4 + 2;
        if (*(uint *)(lVar8 + 0x18) <= uVar2) goto LAB_02b83b5c;
        uVar4 = uVar4 + 3;
        *(undefined1 *)(lVar1 + (-(ulong)(uVar2 >> 0x1f) & 0xfffffffc00000000 | (ulong)uVar2 << 2))
             = uVar3;
        if (*(uint *)(lVar8 + 0x18) <= uVar4) goto LAB_02b83b5c;
        *(undefined1 *)(lVar1 + (-(ulong)(uVar4 >> 0x1f) & 0xfffffffc00000000 | (ulong)uVar4 << 2))
             = uVar3;
      }
      lVar6 = *(long *)(lVar6 + 0x10);
    } while (lVar6 != 0);
    lVar7 = *(long *)(param_7 + 0x48);
    if (lVar7 == 0) {
LAB_02b83b60:
                    /* WARNING: Subroutine does not return */
      Throw_NullReference_Wrapper();
    }
    *(undefined1 *)(lVar7 + 0x5c) = 1;
    *(byte *)(lVar7 + 0x5d) = *(byte *)(lVar7 + 0x5d) | (param_8 | param_10) & 1;
    *(byte *)(lVar7 + 0x5e) = *(byte *)(lVar7 + 0x5e) | param_9 & 1;
  }
  return;
}

