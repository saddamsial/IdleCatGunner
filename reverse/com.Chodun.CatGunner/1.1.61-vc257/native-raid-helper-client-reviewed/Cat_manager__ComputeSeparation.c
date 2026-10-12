/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b43b7c, Ghidra VA 02c43b7c. */

/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */

void Cat_manager__ComputeSeparation
               (undefined1 param_1 [16],undefined1 param_2 [16],ulong param_3,long param_4)

{
  int iVar1;
  float fVar2;
  float fVar3;
  undefined *puVar4;
  undefined *puVar5;
  bool bVar6;
  bool bVar7;
  bool bVar8;
  uint uVar9;
  long lVar10;
  ulong uVar11;
  long lVar12;
  long lVar13;
  int iVar14;
  int iVar15;
  float fVar16;
  float fVar17;
  undefined8 uVar18;
  undefined4 uVar19;
  float fVar20;
  float fVar21;
  float fVar22;
  
  if ((bRam000000000625c0c3 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e591c0);
    bRam000000000625c0c3 = 1;
  }
  if (*(long *)(param_4 + 0x20) == 0) {
    iVar14 = 0;
  }
  else {
    iVar14 = *(int *)(*(long *)(param_4 + 0x20) + 0x18);
  }
  uVar9 = Cat_manager__get_Helper_Active(param_4);
  puVar5 = PTR_DAT_05e591c0;
  iVar14 = iVar14 + (uVar9 & 1);
  if (1 < iVar14) {
    iVar15 = 0;
    do {
      lVar10 = Cat_manager__Cat_At(param_4,iVar15);
      if (*(int *)(*(long *)puVar5 + 0xe4) == 0) {
        func_0x029f5bd0(*(long *)puVar5);
      }
      uVar11 = Object_op_Inequality_0x6000ded(lVar10,0,0);
      if ((uVar11 & 1) != 0) {
        if (lVar10 == 0) {
LAB_02c43f08:
                    /* WARNING: Subroutine does not return */
          Throw_NullReference_Wrapper();
        }
        if (*(char *)(lVar10 + 0x1b0) != '\0') {
          if (cRam000000000625b26f == '\0') {
            func_0x029f5a50(PTR_DAT_05e58bf8);
            cRam000000000625b26f = '\x01';
          }
          uVar19 = *(undefined4 *)(*(undefined8 **)(*(long *)PTR_DAT_05e58bf8 + 0xb8) + 1);
          *(undefined8 *)(lVar10 + 0x1d0) = **(undefined8 **)(*(long *)PTR_DAT_05e58bf8 + 0xb8);
          *(undefined4 *)(lVar10 + 0x1d8) = uVar19;
        }
      }
      puVar4 = PTR_DAT_05e59000;
      fVar3 = _UNK_0116c268;
      fVar2 = _UNK_0116c240;
      iVar15 = iVar15 + 1;
    } while (iVar14 != iVar15);
    iVar15 = 0;
    do {
      lVar10 = Cat_manager__Cat_At(param_4,iVar15);
      if (*(int *)(*(long *)puVar5 + 0xe4) == 0) {
        func_0x029f5bd0(*(long *)puVar5);
      }
      uVar11 = Object_op_Equality_0x6000dec(lVar10,0,0);
      iVar15 = iVar15 + 1;
      iVar1 = iVar15;
      if ((uVar11 & 1) == 0) {
        for (; iVar1 < iVar14; iVar1 = iVar1 + 1) {
          lVar12 = Cat_manager__Cat_At(param_4,iVar1);
          if (*(int *)(*(long *)puVar5 + 0xe4) == 0) {
            func_0x029f5bd0(*(long *)puVar5);
          }
          uVar11 = Object_op_Equality_0x6000dec(lVar12,0,0);
          fVar22 = (float)param_3;
          if ((uVar11 & 1) == 0) {
            if ((((lVar10 == 0) ||
                 (lVar13 = Component_get_transform_0x6000c82(lVar10,0), lVar13 == 0)) ||
                (fVar16 = (float)Transform_get_position_0x6000f4d(lVar13,0), lVar12 == 0)) ||
               (fVar20 = fVar22, lVar13 = Component_get_transform_0x6000c82(lVar12,0), lVar13 == 0))
            goto LAB_02c43f08;
            fVar17 = (float)Transform_get_position_0x6000f4d(lVar13,0);
            if (cRam000000000625bae8 == '\0') {
              func_0x029f5a50(puVar4);
              cRam000000000625bae8 = '\x01';
            }
            if (*(int *)(*(long *)puVar4 + 0xe4) == 0) {
              func_0x029f5bd0();
            }
            fVar16 = fVar16 - fVar17;
            fVar22 = fVar22 - fVar20;
            fVar17 = *(float *)(param_4 + 0x40);
            fVar20 = SQRT(fVar16 * fVar16 + fVar22 * fVar22);
            param_3 = (ulong)(uint)fVar20;
            bVar6 = false;
            bVar7 = false;
            bVar8 = false;
            if (fVar3 <= fVar20) {
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
              fVar21 = *(float *)(param_4 + 0x44);
              if (cRam000000000625b52e == '\0') {
                func_0x029f5a50(puVar4);
                cRam000000000625b52e = '\x01';
              }
              if (*(int *)(*(long *)puVar4 + 0xe4) == 0) {
                func_0x029f5bd0();
              }
              if (fVar20 <= fVar2) {
                if (cRam000000000625b26f == '\0') {
                  func_0x029f5a50(PTR_DAT_05e58bf8);
                  cRam000000000625b26f = '\x01';
                }
                uVar18 = **(undefined8 **)(*(long *)PTR_DAT_05e58bf8 + 0xb8);
                fVar22 = *(float *)(*(undefined8 **)(*(long *)PTR_DAT_05e58bf8 + 0xb8) + 1);
              }
              else {
                uVar18 = CONCAT44(0.0 / fVar20,fVar16 / fVar20);
                fVar22 = fVar22 / fVar20;
              }
              fVar21 = (1.0 - fVar20 / fVar17) * fVar21;
              param_3 = (ulong)(uint)fVar21;
              fVar16 = (float)uVar18 * fVar21;
              fVar20 = (float)((ulong)uVar18 >> 0x20) * fVar21;
              if (*(char *)(lVar10 + 0x1b0) != '\0') {
                param_3 = CONCAT44(fVar20 + (float)((ulong)*(undefined8 *)(lVar10 + 0x1d0) >> 0x20),
                                   fVar16 + (float)*(undefined8 *)(lVar10 + 0x1d0));
                *(ulong *)(lVar10 + 0x1d0) = param_3;
                *(float *)(lVar10 + 0x1d8) = fVar21 * fVar22 + *(float *)(lVar10 + 0x1d8);
              }
              if (*(char *)(lVar12 + 0x1b0) != '\0') {
                param_3 = *(ulong *)(lVar12 + 0x1d0);
                *(ulong *)(lVar12 + 0x1d0) =
                     CONCAT44((float)(param_3 >> 0x20) - fVar20,(float)param_3 - fVar16);
                *(float *)(lVar12 + 0x1d8) = *(float *)(lVar12 + 0x1d8) - fVar21 * fVar22;
              }
            }
          }
        }
      }
    } while (iVar15 != iVar14);
  }
  return;
}

