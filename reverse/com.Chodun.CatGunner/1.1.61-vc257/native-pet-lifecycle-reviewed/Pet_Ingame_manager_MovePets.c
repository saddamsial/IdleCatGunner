/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b7b5d4, Ghidra VA 02c7b5d4. */

/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */

void Pet_Ingame_manager_MovePets
               (undefined1 param_1 [16],undefined1 param_2 [16],float param_3,long param_4,
               long param_5)

{
  undefined8 *puVar1;
  float fVar2;
  float fVar3;
  float fVar4;
  undefined *puVar5;
  undefined *puVar6;
  undefined *puVar7;
  ulong uVar8;
  long lVar9;
  char cVar10;
  long lVar11;
  ulong uVar12;
  float fVar13;
  float fVar14;
  float fVar15;
  float fVar16;
  float fVar17;
  float fVar18;
  float fVar19;
  float fVar20;
  
  if ((bRam000000000625c319 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e591c0);
    func_0x029f5a50(PTR_DAT_05e61878);
    func_0x029f5a50(PTR_DAT_05e61890);
    bRam000000000625c319 = 1;
  }
  puVar7 = PTR_DAT_05e591c0;
  puVar6 = PTR_DAT_05e59000;
  puVar5 = PTR_DAT_05e58bf8;
  fVar4 = _UNK_0116c240;
  fVar3 = _UNK_0116c21c;
  fVar2 = _UNK_0116c088;
  lVar11 = *(long *)(param_4 + 0x20);
  if (lVar11 != 0) {
    uVar12 = 0;
    do {
      if ((long)(int)*(uint *)(lVar11 + 0x18) <= (long)uVar12) {
        return;
      }
      if (*(uint *)(lVar11 + 0x18) <= uVar12) {
                    /* WARNING: Subroutine does not return */
        Throw_Index_Wrapper();
      }
      lVar11 = *(long *)(lVar11 + uVar12 * 8 + 0x20);
      if (*(int *)(*(long *)puVar7 + 0xe4) == 0) {
        func_0x029f5bd0();
      }
      uVar8 = Object_op_Equality_0x6000dec(lVar11,0,0);
      if ((uVar8 & 1) == 0) {
        if ((lVar11 == 0) || (lVar9 = Component_get_gameObject_0x6000c83(lVar11,0), lVar9 == 0))
        break;
        uVar8 = GameObject_get_activeSelf_0x6000cff(lVar9,0);
        if ((uVar8 & 1) != 0) {
          if ((param_5 == 0) || (lVar9 = Component_get_transform_0x6000c82(param_5,0), lVar9 == 0))
          break;
          fVar13 = (float)Transform_get_position_0x6000f4d(lVar9,0);
          fVar19 = *(float *)(lVar11 + 0x58);
          fVar20 = *(float *)(lVar11 + 0x60);
          fVar18 = param_3;
          lVar9 = Component_get_transform_0x6000c82(lVar11,0);
          if (lVar9 == 0) break;
          fVar14 = (float)Transform_get_position_0x6000f4d(lVar9,0);
          if (cRam000000000625bae8 == '\0') {
            func_0x029f5a50(puVar6);
            cRam000000000625bae8 = '\x01';
          }
          if (*(int *)(*(long *)puVar6 + 0xe4) == 0) {
            func_0x029f5bd0();
          }
          fVar14 = (fVar13 + fVar19) - fVar14;
          fVar18 = (param_3 + fVar20) - fVar18;
          fVar13 = SQRT(fVar14 * fVar14 + fVar18 * fVar18);
          if (*(char *)(lVar11 + 100) == '\0') {
            if (*(float *)(param_4 + 0x30) < fVar13) {
              cVar10 = '\x01';
              goto LAB_02c7b7b0;
            }
            cVar10 = '\0';
          }
          else if (*(float *)(param_4 + 0x34) <= fVar13) {
            cVar10 = '\x01';
          }
          else {
            cVar10 = '\0';
LAB_02c7b7b0:
            *(char *)(lVar11 + 100) = cVar10;
          }
          if (cRam000000000625b26f == '\0') {
            func_0x029f5a50(puVar5);
            cRam000000000625b26f = '\x01';
            if (*(char *)(lVar11 + 100) == '\0') goto LAB_02c7b890;
LAB_02c7b7d0:
            fVar19 = *(float *)(param_4 + 0x38);
            fVar20 = *(float *)(param_4 + 0x40) - *(float *)(param_4 + 0x34);
            if (fVar20 <= fVar2) {
              fVar20 = fVar2;
            }
            fVar17 = *(float *)(param_4 + 100) * *(float *)(param_4 + 0x44);
            fVar20 = (fVar13 - *(float *)(param_4 + 0x34)) / fVar20;
            fVar16 = 1.0;
            if (fVar20 <= 1.0) {
              fVar16 = fVar20;
            }
            fVar15 = 0.0;
            if (0.0 <= fVar20) {
              fVar15 = fVar16;
            }
            fVar20 = *(float *)(param_4 + 0x3c);
            if (*(float *)(param_4 + 0x3c) <= fVar17) {
              fVar20 = fVar17;
            }
            fVar17 = fVar15 * fVar15 * (3.0 - (fVar15 + fVar15));
            fVar16 = 1.0;
            if (fVar17 <= 1.0) {
              fVar16 = fVar17;
            }
            fVar15 = 0.0;
            if (0.0 <= fVar17) {
              fVar15 = fVar16;
            }
            if (cRam000000000625b52e == '\0') {
              func_0x029f5a50(puVar6);
              cRam000000000625b52e = '\x01';
            }
            if (*(int *)(*(long *)puVar6 + 0xe4) == 0) {
              func_0x029f5bd0();
            }
            if (fVar13 <= fVar4) {
              if (cRam000000000625b26f == '\0') {
                func_0x029f5a50(puVar5);
                cRam000000000625b26f = '\x01';
              }
              fVar14 = **(float **)(*(long *)puVar5 + 0xb8);
              fVar18 = (*(float **)(*(long *)puVar5 + 0xb8))[2];
            }
            else {
              fVar14 = fVar14 / fVar13;
              fVar18 = fVar18 / fVar13;
            }
            fVar19 = fVar19 + (fVar20 - fVar19) * fVar15;
            fVar14 = fVar19 * fVar14;
            fVar19 = fVar19 * fVar18;
          }
          else {
            if (cVar10 != '\0') goto LAB_02c7b7d0;
LAB_02c7b890:
            fVar14 = **(float **)(*(long *)puVar5 + 0xb8);
            fVar19 = (*(float **)(*(long *)puVar5 + 0xb8))[2];
          }
          lVar9 = *(long *)(lVar11 + 0x28);
          if (lVar9 == 0) break;
          fVar13 = fVar14 + *(float *)(lVar11 + 0x40) + *(float *)(lVar11 + 0x4c);
          fVar18 = fVar19 + *(float *)(lVar11 + 0x48) + *(float *)(lVar11 + 0x54);
          Rigidbody_get_linearVelocity_0x6000095(lVar9,0);
          param_3 = fVar18;
          Rigidbody_set_linearVelocity_0x6000096(fVar13,lVar9,0);
          if (cRam000000000625bae8 == '\0') {
            func_0x029f5a50(puVar6);
            cRam000000000625bae8 = '\x01';
          }
          if (*(int *)(*(long *)puVar6 + 0xe4) == 0) {
            func_0x029f5bd0();
          }
          fVar19 = SQRT(fVar13 * fVar13 + fVar18 * fVar18);
          puVar1 = (undefined8 *)PTR_DAT_05e61878;
          if (fVar19 <= fVar3) {
            puVar1 = (undefined8 *)PTR_DAT_05e61890;
          }
          Pet_SetAnimation(lVar11,*puVar1);
          if (fVar3 < fVar19) {
            Pet_SetFacing(fVar13,0,lVar11);
            param_3 = fVar18;
          }
        }
      }
      lVar11 = *(long *)(param_4 + 0x20);
      uVar12 = uVar12 + 1;
    } while (lVar11 != 0);
  }
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

