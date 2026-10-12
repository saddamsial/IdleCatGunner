/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b3ecd8, Ghidra VA 02c3ecd8. */

undefined8
Cat_FindNearestTreeByGrid
          (undefined1 param_1 [16],undefined1 param_2 [16],float param_3,long param_4)

{
  uint uVar1;
  undefined4 uVar2;
  undefined4 uVar3;
  undefined *puVar4;
  undefined *puVar5;
  uint uVar6;
  long lVar7;
  ulong uVar8;
  long lVar9;
  long lVar10;
  long lVar11;
  long lVar12;
  undefined4 *puVar13;
  float *pfVar14;
  float fVar15;
  ulong uVar16;
  long lVar17;
  float *pfVar18;
  undefined4 *puVar19;
  ulong uVar20;
  uint uVar21;
  ulong uVar22;
  uint uVar23;
  undefined8 uVar24;
  float fVar25;
  float fVar26;
  float fVar27;
  float fVar28;
  float fVar29;
  undefined8 uStack_a0;
  
  puVar5 = PTR_DAT_05e5dc20;
  if ((bRam000000000625c093 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e5d790);
    func_0x029f5a50(PTR_DAT_05e591c0);
    func_0x029f5a50(PTR_DAT_05e5d5e8);
    func_0x029f5a50(PTR_DAT_05e5dc20);
    bRam000000000625c093 = 1;
  }
  puVar4 = PTR_DAT_05e591c0;
  lVar7 = *(long *)puVar5;
  if (*(int *)(lVar7 + 0xe4) == 0) {
    func_0x029f5bd0();
    lVar7 = *(long *)puVar5;
  }
  uVar24 = *(undefined8 *)(*(long *)(lVar7 + 0xb8) + 0x10);
  if (*(int *)(*(long *)puVar4 + 0xe4) == 0) {
    func_0x029f5bd0(*(long *)puVar4);
  }
  uVar8 = Object_op_Equality_0x6000dec(uVar24,0,0);
  if ((uVar8 & 1) != 0) {
    return 0;
  }
  lVar7 = *(long *)puVar5;
  if (*(int *)(lVar7 + 0xe4) == 0) {
    func_0x029f5bd0();
    lVar7 = *(long *)puVar5;
  }
  lVar7 = *(long *)(*(long *)(lVar7 + 0xb8) + 0x10);
  if (lVar7 != 0) {
    lVar7 = *(long *)(lVar7 + 0xf8);
    if (lVar7 != 0) {
      if (*(long *)(lVar7 + 0x18) == 0) {
        return 0;
      }
      lVar9 = Component_get_transform_0x6000c82(param_4,0);
      if (lVar9 == 0) goto LAB_02c3f3d0;
      fVar25 = (float)Transform_get_position_0x6000f4d(lVar9,0);
      if (0 < (int)*(ulong *)(lVar7 + 0x18)) {
        uVar8 = 0;
        uVar23 = 0;
        uVar16 = *(ulong *)(lVar7 + 0x18) & 0xffffffff;
        fVar28 = param_3;
        do {
          if (uVar16 <= uVar8) goto LAB_02c3f3cc;
          uVar24 = *(undefined8 *)(lVar7 + 0x20 + uVar8 * 8);
          if (*(int *)(*(long *)puVar4 + 0xe4) == 0) {
            func_0x029f5bd0();
          }
          uVar16 = Object_op_Inequality_0x6000ded(uVar24,0,0);
          if ((uVar16 & 1) != 0) {
            if (*(uint *)(lVar7 + 0x18) <= uVar8) goto LAB_02c3f3cc;
            lVar9 = *(long *)(lVar7 + 0x20 + uVar8 * 8);
            if ((lVar9 == 0) || (lVar9 = Component_get_gameObject_0x6000c83(lVar9,0), lVar9 == 0))
            goto LAB_02c3f3d0;
            uVar6 = GameObject_get_activeInHierarchy_0x6000d00(lVar9,0);
            uVar23 = uVar23 + (uVar6 & 1);
          }
          uVar16 = (ulong)*(uint *)(lVar7 + 0x18);
          uVar8 = uVar8 + 1;
        } while ((long)uVar8 < (long)(int)*(uint *)(lVar7 + 0x18));
        if (uVar23 != 0) {
          lVar9 = func_0x029f5b40(*(undefined8 *)PTR_DAT_05e5d790,uVar23);
          lVar10 = func_0x029f5b40(*(undefined8 *)PTR_DAT_05e5d5e8,uVar23);
          if (0 < (int)*(ulong *)(lVar7 + 0x18)) {
            uVar8 = 0;
            uVar6 = 0;
            uVar16 = *(ulong *)(lVar7 + 0x18) & 0xffffffff;
            lVar17 = lVar7 + 0x20;
            do {
              if (uVar16 <= uVar8) goto LAB_02c3f3cc;
              uVar24 = *(undefined8 *)(lVar17 + uVar8 * 8);
              if (*(int *)(*(long *)puVar4 + 0xe4) == 0) {
                func_0x029f5bd0();
              }
              uVar16 = Object_op_Equality_0x6000dec(uVar24,0,0);
              if ((uVar16 & 1) == 0) {
                if (*(uint *)(lVar7 + 0x18) <= uVar8) goto LAB_02c3f3cc;
                lVar11 = *(long *)(lVar17 + uVar8 * 8);
                if ((lVar11 == 0) ||
                   (lVar11 = Component_get_gameObject_0x6000c83(lVar11,0), lVar11 == 0))
                goto LAB_02c3f3d0;
                uVar16 = GameObject_get_activeInHierarchy_0x6000d00(lVar11,0);
                if ((uVar16 & 1) != 0) {
                  if (lVar9 == 0) goto LAB_02c3f3d0;
                  if (*(uint *)(lVar9 + 0x18) <= uVar6) goto LAB_02c3f3cc;
                  lVar11 = (long)(int)uVar6;
                  uVar1 = *(uint *)(lVar7 + 0x18);
                  *(int *)(lVar9 + lVar11 * 4 + 0x20) = (int)uVar8;
                  if (uVar1 <= uVar8) goto LAB_02c3f3cc;
                  lVar12 = *(long *)(lVar17 + uVar8 * 8);
                  if ((lVar12 == 0) ||
                     (lVar12 = Component_get_transform_0x6000c82(lVar12,0), lVar12 == 0))
                  goto LAB_02c3f3d0;
                  Transform_get_position_0x6000f4d(lVar12,0);
                  if (fVar28 <= param_3) {
                    fVar26 = 0.0;
                    if (fVar28 + 45.0 < param_3) {
                      fVar26 = param_3 - (fVar28 + 45.0);
                    }
                  }
                  else {
                    fVar26 = fVar28 - param_3;
                  }
                  if (lVar10 == 0) goto LAB_02c3f3d0;
                  if (*(uint *)(lVar10 + 0x18) <= uVar6) goto LAB_02c3f3cc;
                  uVar6 = uVar6 + 1;
                  *(float *)(lVar10 + lVar11 * 4 + 0x20) = fVar26;
                }
              }
              uVar16 = (ulong)*(uint *)(lVar7 + 0x18);
              uVar8 = uVar8 + 1;
            } while ((long)uVar8 < (long)(int)*(uint *)(lVar7 + 0x18));
          }
          if (uVar23 - 1 != 0 && 0 < (int)uVar23) {
            if (lVar10 == 0) goto LAB_02c3f3d0;
            uVar1 = *(uint *)(lVar10 + 0x18);
            uVar8 = 0;
            pfVar18 = (float *)(lVar10 + 0x24);
            puVar19 = (undefined4 *)(lVar9 + 0x24);
            uVar16 = 1;
            uVar6 = uVar1;
            if (uVar1 < 2) {
              uVar6 = 1;
            }
            do {
              if (uVar8 == uVar6 - 1) goto LAB_02c3f3cc;
              if (lVar9 == 0) goto LAB_02c3f3d0;
              uVar20 = *(ulong *)(lVar9 + 0x18);
              if ((uVar20 & 0xffffffff) <= uVar16) goto LAB_02c3f3cc;
              fVar26 = *(float *)(lVar10 + uVar16 * 4 + 0x20);
              uVar2 = *(undefined4 *)(lVar9 + uVar16 * 4 + 0x20);
              puVar13 = puVar19;
              pfVar14 = pfVar18;
              uVar22 = uVar16;
              do {
                if (pfVar14[-1] <= fVar26) goto LAB_02c3f05c;
                uVar22 = uVar22 - 1;
                uVar3 = puVar13[-1];
                *pfVar14 = pfVar14[-1];
                *puVar13 = uVar3;
                puVar13 = puVar13 + -1;
                pfVar14 = pfVar14 + -1;
              } while (0 < (long)uVar22);
              uVar22 = 0;
LAB_02c3f05c:
              uVar21 = (uint)uVar22;
              if (uVar1 <= uVar21) goto LAB_02c3f3cc;
              *(float *)(lVar10 + (long)(int)uVar21 * 4 + 0x20) = fVar26;
              if ((uint)uVar20 <= uVar21) goto LAB_02c3f3cc;
              uVar8 = uVar8 + 1;
              uVar16 = uVar16 + 1;
              pfVar18 = pfVar18 + 1;
              puVar19 = puVar19 + 1;
              *(undefined4 *)(lVar9 + (long)(int)uVar21 * 4 + 0x20) = uVar2;
            } while (uVar8 != uVar23 - 1);
          }
          fVar26 = *(float *)(param_4 + 0x170) * *(float *)(param_4 + 0x170);
          if ((int)uVar23 < 1) {
            uStack_a0 = 0;
            fVar15 = 3.4028235e+38;
          }
          else {
            if (lVar10 == 0) goto LAB_02c3f3d0;
            uVar8 = 0;
            fVar15 = 3.4028235e+38;
            uStack_a0 = 0;
LAB_02c3f0c4:
            uVar6 = (uint)uVar8;
            if (*(uint *)(lVar10 + 0x18) <= uVar6) {
LAB_02c3f3cc:
                    /* WARNING: Subroutine does not return */
              Throw_Index_Wrapper();
            }
            if (*(float *)(lVar10 + uVar8 * 4 + 0x20) <= fVar15) {
              if (lVar9 == 0) goto LAB_02c3f3d0;
              if ((*(uint *)(lVar9 + 0x18) <= uVar6) ||
                 (uVar1 = *(uint *)(lVar9 + uVar8 * 4 + 0x20), *(uint *)(lVar7 + 0x18) <= uVar1))
              goto LAB_02c3f3cc;
              lVar17 = *(long *)(lVar7 + (long)(int)uVar1 * 8 + 0x20);
              if (lVar17 == 0) goto LAB_02c3f3d0;
              lVar17 = *(long *)(lVar17 + 0x20);
              if ((lVar17 != 0) && (0 < (int)*(ulong *)(lVar17 + 0x18))) {
                uVar8 = 0;
                uVar16 = *(ulong *)(lVar17 + 0x18) & 0xffffffff;
                do {
                  if (uVar16 <= uVar8) goto LAB_02c3f3cc;
                  lVar11 = *(long *)(lVar17 + 0x20 + uVar8 * 8);
                  if (*(int *)(*(long *)puVar4 + 0xe4) == 0) {
                    func_0x029f5bd0();
                  }
                  uVar16 = Object_op_Equality_0x6000dec(lVar11,0,0);
                  if ((uVar16 & 1) == 0) {
                    if ((lVar11 == 0) ||
                       (lVar12 = Component_get_gameObject_0x6000c83(lVar11,0), lVar12 == 0))
                    goto LAB_02c3f3d0;
                    uVar16 = GameObject_get_activeInHierarchy_0x6000d00(lVar12,0);
                    if ((uVar16 & 1) != 0) {
                      uVar24 = *(undefined8 *)(lVar11 + 0x20);
                      if (*(int *)(*(long *)puVar4 + 0xe4) == 0) {
                        func_0x029f5bd0();
                      }
                      uVar16 = Object_op_Equality_0x6000dec(uVar24,0,0);
                      if ((uVar16 & 1) == 0) {
                        if ((*(long *)(lVar11 + 0x20) == 0) ||
                           (lVar12 = Component_get_gameObject_0x6000c83(*(long *)(lVar11 + 0x20),0),
                           lVar12 == 0)) goto LAB_02c3f3d0;
                        uVar16 = GameObject_get_activeInHierarchy_0x6000d00(lVar12,0);
                        if ((uVar16 & 1) != 0) {
                          lVar12 = Component_get_transform_0x6000c82(lVar11,0);
                          if (lVar12 == 0) goto LAB_02c3f3d0;
                          fVar27 = (float)Transform_get_position_0x6000f4d(lVar12,0);
                          fVar27 = (fVar27 - fVar25) * (fVar27 - fVar25) +
                                   (fVar28 - param_3) * (fVar28 - param_3);
                          fVar29 = SQRT(fVar27);
                          if (fVar26 < fVar27) {
                            lVar12 = Component_get_transform_0x6000c82(lVar11,0);
                            if (lVar12 == 0) goto LAB_02c3f3d0;
                            Transform_get_position_0x6000f4d(lVar12,0);
                            fVar27 = 0.0;
                            if (0.0 <= fVar28 - param_3) {
                              fVar27 = fVar28 - param_3;
                            }
                            fVar29 = fVar29 + *(float *)(param_4 + 0x16c) * fVar27;
                          }
                          if (fVar29 < fVar15) {
                            uStack_a0 = Component_get_transform_0x6000c82(lVar11,0);
                            fVar15 = fVar29;
                          }
                        }
                      }
                    }
                  }
                  uVar16 = (ulong)*(uint *)(lVar17 + 0x18);
                  uVar8 = uVar8 + 1;
                } while ((long)uVar8 < (long)(int)*(uint *)(lVar17 + 0x18));
              }
              uVar8 = (ulong)(uVar6 + 1);
              if (uVar6 + 1 != uVar23) goto LAB_02c3f0c4;
            }
          }
          puVar5 = PTR_DAT_05e5dc20;
          lVar7 = *(long *)PTR_DAT_05e5dc20;
          if (*(int *)(lVar7 + 0xe4) == 0) {
            func_0x029f5bd0();
            lVar7 = *(long *)puVar5;
          }
          lVar7 = *(long *)(*(long *)(lVar7 + 0xb8) + 0x10);
          if (lVar7 != 0) {
            if (*(int *)(lVar7 + 0x2c) != 4) {
              return uStack_a0;
            }
            if ((*(long *)(lVar7 + 0x100) != 0) &&
               (lVar9 = Component_get_gameObject_0x6000c83(*(long *)(lVar7 + 0x100),0), lVar9 != 0))
            {
              uVar8 = GameObject_get_activeInHierarchy_0x6000d00(lVar9,0);
              if ((uVar8 & 1) == 0) {
                return uStack_a0;
              }
              if ((*(long *)(lVar7 + 0x100) != 0) &&
                 (lVar9 = Component_get_transform_0x6000c82(*(long *)(lVar7 + 0x100),0), lVar9 != 0)
                 ) {
                fVar27 = (float)Transform_get_position_0x6000f4d(lVar9,0);
                fVar25 = (fVar27 - fVar25) * (fVar27 - fVar25) +
                         (fVar28 - param_3) * (fVar28 - param_3);
                fVar27 = SQRT(fVar25);
                if (fVar26 < fVar25) {
                  if ((*(long *)(lVar7 + 0x100) == 0) ||
                     (lVar9 = Component_get_transform_0x6000c82(*(long *)(lVar7 + 0x100),0),
                     lVar9 == 0)) goto LAB_02c3f3d0;
                  Transform_get_position_0x6000f4d(lVar9,0);
                  fVar25 = 0.0;
                  if (0.0 <= fVar28 - param_3) {
                    fVar25 = fVar28 - param_3;
                  }
                  fVar27 = fVar27 + *(float *)(param_4 + 0x16c) * fVar25;
                }
                if (fVar15 <= fVar27) {
                  return uStack_a0;
                }
                if (*(long *)(lVar7 + 0x100) != 0) {
                  uVar24 = Component_get_transform_0x6000c82(*(long *)(lVar7 + 0x100),0);
                  return uVar24;
                }
              }
            }
          }
          goto LAB_02c3f3d0;
        }
      }
    }
    return 0;
  }
LAB_02c3f3d0:
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

