/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b367f4, Ghidra VA 02c367f4. */

undefined8 _BounceIn_d__19_MoveNext(long param_1)

{
  int iVar1;
  undefined *puVar2;
  long lVar3;
  long lVar4;
  long lVar5;
  int iVar6;
  float fVar7;
  float fVar8;
  undefined4 uVar9;
  ulong uVar10;
  float fVar11;
  
  if ((bRam000000000625c071 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e63170);
    func_0x029f5a50(PTR_DAT_05e5d5e8);
    bRam000000000625c071 = 1;
  }
  puVar2 = PTR_DAT_05e63170;
  lVar5 = *(long *)(param_1 + 0x20);
  if (*(int *)(param_1 + 0x10) == 1) {
    fVar7 = *(float *)(param_1 + 0x3c);
    fVar8 = *(float *)(param_1 + 0x40);
    *(undefined4 *)(param_1 + 0x10) = 0xffffffff;
    goto LAB_02c369cc;
  }
  if (*(int *)(param_1 + 0x10) != 0) {
    return 0;
  }
  *(undefined4 *)(param_1 + 0x10) = 0xffffffff;
  lVar3 = func_0x029f5b40(*(undefined8 *)puVar2,2);
  puVar2 = PTR_DAT_05e5d5e8;
  lVar4 = func_0x029f5b40(*(undefined8 *)PTR_DAT_05e5d5e8,2);
  if (lVar4 != 0) {
    if ((*(int *)(lVar4 + 0x18) == 0) ||
       (*(undefined4 *)(lVar4 + 0x20) = 0x3f8ccccd, *(int *)(lVar4 + 0x18) == 1)) {
LAB_02c36b50:
                    /* WARNING: Subroutine does not return */
      Throw_Index_Wrapper();
    }
    *(undefined4 *)(lVar4 + 0x24) = 0x3e19999a;
    if (lVar3 != 0) {
      if (*(int *)(lVar3 + 0x18) == 0) goto LAB_02c36b50;
      *(long *)(lVar3 + 0x20) = lVar4;
      Managed_WriteBarrier();
      lVar4 = func_0x029f5b40(*(undefined8 *)puVar2,2);
      if (lVar4 != 0) {
        if (((*(int *)(lVar4 + 0x18) == 0) ||
            (*(undefined4 *)(lVar4 + 0x20) = 0x3f800000, *(int *)(lVar4 + 0x18) == 1)) ||
           (*(undefined4 *)(lVar4 + 0x24) = 0x3dcccccd, (*(uint *)(lVar3 + 0x18) & 0xfffffffe) == 0)
           ) goto LAB_02c36b50;
        *(long *)(lVar3 + 0x28) = lVar4;
        Managed_WriteBarrier();
        *(long *)(param_1 + 0x28) = lVar3;
        Managed_WriteBarrier((long *)(param_1 + 0x28),lVar3);
        if ((lVar5 != 0) && (lVar3 = Component_get_transform_0x6000c82(lVar5,0), lVar3 != 0)) {
          uVar10 = 0;
          Transform_set_localScale_0x6000f5e(0x3f800000,0,0x3f800000,lVar3,0);
          iVar6 = 0;
          *(undefined4 *)(param_1 + 0x30) = 0;
          while( true ) {
            uVar9 = (undefined4)uVar10;
            if (*(long *)(param_1 + 0x28) == 0) break;
            iVar1 = *(int *)(*(long *)(param_1 + 0x28) + 0x18);
            lVar3 = Component_get_transform_0x6000c82(lVar5,0);
            if (iVar1 <= iVar6) {
              if (cRam000000000625b279 == '\0') {
                func_0x029f5a50(PTR_DAT_05e58bf8);
                cRam000000000625b279 = '\x01';
              }
              if (lVar3 != 0) {
                lVar5 = *(long *)(*(long *)PTR_DAT_05e58bf8 + 0xb8);
                Transform_set_localScale_0x6000f5e
                          (*(undefined4 *)(lVar5 + 0xc),*(undefined4 *)(lVar5 + 0x10),
                           *(undefined4 *)(lVar5 + 0x14),lVar3,0);
                return 0;
              }
              break;
            }
            if (lVar3 == 0) break;
            Transform_get_localScale_0x6000f5d(lVar3,0);
            lVar3 = *(long *)(param_1 + 0x28);
            *(undefined4 *)(param_1 + 0x34) = uVar9;
            if (lVar3 == 0) break;
            if (*(uint *)(lVar3 + 0x18) <= *(uint *)(param_1 + 0x30)) goto LAB_02c36b50;
            lVar3 = *(long *)(lVar3 + (long)(int)*(uint *)(param_1 + 0x30) * 8 + 0x20);
            if (lVar3 == 0) break;
            iVar6 = *(int *)(lVar3 + 0x18);
            if ((iVar6 == 0) ||
               (*(undefined4 *)(param_1 + 0x38) = *(undefined4 *)(lVar3 + 0x20), iVar6 == 1))
            goto LAB_02c36b50;
            fVar7 = *(float *)(lVar3 + 0x24);
            fVar8 = 0.0;
            *(undefined4 *)(param_1 + 0x40) = 0;
            *(float *)(param_1 + 0x3c) = fVar7;
LAB_02c369cc:
            if (fVar8 < fVar7) {
              fVar7 = (float)Time_get_unscaledDeltaTime_0x6000ee8(0);
              *(float *)(param_1 + 0x40) = fVar8 + fVar7;
              if (lVar5 != 0) {
                fVar11 = *(float *)(param_1 + 0x3c);
                lVar5 = Component_get_transform_0x6000c82(lVar5,0);
                if (lVar5 != 0) {
                  fVar11 = (fVar8 + fVar7) / fVar11;
                  fVar7 = 1.0;
                  if (fVar11 <= 1.0) {
                    fVar7 = fVar11;
                  }
                  fVar8 = 0.0;
                  if (0.0 <= fVar11) {
                    fVar8 = fVar7;
                  }
                  fVar7 = 0.0;
                  if (0.0 <= fVar8) {
                    fVar7 = fVar8;
                  }
                  fVar8 = fVar7 * fVar7 * 3.0 - fVar7 * fVar7 * (fVar7 + fVar7);
                  fVar8 = fVar8 + (1.0 - fVar8) * 0.0;
                  fVar7 = 1.0;
                  if (fVar8 <= 1.0) {
                    fVar7 = fVar8;
                  }
                  fVar11 = 0.0;
                  if (0.0 <= fVar8) {
                    fVar11 = fVar7;
                  }
                  Transform_set_localScale_0x6000f5e
                            (0x3f800000,
                             *(float *)(param_1 + 0x34) +
                             fVar11 * (*(float *)(param_1 + 0x38) - *(float *)(param_1 + 0x34)),
                             0x3f800000,lVar5,0);
                  *(undefined8 *)(param_1 + 0x18) = 0;
                  Managed_WriteBarrier((undefined8 *)(param_1 + 0x18),0);
                  *(undefined4 *)(param_1 + 0x10) = 1;
                  return 1;
                }
              }
              break;
            }
            if ((lVar5 == 0) || (lVar3 = Component_get_transform_0x6000c82(lVar5,0), lVar3 == 0))
            break;
            uVar10 = (ulong)*(uint *)(param_1 + 0x38);
            Transform_set_localScale_0x6000f5e(0x3f800000,uVar10,0x3f800000,lVar3,0);
            iVar6 = *(int *)(param_1 + 0x30) + 1;
            *(int *)(param_1 + 0x30) = iVar6;
          }
        }
      }
    }
  }
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

