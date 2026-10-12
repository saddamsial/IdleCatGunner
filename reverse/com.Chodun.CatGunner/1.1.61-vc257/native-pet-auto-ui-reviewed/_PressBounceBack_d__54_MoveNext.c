/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b814e0, Ghidra VA 02c814e0. */

undefined8
_PressBounceBack_d__54_MoveNext
          (undefined1 param_1 [16],undefined4 param_2,ulong param_3,long param_4)

{
  uint uVar1;
  undefined *puVar2;
  long lVar3;
  long lVar4;
  int iVar5;
  long *plVar6;
  long lVar7;
  undefined4 uVar8;
  float fVar9;
  float fVar10;
  float fVar11;
  undefined4 uVar12;
  float fVar13;
  float fVar14;
  
  if ((bRam000000000625c35b & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e63170);
    func_0x029f5a50(PTR_DAT_05e5d5e8);
    bRam000000000625c35b = 1;
  }
  puVar2 = PTR_DAT_05e63170;
  lVar7 = *(long *)(param_4 + 0x20);
  if (*(int *)(param_4 + 0x10) == 1) {
    fVar11 = *(float *)(param_4 + 0x4c);
    fVar13 = *(float *)(param_4 + 0x50);
    *(undefined4 *)(param_4 + 0x10) = 0xffffffff;
    goto LAB_02c81724;
  }
  if (*(int *)(param_4 + 0x10) != 0) {
    return 0;
  }
  *(undefined4 *)(param_4 + 0x10) = 0xffffffff;
  lVar3 = func_0x029f5b40(*(undefined8 *)puVar2,3);
  puVar2 = PTR_DAT_05e5d5e8;
  lVar4 = func_0x029f5b40(*(undefined8 *)PTR_DAT_05e5d5e8,2);
  if (lVar4 != 0) {
    if ((*(int *)(lVar4 + 0x18) == 0) ||
       (*(undefined4 *)(lVar4 + 0x20) = 0x3f866666, *(int *)(lVar4 + 0x18) == 1)) {
LAB_02c818a0:
                    /* WARNING: Subroutine does not return */
      Throw_Index_Wrapper();
    }
    *(undefined4 *)(lVar4 + 0x24) = 0x3da3d70a;
    if (lVar3 != 0) {
      if (*(int *)(lVar3 + 0x18) == 0) goto LAB_02c818a0;
      *(long *)(lVar3 + 0x20) = lVar4;
      Managed_WriteBarrier();
      lVar4 = func_0x029f5b40(*(undefined8 *)puVar2,2);
      if (lVar4 != 0) {
        if (((*(int *)(lVar4 + 0x18) == 0) ||
            (*(undefined4 *)(lVar4 + 0x20) = 0x3f7ae148, *(int *)(lVar4 + 0x18) == 1)) ||
           (*(undefined4 *)(lVar4 + 0x24) = 0x3d75c28f, (*(uint *)(lVar3 + 0x18) & 0xfffffffe) == 0)
           ) goto LAB_02c818a0;
        *(long *)(lVar3 + 0x28) = lVar4;
        Managed_WriteBarrier();
        lVar4 = func_0x029f5b40(*(undefined8 *)puVar2,2);
        if (lVar4 != 0) {
          if (((*(int *)(lVar4 + 0x18) == 0) ||
              (*(undefined4 *)(lVar4 + 0x20) = 0x3f800000, *(int *)(lVar4 + 0x18) == 1)) ||
             (uVar1 = *(uint *)(lVar3 + 0x18), *(undefined4 *)(lVar4 + 0x24) = 0x3d4ccccd, uVar1 < 3
             )) goto LAB_02c818a0;
          *(long *)(lVar3 + 0x30) = lVar4;
          Managed_WriteBarrier();
          *(long *)(param_4 + 0x28) = lVar3;
          Managed_WriteBarrier((long *)(param_4 + 0x28),lVar3);
          iVar5 = 0;
          *(undefined4 *)(param_4 + 0x30) = 0;
          while( true ) {
            uVar12 = (undefined4)param_3;
            if (*(long *)(param_4 + 0x28) == 0) break;
            if (*(int *)(*(long *)(param_4 + 0x28) + 0x18) <= iVar5) {
              if ((lVar7 != 0) && (lVar3 = Component_get_transform_0x6000c82(lVar7,0), lVar3 != 0))
              {
                Transform_set_localScale_0x6000f5e
                          (*(undefined4 *)(lVar7 + 0xc0),*(undefined4 *)(lVar7 + 0xc4),
                           *(undefined4 *)(lVar7 + 200),lVar3,0);
                *(undefined8 *)(lVar7 + 0xd0) = 0;
                Managed_WriteBarrier((undefined8 *)(lVar7 + 0xd0),0);
                return 0;
              }
              break;
            }
            if ((lVar7 == 0) || (lVar3 = Component_get_transform_0x6000c82(lVar7,0), lVar3 == 0))
            break;
            uVar8 = Transform_get_localScale_0x6000f5d(lVar3,0);
            lVar3 = *(long *)(param_4 + 0x28);
            *(undefined4 *)(param_4 + 0x34) = uVar8;
            *(undefined4 *)(param_4 + 0x38) = param_2;
            *(undefined4 *)(param_4 + 0x3c) = uVar12;
            if (lVar3 == 0) break;
            uVar1 = *(uint *)(param_4 + 0x30);
            if (*(uint *)(lVar3 + 0x18) <= uVar1) goto LAB_02c818a0;
            plVar6 = (long *)(lVar3 + (long)(int)uVar1 * 8 + 0x20);
            lVar4 = *plVar6;
            if (lVar4 == 0) break;
            if (*(int *)(lVar4 + 0x18) == 0) goto LAB_02c818a0;
            fVar11 = *(float *)(lVar4 + 0x20);
            fVar13 = *(float *)(lVar7 + 200);
            *(ulong *)(param_4 + 0x40) =
                 CONCAT44((float)((ulong)*(undefined8 *)(lVar7 + 0xc0) >> 0x20) * fVar11,
                          (float)*(undefined8 *)(lVar7 + 0xc0) * fVar11);
            *(float *)(param_4 + 0x48) = fVar13 * fVar11;
            if (*(uint *)(lVar3 + 0x18) <= uVar1) goto LAB_02c818a0;
            lVar3 = *plVar6;
            if (lVar3 == 0) break;
            if ((*(uint *)(lVar3 + 0x18) & 0xfffffffe) == 0) goto LAB_02c818a0;
            fVar11 = *(float *)(lVar3 + 0x24);
            fVar13 = 0.0;
            *(undefined4 *)(param_4 + 0x50) = 0;
            *(float *)(param_4 + 0x4c) = fVar11;
LAB_02c81724:
            if (fVar13 < fVar11) {
              fVar11 = (float)Time_get_unscaledDeltaTime_0x6000ee8(0);
              *(float *)(param_4 + 0x50) = fVar13 + fVar11;
              if (lVar7 != 0) {
                fVar14 = *(float *)(param_4 + 0x4c);
                lVar7 = Component_get_transform_0x6000c82(lVar7,0);
                if (lVar7 != 0) {
                  fVar14 = (fVar13 + fVar11) / fVar14;
                  fVar11 = 1.0;
                  if (fVar14 <= 1.0) {
                    fVar11 = fVar14;
                  }
                  fVar13 = 0.0;
                  if (0.0 <= fVar14) {
                    fVar13 = fVar11;
                  }
                  fVar11 = 0.0;
                  if (0.0 <= fVar13) {
                    fVar11 = fVar13;
                  }
                  fVar13 = fVar11 * fVar11 * 3.0 - fVar11 * fVar11 * (fVar11 + fVar11);
                  fVar13 = fVar13 + (1.0 - fVar13) * 0.0;
                  fVar11 = 1.0;
                  if (fVar13 <= 1.0) {
                    fVar11 = fVar13;
                  }
                  fVar9 = (float)*(undefined8 *)(param_4 + 0x34);
                  fVar10 = (float)((ulong)*(undefined8 *)(param_4 + 0x34) >> 0x20);
                  fVar14 = 0.0;
                  if (0.0 <= fVar13) {
                    fVar14 = fVar11;
                  }
                  fVar10 = fVar10 + ((float)((ulong)*(undefined8 *)(param_4 + 0x40) >> 0x20) -
                                    fVar10) * fVar14;
                  Transform_set_localScale_0x6000f5e
                            (CONCAT44(fVar10,fVar9 + ((float)*(undefined8 *)(param_4 + 0x40) - fVar9
                                                     ) * fVar14),fVar10,
                             *(float *)(param_4 + 0x3c) +
                             fVar14 * (*(float *)(param_4 + 0x48) - *(float *)(param_4 + 0x3c)),
                             lVar7,0);
                  *(undefined8 *)(param_4 + 0x18) = 0;
                  Managed_WriteBarrier((undefined8 *)(param_4 + 0x18),0);
                  *(undefined4 *)(param_4 + 0x10) = 1;
                  return 1;
                }
              }
              break;
            }
            if ((lVar7 == 0) || (lVar3 = Component_get_transform_0x6000c82(lVar7,0), lVar3 == 0))
            break;
            param_2 = *(undefined4 *)(param_4 + 0x44);
            param_3 = (ulong)*(uint *)(param_4 + 0x48);
            Transform_set_localScale_0x6000f5e(*(undefined4 *)(param_4 + 0x40),lVar3,0);
            *(undefined8 *)(param_4 + 0x3c) = 0;
            *(undefined8 *)(param_4 + 0x34) = 0;
            iVar5 = *(int *)(param_4 + 0x30) + 1;
            *(undefined8 *)(param_4 + 0x44) = 0;
            *(int *)(param_4 + 0x30) = iVar5;
          }
        }
      }
    }
  }
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

