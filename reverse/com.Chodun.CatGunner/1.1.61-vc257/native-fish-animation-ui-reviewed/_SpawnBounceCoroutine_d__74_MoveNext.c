/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b7559c, Ghidra VA 02c7559c. */

undefined8 _SpawnBounceCoroutine_d__74_MoveNext(long param_1)

{
  uint uVar1;
  int iVar2;
  undefined *puVar3;
  long lVar4;
  undefined8 uVar5;
  long lVar6;
  undefined4 *puVar7;
  long *plVar8;
  long lVar9;
  int iVar10;
  undefined4 uVar11;
  float fVar12;
  float fVar13;
  undefined4 uVar14;
  float fVar15;
  undefined4 uVar16;
  float fVar17;
  ulong uVar18;
  float fVar19;
  
  if ((bRam000000000625c2e6 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e63170);
    func_0x029f5a50(PTR_DAT_05e5d5e8);
    bRam000000000625c2e6 = 1;
  }
  puVar3 = PTR_DAT_05e63170;
  lVar9 = *(long *)(param_1 + 0x20);
  if (*(int *)(param_1 + 0x10) == 1) {
    fVar15 = *(float *)(param_1 + 0x4c);
    fVar17 = *(float *)(param_1 + 0x50);
    *(undefined4 *)(param_1 + 0x10) = 0xffffffff;
    goto LAB_02c758a0;
  }
  if (*(int *)(param_1 + 0x10) != 0) {
    return 0;
  }
  *(undefined4 *)(param_1 + 0x10) = 0xffffffff;
  lVar4 = func_0x029f5b40(*(undefined8 *)puVar3,5);
  puVar3 = PTR_DAT_05e5d5e8;
  uVar5 = func_0x029f5b40(*(undefined8 *)PTR_DAT_05e5d5e8,2);
  if (lVar4 != 0) {
    if (*(int *)(lVar4 + 0x18) == 0) {
LAB_02c75a18:
                    /* WARNING: Subroutine does not return */
      Throw_Index_Wrapper();
    }
    *(undefined8 *)(lVar4 + 0x20) = uVar5;
    Managed_WriteBarrier();
    lVar6 = func_0x029f5b40(*(undefined8 *)puVar3,2);
    if (lVar6 != 0) {
      if (((*(int *)(lVar6 + 0x18) == 0) ||
          (*(undefined4 *)(lVar6 + 0x20) = 0x3f8ccccd, *(int *)(lVar6 + 0x18) == 1)) ||
         (*(undefined4 *)(lVar6 + 0x24) = 0x3e19999a, (*(uint *)(lVar4 + 0x18) & 0xfffffffe) == 0))
      goto LAB_02c75a18;
      *(long *)(lVar4 + 0x28) = lVar6;
      Managed_WriteBarrier();
      lVar6 = func_0x029f5b40(*(undefined8 *)puVar3,2);
      if (lVar6 != 0) {
        if (((*(int *)(lVar6 + 0x18) == 0) ||
            (*(undefined4 *)(lVar6 + 0x20) = 0x3f733333, *(int *)(lVar6 + 0x18) == 1)) ||
           (uVar1 = *(uint *)(lVar4 + 0x18), *(undefined4 *)(lVar6 + 0x24) = 0x3da3d70a, uVar1 < 3))
        goto LAB_02c75a18;
        *(long *)(lVar4 + 0x30) = lVar6;
        Managed_WriteBarrier();
        lVar6 = func_0x029f5b40(*(undefined8 *)puVar3,2);
        if (lVar6 != 0) {
          if (((*(int *)(lVar6 + 0x18) == 0) ||
              (*(undefined4 *)(lVar6 + 0x20) = 0x3f828f5c, *(int *)(lVar6 + 0x18) == 1)) ||
             (*(undefined4 *)(lVar6 + 0x24) = 0x3d75c28f,
             (*(uint *)(lVar4 + 0x18) & 0xfffffffc) == 0)) goto LAB_02c75a18;
          *(long *)(lVar4 + 0x38) = lVar6;
          Managed_WriteBarrier();
          lVar6 = func_0x029f5b40(*(undefined8 *)puVar3,2);
          if (lVar6 != 0) {
            if (((*(int *)(lVar6 + 0x18) == 0) ||
                (*(undefined4 *)(lVar6 + 0x20) = 0x3f800000, *(int *)(lVar6 + 0x18) == 1)) ||
               (uVar1 = *(uint *)(lVar4 + 0x18), *(undefined4 *)(lVar6 + 0x24) = 0x3d4ccccd,
               uVar1 < 5)) goto LAB_02c75a18;
            *(long *)(lVar4 + 0x40) = lVar6;
            Managed_WriteBarrier();
            *(long *)(param_1 + 0x28) = lVar4;
            Managed_WriteBarrier((long *)(param_1 + 0x28),lVar4);
            if (lVar9 != 0) {
              lVar4 = Component_get_transform_0x6000c82(lVar9,0);
              if (cRam000000000625b26f == '\0') {
                func_0x029f5a50(PTR_DAT_05e58bf8);
                cRam000000000625b26f = '\x01';
              }
              if (lVar4 != 0) {
                puVar7 = *(undefined4 **)(*(long *)PTR_DAT_05e58bf8 + 0xb8);
                uVar14 = puVar7[1];
                uVar18 = (ulong)(uint)puVar7[2];
                Transform_set_localScale_0x6000f5e(*puVar7,lVar4,0);
                iVar10 = 1;
                while( true ) {
                  uVar16 = (undefined4)uVar18;
                  *(int *)(param_1 + 0x30) = iVar10;
                  if (*(long *)(param_1 + 0x28) == 0) break;
                  iVar2 = *(int *)(*(long *)(param_1 + 0x28) + 0x18);
                  lVar4 = Component_get_transform_0x6000c82(lVar9,0);
                  if (iVar2 <= iVar10) {
                    if (lVar4 != 0) {
                      Transform_set_localScale_0x6000f5e
                                (*(undefined4 *)(lVar9 + 0xf8),*(undefined4 *)(lVar9 + 0xfc),
                                 *(undefined4 *)(lVar9 + 0x100),lVar4,0);
                      *(undefined8 *)(lVar9 + 0x110) = 0;
                      Managed_WriteBarrier(lVar9 + 0x110,0);
                      return 0;
                    }
                    break;
                  }
                  if (lVar4 == 0) break;
                  uVar11 = Transform_get_localScale_0x6000f5d(lVar4,0);
                  lVar4 = *(long *)(param_1 + 0x28);
                  *(undefined4 *)(param_1 + 0x34) = uVar11;
                  *(undefined4 *)(param_1 + 0x38) = uVar14;
                  *(undefined4 *)(param_1 + 0x3c) = uVar16;
                  if (lVar4 == 0) break;
                  uVar1 = *(uint *)(param_1 + 0x30);
                  if (*(uint *)(lVar4 + 0x18) <= uVar1) goto LAB_02c75a18;
                  plVar8 = (long *)(lVar4 + (long)(int)uVar1 * 8 + 0x20);
                  lVar6 = *plVar8;
                  if (lVar6 == 0) break;
                  if (*(int *)(lVar6 + 0x18) == 0) goto LAB_02c75a18;
                  fVar15 = *(float *)(lVar6 + 0x20);
                  fVar17 = *(float *)(lVar9 + 0x100);
                  *(ulong *)(param_1 + 0x40) =
                       CONCAT44((float)((ulong)*(undefined8 *)(lVar9 + 0xf8) >> 0x20) * fVar15,
                                (float)*(undefined8 *)(lVar9 + 0xf8) * fVar15);
                  *(float *)(param_1 + 0x48) = fVar17 * fVar15;
                  if (*(uint *)(lVar4 + 0x18) <= uVar1) goto LAB_02c75a18;
                  lVar4 = *plVar8;
                  if (lVar4 == 0) break;
                  if ((*(uint *)(lVar4 + 0x18) & 0xfffffffe) == 0) goto LAB_02c75a18;
                  fVar15 = *(float *)(lVar4 + 0x24);
                  fVar17 = 0.0;
                  *(undefined4 *)(param_1 + 0x50) = 0;
                  *(float *)(param_1 + 0x4c) = fVar15;
LAB_02c758a0:
                  if (fVar17 < fVar15) {
                    fVar15 = (float)Time_get_deltaTime_0x6000ee5(0);
                    *(float *)(param_1 + 0x50) = fVar17 + fVar15;
                    if (lVar9 != 0) {
                      fVar19 = *(float *)(param_1 + 0x4c);
                      lVar9 = Component_get_transform_0x6000c82(lVar9,0);
                      if (lVar9 != 0) {
                        fVar19 = (fVar17 + fVar15) / fVar19;
                        fVar15 = 1.0;
                        if (fVar19 <= 1.0) {
                          fVar15 = fVar19;
                        }
                        fVar17 = 0.0;
                        if (0.0 <= fVar19) {
                          fVar17 = fVar15;
                        }
                        fVar15 = 0.0;
                        if (0.0 <= fVar17) {
                          fVar15 = fVar17;
                        }
                        fVar17 = fVar15 * fVar15 * 3.0 - fVar15 * fVar15 * (fVar15 + fVar15);
                        fVar17 = fVar17 + (1.0 - fVar17) * 0.0;
                        fVar15 = 1.0;
                        if (fVar17 <= 1.0) {
                          fVar15 = fVar17;
                        }
                        fVar12 = (float)*(undefined8 *)(param_1 + 0x34);
                        fVar13 = (float)((ulong)*(undefined8 *)(param_1 + 0x34) >> 0x20);
                        fVar19 = 0.0;
                        if (0.0 <= fVar17) {
                          fVar19 = fVar15;
                        }
                        fVar13 = fVar13 + ((float)((ulong)*(undefined8 *)(param_1 + 0x40) >> 0x20) -
                                          fVar13) * fVar19;
                        Transform_set_localScale_0x6000f5e
                                  (CONCAT44(fVar13,fVar12 + ((float)*(undefined8 *)(param_1 + 0x40)
                                                            - fVar12) * fVar19),fVar13,
                                   *(float *)(param_1 + 0x3c) +
                                   fVar19 * (*(float *)(param_1 + 0x48) - *(float *)(param_1 + 0x3c)
                                            ),lVar9,0);
                        *(undefined8 *)(param_1 + 0x18) = 0;
                        Managed_WriteBarrier((undefined8 *)(param_1 + 0x18),0);
                        *(undefined4 *)(param_1 + 0x10) = 1;
                        return 1;
                      }
                    }
                    break;
                  }
                  if ((lVar9 == 0) ||
                     (lVar4 = Component_get_transform_0x6000c82(lVar9,0), lVar4 == 0)) break;
                  uVar14 = *(undefined4 *)(param_1 + 0x44);
                  uVar18 = (ulong)*(uint *)(param_1 + 0x48);
                  Transform_set_localScale_0x6000f5e(*(undefined4 *)(param_1 + 0x40),lVar4,0);
                  *(undefined8 *)(param_1 + 0x3c) = 0;
                  *(undefined8 *)(param_1 + 0x34) = 0;
                  iVar10 = *(int *)(param_1 + 0x30) + 1;
                  *(undefined8 *)(param_1 + 0x44) = 0;
                }
              }
            }
          }
        }
      }
    }
  }
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

