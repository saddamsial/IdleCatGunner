/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b7b268, Ghidra VA 02c7b268. */

/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */

void Pet_Ingame_manager_ComputeCatAvoidance
               (undefined1 param_1 [16],undefined1 param_2 [16],ulong param_3,long param_4)

{
  float fVar1;
  float fVar2;
  undefined *puVar3;
  undefined *puVar4;
  undefined *puVar5;
  bool bVar6;
  bool bVar7;
  bool bVar8;
  ulong uVar9;
  long lVar10;
  long lVar11;
  long lVar12;
  long lVar13;
  ulong uVar14;
  ulong uVar15;
  float fVar16;
  float fVar17;
  undefined8 uVar18;
  undefined4 uVar19;
  float fVar20;
  undefined8 uVar21;
  float fVar22;
  float fVar23;
  float fVar24;
  
  puVar5 = PTR_DAT_05e5d5b0;
  if ((bRam000000000625c318 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e5d5b0);
    func_0x029f5a50(PTR_DAT_05e591c0);
    bRam000000000625c318 = 1;
  }
  puVar4 = PTR_DAT_05e591c0;
  puVar3 = PTR_DAT_05e59000;
  fVar2 = _UNK_0116c268;
  fVar1 = _UNK_0116c240;
  lVar12 = *(long *)(*(long *)(*(long *)puVar5 + 0xb8) + 8);
  if ((lVar12 == 0) || (lVar12 = *(long *)(lVar12 + 0x20), lVar12 == 0)) {
    return;
  }
  lVar13 = *(long *)(param_4 + 0x20);
  if (lVar13 != 0) {
    uVar15 = 0;
    do {
      if ((long)(int)*(uint *)(lVar13 + 0x18) <= (long)uVar15) {
        return;
      }
      if (*(uint *)(lVar13 + 0x18) <= uVar15) {
LAB_02c7b5d0:
                    /* WARNING: Subroutine does not return */
        Throw_Index_Wrapper();
      }
      lVar13 = *(long *)(lVar13 + uVar15 * 8 + 0x20);
      if (*(int *)(*(long *)puVar4 + 0xe4) == 0) {
        func_0x029f5bd0();
      }
      uVar9 = Object_op_Equality_0x6000dec(lVar13,0,0);
      if ((uVar9 & 1) == 0) {
        if ((lVar13 == 0) || (lVar10 = Component_get_gameObject_0x6000c83(lVar13,0), lVar10 == 0))
        break;
        uVar9 = GameObject_get_activeSelf_0x6000cff(lVar10,0);
        if ((uVar9 & 1) != 0) {
          if (cRam000000000625b26f == '\0') {
            func_0x029f5a50(PTR_DAT_05e58bf8);
            cRam000000000625b26f = '\x01';
          }
          uVar19 = *(undefined4 *)(*(undefined8 **)(*(long *)PTR_DAT_05e58bf8 + 0xb8) + 1);
          *(undefined8 *)(lVar13 + 0x4c) = **(undefined8 **)(*(long *)PTR_DAT_05e58bf8 + 0xb8);
          *(undefined4 *)(lVar13 + 0x54) = uVar19;
          if (0 < (int)*(ulong *)(lVar12 + 0x18)) {
            uVar9 = 0;
            uVar14 = *(ulong *)(lVar12 + 0x18) & 0xffffffff;
            do {
              if (uVar14 <= uVar9) goto LAB_02c7b5d0;
              lVar10 = *(long *)(lVar12 + 0x20 + uVar9 * 8);
              if (*(int *)(*(long *)puVar4 + 0xe4) == 0) {
                func_0x029f5bd0();
              }
              uVar14 = Object_op_Equality_0x6000dec(lVar10,0,0);
              if ((uVar14 & 1) == 0) {
                if ((lVar10 == 0) ||
                   (lVar11 = Component_get_gameObject_0x6000c83(lVar10,0), lVar11 == 0))
                goto LAB_02c7b59c;
                uVar14 = GameObject_get_activeSelf_0x6000cff(lVar11,0);
                fVar24 = (float)param_3;
                if ((uVar14 & 1) != 0) {
                  lVar11 = Component_get_transform_0x6000c82(lVar13,0);
                  if (lVar11 == 0) goto LAB_02c7b59c;
                  fVar16 = (float)Transform_get_position_0x6000f4d(lVar11,0);
                  fVar20 = fVar24;
                  lVar10 = Component_get_transform_0x6000c82(lVar10,0);
                  if (lVar10 == 0) goto LAB_02c7b59c;
                  fVar17 = (float)Transform_get_position_0x6000f4d(lVar10,0);
                  if (cRam000000000625bae8 == '\0') {
                    func_0x029f5a50(puVar3);
                    cRam000000000625bae8 = '\x01';
                  }
                  if (*(int *)(*(long *)puVar3 + 0xe4) == 0) {
                    func_0x029f5bd0();
                  }
                  fVar16 = fVar16 - fVar17;
                  fVar24 = fVar24 - fVar20;
                  fVar17 = *(float *)(param_4 + 0x50);
                  fVar20 = SQRT(fVar16 * fVar16 + fVar24 * fVar24);
                  param_3 = (ulong)(uint)fVar20;
                  bVar6 = false;
                  bVar7 = false;
                  bVar8 = false;
                  if (fVar2 <= fVar20) {
                    bVar6 = false;
                    bVar7 = false;
                    bVar8 = true;
                    if (!NAN(fVar20) && !NAN(fVar17)) {
                      bVar6 = fVar20 < fVar17;
                      bVar7 = fVar20 == fVar17;
                      bVar8 = false;
                    }
                  }
                  if (bVar7 || bVar6 != bVar8) {
                    fVar23 = *(float *)(param_4 + 0x54);
                    uVar21 = *(undefined8 *)(lVar13 + 0x4c);
                    fVar22 = *(float *)(lVar13 + 0x54);
                    if (cRam000000000625b52e == '\0') {
                      func_0x029f5a50(puVar3);
                      cRam000000000625b52e = '\x01';
                    }
                    if (*(int *)(*(long *)puVar3 + 0xe4) == 0) {
                      func_0x029f5bd0();
                    }
                    if (fVar20 <= fVar1) {
                      if (cRam000000000625b26f == '\0') {
                        func_0x029f5a50(PTR_DAT_05e58bf8);
                        cRam000000000625b26f = '\x01';
                      }
                      uVar18 = **(undefined8 **)(*(long *)PTR_DAT_05e58bf8 + 0xb8);
                      fVar24 = *(float *)(*(undefined8 **)(*(long *)PTR_DAT_05e58bf8 + 0xb8) + 1);
                    }
                    else {
                      uVar18 = CONCAT44(0.0 / fVar20,fVar16 / fVar20);
                      fVar24 = fVar24 / fVar20;
                    }
                    fVar20 = 1.0 - fVar20 / fVar17;
                    fVar23 = fVar20 * fVar20 * fVar23;
                    param_3 = (ulong)(uint)fVar23;
                    *(ulong *)(lVar13 + 0x4c) =
                         CONCAT44((float)((ulong)uVar21 >> 0x20) +
                                  (float)((ulong)uVar18 >> 0x20) * fVar23,
                                  (float)uVar21 + (float)uVar18 * fVar23);
                    *(float *)(lVar13 + 0x54) = fVar22 + fVar23 * fVar24;
                  }
                }
              }
              uVar14 = (ulong)*(uint *)(lVar12 + 0x18);
              uVar9 = uVar9 + 1;
            } while ((long)uVar9 < (long)(int)*(uint *)(lVar12 + 0x18));
          }
        }
      }
      lVar13 = *(long *)(param_4 + 0x20);
      uVar15 = uVar15 + 1;
    } while (lVar13 != 0);
  }
LAB_02c7b59c:
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

