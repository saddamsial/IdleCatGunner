/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b7ae48, Ghidra VA 02c7ae48. */

/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */

void Pet_Ingame_manager_ComputePetSeparation
               (undefined1 param_1 [16],undefined1 param_2 [16],ulong param_3,long param_4)

{
  float fVar1;
  float fVar2;
  undefined *puVar3;
  undefined *puVar4;
  bool bVar5;
  bool bVar6;
  bool bVar7;
  ulong uVar8;
  ulong uVar9;
  long lVar10;
  long lVar11;
  uint uVar12;
  long lVar13;
  undefined8 uVar14;
  ulong uVar15;
  long lVar16;
  float fVar17;
  float fVar18;
  undefined4 uVar19;
  float fVar20;
  float fVar21;
  float fVar22;
  
  if ((bRam000000000625c317 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e591c0);
    bRam000000000625c317 = 1;
  }
  puVar4 = PTR_DAT_05e591c0;
  lVar11 = *(long *)(param_4 + 0x20);
  if (lVar11 != 0) {
    lVar13 = 4;
    do {
      puVar3 = PTR_DAT_05e59000;
      fVar2 = _UNK_0116c268;
      fVar1 = _UNK_0116c240;
      uVar15 = lVar13 - 4;
      if ((long)(int)*(uint *)(lVar11 + 0x18) <= (long)uVar15) {
        uVar15 = 0;
        uVar8 = 1;
        goto LAB_02c7afbc;
      }
      if (*(uint *)(lVar11 + 0x18) <= uVar15) goto LAB_02c7b264;
      uVar14 = *(undefined8 *)(lVar11 + lVar13 * 8);
      if (*(int *)(*(long *)puVar4 + 0xe4) == 0) {
        func_0x029f5bd0();
      }
      uVar8 = Object_op_Inequality_0x6000ded(uVar14,0,0);
      if ((uVar8 & 1) != 0) {
        lVar11 = *(long *)(param_4 + 0x20);
        if (lVar11 == 0) break;
        if (*(uint *)(lVar11 + 0x18) <= uVar15) goto LAB_02c7b264;
        lVar11 = *(long *)(lVar11 + lVar13 * 8);
        if ((lVar11 == 0) || (lVar11 = Component_get_gameObject_0x6000c83(lVar11,0), lVar11 == 0))
        break;
        uVar8 = GameObject_get_activeSelf_0x6000cff(lVar11,0);
        if ((uVar8 & 1) != 0) {
          lVar11 = *(long *)(param_4 + 0x20);
          if (lVar11 == 0) break;
          if (*(uint *)(lVar11 + 0x18) <= uVar15) goto LAB_02c7b264;
          lVar11 = *(long *)(lVar11 + lVar13 * 8);
          if (cRam000000000625b26f == '\0') {
            func_0x029f5a50(PTR_DAT_05e58bf8);
            cRam000000000625b26f = '\x01';
          }
          if (lVar11 == 0) break;
          uVar19 = *(undefined4 *)(*(undefined8 **)(*(long *)PTR_DAT_05e58bf8 + 0xb8) + 1);
          *(undefined8 *)(lVar11 + 0x40) = **(undefined8 **)(*(long *)PTR_DAT_05e58bf8 + 0xb8);
          *(undefined4 *)(lVar11 + 0x48) = uVar19;
        }
      }
      lVar11 = *(long *)(param_4 + 0x20);
      lVar13 = lVar13 + 1;
    } while (lVar11 != 0);
  }
  goto LAB_02c7b230;
  while( true ) {
    uVar15 = uVar15 + 1;
    uVar8 = (ulong)((int)uVar8 + 1);
    if (lVar11 == 0) break;
LAB_02c7afbc:
    if ((long)(int)*(uint *)(lVar11 + 0x18) <= (long)uVar15) {
      return;
    }
    if (*(uint *)(lVar11 + 0x18) <= uVar15) {
LAB_02c7b264:
                    /* WARNING: Subroutine does not return */
      Throw_Index_Wrapper();
    }
    lVar13 = *(long *)(lVar11 + uVar15 * 8 + 0x20);
    if (*(int *)(*(long *)puVar4 + 0xe4) == 0) {
      func_0x029f5bd0();
    }
    uVar9 = Object_op_Equality_0x6000dec(lVar13,0,0);
    if ((uVar9 & 1) == 0) {
      if ((lVar13 == 0) || (lVar11 = Component_get_gameObject_0x6000c83(lVar13,0), lVar11 == 0))
      break;
      uVar9 = GameObject_get_activeSelf_0x6000cff(lVar11,0);
      lVar11 = *(long *)(param_4 + 0x20);
      if ((uVar9 & 1) != 0) {
        if (lVar11 == 0) break;
        lVar16 = 4;
        while( true ) {
          uVar12 = ((int)uVar15 + (int)lVar16) - 3;
          if ((int)*(uint *)(lVar11 + 0x18) <= (int)uVar12) break;
          if (*(uint *)(lVar11 + 0x18) <= uVar12) goto LAB_02c7b264;
          lVar11 = *(long *)(lVar11 + (-(uVar8 >> 0x1f) & 0xfffffff800000000 | uVar8 << 3) +
                            lVar16 * 8);
          if (*(int *)(*(long *)puVar4 + 0xe4) == 0) {
            func_0x029f5bd0();
          }
          uVar9 = Object_op_Equality_0x6000dec(lVar11,0,0);
          if ((uVar9 & 1) == 0) {
            if ((lVar11 == 0) ||
               (lVar10 = Component_get_gameObject_0x6000c83(lVar11,0), lVar10 == 0))
            goto LAB_02c7b230;
            uVar9 = GameObject_get_activeSelf_0x6000cff(lVar10,0);
            fVar22 = (float)param_3;
            if ((uVar9 & 1) != 0) {
              lVar10 = Component_get_transform_0x6000c82(lVar13,0);
              if (lVar10 == 0) goto LAB_02c7b230;
              fVar17 = (float)Transform_get_position_0x6000f4d(lVar10,0);
              fVar20 = fVar22;
              lVar10 = Component_get_transform_0x6000c82(lVar11,0);
              if (lVar10 == 0) goto LAB_02c7b230;
              fVar18 = (float)Transform_get_position_0x6000f4d(lVar10,0);
              if (cRam000000000625bae8 == '\0') {
                func_0x029f5a50(puVar3);
                cRam000000000625bae8 = '\x01';
              }
              if (*(int *)(*(long *)puVar3 + 0xe4) == 0) {
                func_0x029f5bd0();
              }
              fVar17 = fVar17 - fVar18;
              fVar22 = fVar22 - fVar20;
              fVar18 = *(float *)(param_4 + 0x48);
              fVar20 = SQRT(fVar17 * fVar17 + fVar22 * fVar22);
              param_3 = (ulong)(uint)fVar20;
              bVar5 = false;
              bVar6 = false;
              bVar7 = false;
              if (fVar2 <= fVar20) {
                bVar5 = false;
                bVar6 = false;
                bVar7 = true;
                if (!NAN(fVar20) && !NAN(fVar18)) {
                  bVar5 = fVar20 < fVar18;
                  bVar6 = fVar20 == fVar18;
                  bVar7 = false;
                }
              }
              if (bVar6 || bVar5 != bVar7) {
                fVar21 = *(float *)(param_4 + 0x4c);
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
                  uVar14 = **(undefined8 **)(*(long *)PTR_DAT_05e58bf8 + 0xb8);
                  fVar22 = *(float *)(*(undefined8 **)(*(long *)PTR_DAT_05e58bf8 + 0xb8) + 1);
                }
                else {
                  uVar14 = CONCAT44(0.0 / fVar20,fVar17 / fVar20);
                  fVar22 = fVar22 / fVar20;
                }
                fVar20 = 1.0 - fVar20 / fVar18;
                fVar21 = fVar20 * fVar20 * fVar21;
                fVar20 = (float)uVar14 * fVar21;
                fVar17 = (float)((ulong)uVar14 >> 0x20) * fVar21;
                *(ulong *)(lVar13 + 0x40) =
                     CONCAT44(fVar17 + (float)((ulong)*(undefined8 *)(lVar13 + 0x40) >> 0x20),
                              fVar20 + (float)*(undefined8 *)(lVar13 + 0x40));
                *(float *)(lVar13 + 0x48) = fVar21 * fVar22 + *(float *)(lVar13 + 0x48);
                param_3 = *(ulong *)(lVar11 + 0x40);
                *(ulong *)(lVar11 + 0x40) =
                     CONCAT44((float)(param_3 >> 0x20) - fVar17,(float)param_3 - fVar20);
                *(float *)(lVar11 + 0x48) = *(float *)(lVar11 + 0x48) - fVar21 * fVar22;
              }
            }
          }
          lVar11 = *(long *)(param_4 + 0x20);
          lVar16 = lVar16 + 1;
          if (lVar11 == 0) goto LAB_02c7b230;
        }
      }
    }
    else {
      lVar11 = *(long *)(param_4 + 0x20);
    }
  }
LAB_02c7b230:
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

