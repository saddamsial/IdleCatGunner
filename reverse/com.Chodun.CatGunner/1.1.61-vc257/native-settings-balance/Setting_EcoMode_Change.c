/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b21548, Ghidra VA 02c21548. */

/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */

void Setting_EcoMode_Change(long param_1)

{
  undefined4 *puVar1;
  undefined4 *puVar2;
  float *pfVar3;
  float *pfVar4;
  undefined *puVar5;
  undefined *puVar6;
  bool bVar7;
  byte bVar8;
  long *plVar9;
  ulong uVar10;
  undefined8 uVar11;
  long lVar12;
  long lVar13;
  long *plVar14;
  undefined8 uVar15;
  float fVar16;
  float fVar17;
  float fVar18;
  float fVar19;
  
  puVar5 = PTR_DAT_05e62670;
  if ((bRam000000000625bf62 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e62670);
    func_0x029f5a50(PTR_DAT_05e5d4e0);
    bRam000000000625bf62 = 1;
  }
  plVar9 = *(long **)(param_1 + 0xa8);
  bVar8 = *(byte *)(*(long *)(*(long *)puVar5 + 0xb8) + 0x10);
  *(byte *)(*(long *)(*(long *)puVar5 + 0xb8) + 0x10) = bVar8 ^ 1;
  if (bVar8 == 0) {
    puVar1 = (undefined4 *)(param_1 + 200);
    puVar2 = (undefined4 *)(param_1 + 0xcc);
    pfVar3 = (float *)(param_1 + 0xd0);
    pfVar4 = (float *)(param_1 + 0xd4);
  }
  else {
    puVar1 = (undefined4 *)(param_1 + 0xb8);
    puVar2 = (undefined4 *)(param_1 + 0xbc);
    pfVar3 = (float *)(param_1 + 0xc0);
    pfVar4 = (float *)(param_1 + 0xc4);
  }
  if (plVar9 != (long *)0x0) {
    fVar18 = *pfVar4;
    fVar16 = *pfVar3;
    (**(code **)(*plVar9 + 0x2a8))(*puVar1,*puVar2,plVar9,*(undefined8 *)(*plVar9 + 0x2b0));
    if (*(long *)(param_1 + 0xd8) != 0) {
      GameObject_SetActive_0x6000cfe
                (*(long *)(param_1 + 0xd8),
                 *(char *)(*(long *)(*(long *)puVar5 + 0xb8) + 0x10) == '\0',0);
      puVar6 = PTR_DAT_05e5d4e0;
      if (*(long *)(param_1 + 0xe0) != 0) {
        GameObject_SetActive_0x6000cfe
                  (*(long *)(param_1 + 0xe0),
                   *(undefined1 *)(*(long *)(*(long *)puVar5 + 0xb8) + 0x10),0);
        puVar5 = PTR_DAT_05e591c0;
        lVar13 = *(long *)(*(long *)(*(long *)puVar6 + 0xb8) + 0x10);
        if ((lVar13 != 0) && (lVar12 = *(long *)(lVar13 + 0x50), lVar12 != 0)) {
          if (*(uint *)(lVar12 + 0x18) <= *(uint *)(lVar13 + 0x30)) {
                    /* WARNING: Subroutine does not return */
            Throw_Index_Wrapper();
          }
          plVar9 = *(long **)(param_1 + 0xb0);
          if (plVar9 != (long *)0x0) {
            lVar13 = *(long *)(lVar12 + (long)(int)*(uint *)(lVar13 + 0x30) * 8 + 0x20);
            if ((bRam000000000626f1b9 & 1) == 0) {
              func_0x029f5a50(PTR_DAT_05e591c0,lVar13,0);
              bRam000000000626f1b9 = 1;
            }
            plVar14 = plVar9 + 0x1b;
            lVar12 = *plVar14;
            if (*(int *)(*(long *)puVar5 + 0xe4) == 0) {
              func_0x029f5bd0();
            }
            uVar10 = Object_op_Inequality_0x6000ded(lVar12,0,0);
            if ((uVar10 & 1) == 0) {
              if (*(int *)(*(long *)puVar5 + 0xe4) == 0) {
                func_0x029f5bd0();
              }
              uVar10 = Object_op_Inequality_0x6000ded(lVar13,0,0);
              if ((uVar10 & 1) != 0) {
                if (lVar13 == 0) goto code_r0x058d3794;
                func_0x0578f9d4(lVar13,0);
                if (cRam000000000625b271 == '\0') {
                  func_0x029f5a50(PTR_DAT_05e59608);
                  cRam000000000625b271 = '\x01';
                }
                fVar16 = fVar16 - **(float **)(*(long *)PTR_DAT_05e59608 + 0xb8);
                fVar18 = fVar18 - (*(float **)(*(long *)PTR_DAT_05e59608 + 0xb8))[1];
                *(bool *)(plVar9 + 7) = fVar16 * fVar16 + fVar18 * fVar18 < _UNK_0116be94;
                uVar11 = func_0x0578fb84(lVar13,0);
                if (*(int *)(*(long *)puVar5 + 0xe4) == 0) {
                  func_0x029f5bd0(*(long *)puVar5);
                }
                uVar15 = 0;
code_r0x058d373c:
                bVar8 = Object_op_Equality_0x6000dec(uVar11,uVar15,0);
                plVar9[0x1b] = lVar13;
                *(byte *)((long)plVar9 + 0x39) = bVar8 & 1;
                func_0x029f59f4(plVar14,lVar13);
                func_0x058e03c0(plVar9);
                (**(code **)(*plVar9 + 0x2d8))(plVar9,*(undefined8 *)(*plVar9 + 0x2e0));
                puVar5 = PTR_DAT_05e591c0;
                if ((bRam000000000626f1cd & 1) == 0) {
                  func_0x029f5a50(PTR_DAT_05e5d050);
                  func_0x029f5a50(PTR_DAT_05e591c0);
                  bRam000000000626f1cd = 1;
                }
                uVar11 = func_0x058e0548(plVar9);
                lVar13 = *(long *)puVar5;
                if (*(int *)(lVar13 + 0xe4) == 0) {
                  func_0x029f5bd0(lVar13);
                }
                uVar10 = Object_op_Inequality_0x6000ded(uVar11,0,0);
                if ((uVar10 & 1) != 0) {
                  lVar13 = func_0x058e0548(plVar9);
                  if (lVar13 == 0) {
                    /* WARNING: Subroutine does not return */
                    Throw_NullReference_Wrapper();
                  }
                  uVar11 = func_0x0578fb84(lVar13,0);
                  lVar13 = *(long *)puVar5;
                  if (*(int *)(lVar13 + 0xe4) == 0) {
                    func_0x029f5bd0(lVar13);
                  }
                  uVar10 = Object_op_Equality_0x6000dec(uVar11,0,0);
                  if ((uVar10 & 1) != 0) {
                    if (*(int *)(*(long *)PTR_DAT_05e5d050 + 0xe4) == 0) {
                      func_0x029f5bd0();
                    }
                    func_0x058e39f8(plVar9);
                    *(undefined1 *)((long)plVar9 + 0x104) = 1;
                  }
                }
                return;
              }
            }
            else {
              lVar12 = *plVar14;
              if (*(int *)(*(long *)puVar5 + 0xe4) == 0) {
                func_0x029f5bd0();
              }
              uVar10 = Object_op_Inequality_0x6000ded(lVar12,lVar13,0);
              if ((uVar10 & 1) != 0) {
                if (*plVar14 != 0) {
                  func_0x0578f9d4(*plVar14,0);
                  fVar17 = fVar16;
                  fVar19 = fVar18;
                  if (*(int *)(*(long *)puVar5 + 0xe4) == 0) {
                    func_0x029f5bd0();
                  }
                  uVar10 = func_0x057e50f4(lVar13,0);
                  if ((uVar10 & 1) == 0) {
                    if (cRam000000000625b271 == '\0') {
                      func_0x029f5a50(PTR_DAT_05e59608);
                      cRam000000000625b271 = '\x01';
                    }
                    fVar17 = **(float **)(*(long *)PTR_DAT_05e59608 + 0xb8);
                    fVar19 = (*(float **)(*(long *)PTR_DAT_05e59608 + 0xb8))[1];
                  }
                  else {
                    if (lVar13 == 0) goto code_r0x058d3794;
                    func_0x0578f9d4(lVar13,0);
                  }
                  bVar7 = false;
                  if ((fVar18 == fVar19) && (bVar7 = false, !NAN(fVar16) && !NAN(fVar17))) {
                    bVar7 = fVar16 == fVar17;
                  }
                  *(bool *)(plVar9 + 7) = bVar7;
                  if (plVar9[0x1b] != 0) {
                    uVar11 = func_0x0578fb84(plVar9[0x1b],0);
                    if (*(int *)(*(long *)puVar5 + 0xe4) == 0) {
                      func_0x029f5bd0(*(long *)puVar5);
                    }
                    uVar10 = func_0x057e50f4(lVar13,0);
                    uVar15 = 0;
                    if ((uVar10 & 1) != 0) {
                      if (lVar13 == 0) goto code_r0x058d3794;
                      uVar15 = func_0x0578fb84(lVar13,0);
                    }
                    if (*(int *)(*(long *)puVar5 + 0xe4) == 0) {
                      func_0x029f5bd0();
                    }
                    goto code_r0x058d373c;
                  }
                }
code_r0x058d3794:
                    /* WARNING: Subroutine does not return */
                Throw_NullReference_Wrapper();
              }
            }
            return;
          }
        }
      }
    }
  }
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

