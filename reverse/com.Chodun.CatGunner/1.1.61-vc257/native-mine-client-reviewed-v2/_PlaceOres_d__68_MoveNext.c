/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b4b158, Ghidra VA 02c4b158. */

/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */

undefined8 _PlaceOres_d__68_MoveNext(long param_1)

{
  uint uVar1;
  int iVar2;
  double dVar3;
  undefined *puVar4;
  undefined *puVar5;
  undefined *puVar6;
  char cVar7;
  undefined4 uVar8;
  undefined4 uVar9;
  undefined4 uVar10;
  uint uVar11;
  long lVar12;
  undefined8 uVar13;
  long *plVar14;
  ulong uVar15;
  int iVar16;
  undefined8 *puVar17;
  int iVar18;
  long *plVar19;
  long lVar20;
  long lVar21;
  long lVar22;
  double dVar23;
  float fVar24;
  float fVar25;
  float fVar26;
  float fVar27;
  undefined8 uStack_80;
  undefined8 uStack_78;
  
  if ((bRam000000000625c120 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e633f8);
    func_0x029f5a50(PTR_DAT_05e58f08);
    func_0x029f5a50(PTR_DAT_05e5d790);
    func_0x029f5a50(PTR_DAT_05e63108);
    func_0x029f5a50(PTR_DAT_05e63400);
    func_0x029f5a50(PTR_DAT_05e63408);
    func_0x029f5a50(PTR_DAT_05e62680);
    func_0x029f5a50(PTR_DAT_05e63410);
    func_0x029f5a50(PTR_DAT_05e63418);
    func_0x029f5a50(PTR_DAT_05e62fe8);
    func_0x029f5a50(PTR_DAT_05e63420);
    func_0x029f5a50(PTR_DAT_05e63128);
    func_0x029f5a50(PTR_DAT_05e63428);
    func_0x029f5a50(PTR_DAT_05e62628);
    func_0x029f5a50(PTR_DAT_05e63430);
    func_0x029f5a50(PTR_DAT_05e591c0);
    func_0x029f5a50(PTR_DAT_05e59960);
    func_0x029f5a50(PTR_DAT_05e63438);
    func_0x029f5a50(PTR_DAT_05e633d8);
    func_0x029f5a50(PTR_DAT_05e63440);
    func_0x029f5a50(PTR_DAT_05e63448);
    bRam000000000625c120 = 1;
  }
  puVar5 = PTR_DAT_05e63440;
  puVar17 = (undefined8 *)PTR_DAT_05e63420;
  puVar4 = PTR_DAT_05e63400;
  plVar19 = (long *)PTR_DAT_05e591c0;
  iVar18 = *(int *)(param_1 + 0x10);
  lVar22 = *(long *)(param_1 + 0x20);
  if (iVar18 == 2) {
    *(undefined4 *)(param_1 + 0x10) = 0xffffffff;
    goto LAB_02c4b9c0;
  }
  if (iVar18 == 1) {
    *(undefined4 *)(param_1 + 0x10) = 0xffffffff;
    goto LAB_02c4b5ac;
  }
  if (iVar18 != 0) {
    return 0;
  }
  *(undefined4 *)(param_1 + 0x10) = 0xffffffff;
  if (lVar22 != 0) {
    if ((*(long *)(lVar22 + 0x20) == 0) || (*(long *)(*(long *)(lVar22 + 0x20) + 0x18) == 0)) {
      if (*(int *)(*(long *)PTR_DAT_05e58f08 + 0xe4) == 0) {
        func_0x029f5bd0();
      }
      Debug_LogWarning_0x6000346(*(undefined8 *)PTR_DAT_05e63448,0);
      return 0;
    }
    uVar8 = Random_Range_0x6000ba7(0,99999,0);
    lVar12 = func_0x029f5cec(*(undefined8 *)PTR_DAT_05e59960);
    Random__ctor_0x600099b(lVar12,uVar8,0);
    plVar19 = (long *)(param_1 + 0x28);
    *plVar19 = lVar12;
    Managed_WriteBarrier(plVar19,lVar12);
    plVar19 = (long *)*plVar19;
    if (plVar19 != (long *)0x0) {
      dVar23 = (double)(**(code **)(*plVar19 + 0x1b8))(plVar19,*(undefined8 *)(*plVar19 + 0x1c0));
      dVar3 = _UNK_01170a08;
      plVar19 = *(long **)(param_1 + 0x28);
      *(float *)(param_1 + 0x30) = (float)(dVar23 * _UNK_01170a08);
      if (plVar19 != (long *)0x0) {
        dVar23 = (double)(**(code **)(*plVar19 + 0x1b8))(plVar19,*(undefined8 *)(*plVar19 + 0x1c0));
        cVar7 = cRam000000000625baea;
        fVar26 = *(float *)(lVar22 + 0x10c);
        *(float *)(param_1 + 0x34) = (float)(dVar23 * dVar3);
        if (cVar7 == '\0') {
          func_0x029f5a50(PTR_DAT_05e59000);
          cRam000000000625baea = '\x01';
        }
        fVar26 = fVar26 * 0.25;
        if (*(int *)(*(long *)PTR_DAT_05e59000 + 0xe4) == 0) {
          func_0x029f5bd0();
        }
        fVar24 = (float)*(undefined8 *)(lVar22 + 0x10c);
        fVar25 = (float)((ulong)*(undefined8 *)(lVar22 + 0x10c) >> 0x20);
        uVar13 = *(undefined8 *)PTR_DAT_05e63430;
        iVar18 = -0x80000000;
        if ((float)(int)fVar26 != INFINITY) {
          iVar18 = (int)fVar26;
        }
        *(int *)(param_1 + 0x38) = iVar18;
        *(ulong *)(param_1 + 0x3c) = CONCAT44(fVar25 * fVar25,fVar24 * fVar24);
        uVar13 = func_0x029f5cec(uVar13);
        func_0x044764a8(uVar13,*(undefined8 *)PTR_DAT_05e63410);
        *(undefined8 *)(param_1 + 0x48) = uVar13;
        Managed_WriteBarrier((undefined8 *)(param_1 + 0x48),uVar13);
        iVar16 = *(int *)(param_1 + 0x38);
        *(undefined4 *)(param_1 + 0x50) = 0;
        iVar18 = -iVar16;
        *(int *)(param_1 + 0x60) = iVar18;
        while (puVar6 = PTR_DAT_05e633d8, iVar18 <= iVar16) {
          iVar18 = -iVar16;
          while (*(int *)(param_1 + 100) = iVar18, iVar18 <= iVar16) {
            if (lVar22 == 0) goto LAB_02c4ba2c;
            fVar25 = *(float *)(lVar22 + 0x11c) + (float)(iVar18 << 2);
            fVar27 = *(float *)(lVar22 + 0x114) + (float)(*(int *)(param_1 + 0x60) << 2);
            fVar26 = fVar25 - *(float *)(lVar22 + 0x11c);
            fVar24 = fVar27 - *(float *)(lVar22 + 0x114);
            fVar26 = fVar26 * fVar26 + fVar24 * fVar24;
            if ((*(float *)(param_1 + 0x40) <= fVar26) && (fVar26 <= *(float *)(param_1 + 0x3c))) {
              fVar26 = (float)Mathf_PerlinNoise_0x6000a74
                                        ((fVar27 + *(float *)(param_1 + 0x30)) *
                                         *(float *)(lVar22 + 0x120),
                                         *(float *)(lVar22 + 0x120) *
                                         (fVar25 + *(float *)(param_1 + 0x34)),0);
              if (*(float *)(lVar22 + 0x124) <= fVar26) {
                lVar12 = *(long *)(param_1 + 0x48);
                uStack_80 = 0;
                uStack_78 = 0;
                func_0x03b9cf88(fVar27,*(undefined4 *)(lVar22 + 0x118),fVar25,fVar26,&uStack_80,
                                *(undefined8 *)puVar5);
                if (lVar12 == 0) goto LAB_02c4ba2c;
                lVar20 = *(long *)(lVar12 + 0x10);
                lVar21 = *(long *)puVar4;
                *(int *)(lVar12 + 0x1c) = *(int *)(lVar12 + 0x1c) + 1;
                if (lVar20 == 0) goto LAB_02c4ba2c;
                uVar11 = *(uint *)(lVar12 + 0x18);
                if (uVar11 < *(uint *)(lVar20 + 0x18)) {
                  lVar20 = lVar20 + (long)(int)uVar11 * 0x10;
                  *(uint *)(lVar12 + 0x18) = uVar11 + 1;
                  *(undefined4 *)(lVar20 + 0x20) = (undefined4)uStack_80;
                  *(undefined4 *)(lVar20 + 0x24) = uStack_80._4_4_;
                  *(undefined4 *)(lVar20 + 0x28) = (undefined4)uStack_78;
                  *(undefined4 *)(lVar20 + 0x2c) = uStack_78._4_4_;
                }
                else {
                  func_0x04476d64(lVar12,*(undefined8 *)
                                          (*(long *)(*(long *)(lVar21 + 0x20) + 0xc0) + 0x70));
                }
              }
              iVar16 = *(int *)(lVar22 + 0xa0);
              iVar18 = *(int *)(param_1 + 0x50) + 1;
              iVar2 = 0;
              if (iVar16 != 0) {
                iVar2 = iVar18 / iVar16;
              }
              *(int *)(param_1 + 0x50) = iVar18;
              if (iVar18 == iVar2 * iVar16) {
                *(undefined8 *)(param_1 + 0x18) = 0;
                Managed_WriteBarrier((undefined8 *)(param_1 + 0x18),0);
                *(undefined4 *)(param_1 + 0x10) = 1;
                return 1;
              }
            }
LAB_02c4b5ac:
            iVar16 = *(int *)(param_1 + 0x38);
            iVar18 = *(int *)(param_1 + 100) + 1;
          }
          iVar18 = *(int *)(param_1 + 0x60) + 1;
          *(int *)(param_1 + 0x60) = iVar18;
        }
        lVar20 = *(long *)(param_1 + 0x48);
        lVar12 = *(long *)PTR_DAT_05e633d8;
        if (*(int *)(lVar12 + 0xe4) == 0) {
          func_0x029f5bd0();
          lVar12 = *(long *)puVar6;
        }
        puVar17 = *(undefined8 **)(lVar12 + 0xb8);
        lVar21 = puVar17[1];
        if (lVar21 == 0) {
          if (*(int *)(lVar12 + 0xe4) == 0) {
            func_0x029f5bd0();
            puVar17 = *(undefined8 **)(*(long *)puVar6 + 0xb8);
          }
          uVar13 = *puVar17;
          lVar21 = func_0x029f5cec(*(undefined8 *)PTR_DAT_05e633f8);
          func_0x03cf5e1c(lVar21,uVar13,*(undefined8 *)PTR_DAT_05e63438,0);
          plVar19 = (long *)(*(long *)(*(long *)puVar6 + 0xb8) + 8);
          *plVar19 = lVar21;
          Managed_WriteBarrier(plVar19,lVar21);
        }
        if ((((lVar20 != 0) &&
             (func_0x04478828(lVar20,lVar21,*(undefined8 *)PTR_DAT_05e63408), lVar22 != 0)) &&
            (*(long *)(lVar22 + 0x20) != 0)) && (*(long *)(param_1 + 0x48) != 0)) {
          iVar16 = *(int *)(*(long *)(param_1 + 0x48) + 0x18);
          iVar18 = *(int *)(*(long *)(lVar22 + 0x20) + 0x18);
          uVar13 = *(undefined8 *)PTR_DAT_05e5d790;
          if (iVar16 <= iVar18) {
            iVar18 = iVar16;
          }
          *(int *)(param_1 + 0x54) = iVar18;
          lVar12 = func_0x029f5b40(uVar13);
          plVar19 = (long *)(param_1 + 0x58);
          *plVar19 = lVar12;
          Managed_WriteBarrier(plVar19,lVar12);
          lVar12 = func_0x029f5cec(*(undefined8 *)PTR_DAT_05e62628);
          func_0x044f7180(lVar12,*(undefined8 *)PTR_DAT_05e62680);
          puVar4 = PTR_DAT_05e63108;
          if (0 < *(int *)(param_1 + 0x54)) {
            if (lVar12 == 0) goto LAB_02c4ba2c;
            iVar18 = 0;
            lVar20 = *(long *)PTR_DAT_05e63108;
            do {
              lVar21 = *(long *)(lVar12 + 0x10);
              *(int *)(lVar12 + 0x1c) = *(int *)(lVar12 + 0x1c) + 1;
              if (lVar21 == 0) goto LAB_02c4ba2c;
              uVar11 = *(uint *)(lVar12 + 0x18);
              if (uVar11 < *(uint *)(lVar21 + 0x18)) {
                *(uint *)(lVar12 + 0x18) = uVar11 + 1;
                *(int *)(lVar21 + (long)(int)uVar11 * 4 + 0x20) = iVar18;
              }
              else {
                func_0x044f7a10(lVar12,iVar18,
                                *(undefined8 *)(*(long *)(*(long *)(lVar20 + 0x20) + 0xc0) + 0x70));
                lVar20 = *(long *)puVar4;
              }
              puVar6 = PTR_DAT_05e63428;
              puVar5 = PTR_DAT_05e63128;
              iVar16 = *(int *)(param_1 + 0x54);
              iVar18 = iVar18 + 1;
            } while (iVar18 < iVar16);
            iVar18 = iVar16;
            if (99 < iVar16) {
              iVar18 = 100;
            }
            if (0 < iVar16) {
              iVar16 = 0;
              do {
                plVar14 = *(long **)(param_1 + 0x28);
                if (plVar14 == (long *)0x0) goto LAB_02c4ba2c;
                uVar8 = (**(code **)(*plVar14 + 0x198))
                                  (plVar14,iVar16,*(undefined4 *)(lVar12 + 0x18),
                                   *(undefined8 *)(*plVar14 + 0x1a0));
                uVar9 = func_0x044f7718(lVar12,uVar8,*(undefined8 *)puVar5);
                uVar10 = func_0x044f7718(lVar12,iVar16,*(undefined8 *)puVar5);
                func_0x044f776c(lVar12,iVar16,uVar9,*(undefined8 *)puVar6);
                func_0x044f776c(lVar12,uVar8,uVar10,*(undefined8 *)puVar6);
                lVar20 = *plVar19;
                uVar11 = func_0x044f7718(lVar12,iVar16,*(undefined8 *)puVar5);
                if (lVar20 == 0) goto LAB_02c4ba2c;
                if (*(uint *)(lVar20 + 0x18) <= uVar11) goto LAB_02c4ba30;
                iVar16 = iVar16 + 1;
                *(undefined4 *)(lVar20 + (long)(int)uVar11 * 4 + 0x20) = 1;
              } while (iVar18 != iVar16);
            }
          }
          *(undefined4 *)(param_1 + 0x60) = 0;
          uVar11 = 0;
          plVar19 = (long *)PTR_DAT_05e591c0;
          puVar17 = (undefined8 *)PTR_DAT_05e63420;
          do {
            if ((lVar22 == 0) || (lVar12 = *(long *)(lVar22 + 0x20), lVar12 == 0)) break;
            if ((int)*(uint *)(lVar12 + 0x18) <= (int)uVar11) {
              return 0;
            }
            if (*(uint *)(lVar12 + 0x18) <= uVar11) goto LAB_02c4ba30;
            uVar13 = *(undefined8 *)(lVar12 + (long)(int)uVar11 * 8 + 0x20);
            if (*(int *)(*plVar19 + 0xe4) == 0) {
              func_0x029f5bd0();
            }
            uVar15 = Object_op_Equality_0x6000dec(uVar13,0,0);
            if ((uVar15 & 1) == 0) {
              uVar11 = *(uint *)(param_1 + 0x60);
              lVar12 = (long)(int)uVar11;
              if ((int)uVar11 < *(int *)(param_1 + 0x54)) {
                lVar20 = *(long *)(param_1 + 0x58);
                if (lVar20 == 0) break;
                if (*(uint *)(lVar20 + 0x18) <= uVar11) {
LAB_02c4ba30:
                    /* WARNING: Subroutine does not return */
                  Throw_Index_Wrapper();
                }
                lVar21 = *(long *)(lVar22 + 0x20);
                if (lVar21 == 0) break;
                if (*(uint *)(lVar21 + 0x18) <= uVar11) goto LAB_02c4ba30;
                lVar21 = *(long *)(lVar21 + lVar12 * 8 + 0x20);
                if (lVar21 == 0) break;
                uVar11 = *(uint *)(lVar20 + lVar12 * 4 + 0x20);
                lVar12 = Component_get_gameObject_0x6000c83(lVar21,0);
                if (lVar12 == 0) break;
                GameObject_SetActive_0x6000cfe(lVar12,1,0);
                lVar12 = *(long *)(lVar22 + 0x20);
                if (lVar12 == 0) break;
                uVar1 = *(uint *)(param_1 + 0x60);
                if (*(uint *)(lVar12 + 0x18) <= uVar1) goto LAB_02c4ba30;
                lVar20 = *(long *)(lVar22 + 0x40);
                if (lVar20 == 0) break;
                if (*(uint *)(lVar20 + 0x18) <= uVar11) goto LAB_02c4ba30;
                if (*(long *)(param_1 + 0x48) == 0) break;
                lVar12 = *(long *)(lVar12 + (long)(int)uVar1 * 8 + 0x20);
                uVar13 = *(undefined8 *)(lVar20 + (long)(int)uVar11 * 8 + 0x20);
                func_0x04476a40(*(long *)(param_1 + 0x48),(long)(int)uVar1,*puVar17);
                if (lVar12 == 0) break;
                Ore_Spawn(lVar12,uVar11,uVar13);
              }
              else {
                lVar20 = *(long *)(lVar22 + 0x20);
                if (lVar20 == 0) break;
                if (*(uint *)(lVar20 + 0x18) <= uVar11) goto LAB_02c4ba30;
                lVar12 = *(long *)(lVar20 + lVar12 * 8 + 0x20);
                if ((lVar12 == 0) ||
                   (lVar12 = Component_get_gameObject_0x6000c83(lVar12,0), lVar12 == 0)) break;
                GameObject_SetActive_0x6000cfe(lVar12,0,0);
              }
              iVar16 = *(int *)(lVar22 + 0xa0);
              iVar18 = *(int *)(param_1 + 0x60) + 1;
              iVar2 = 0;
              if (iVar16 != 0) {
                iVar2 = iVar18 / iVar16;
              }
              if (iVar18 == iVar2 * iVar16) {
                *(undefined8 *)(param_1 + 0x18) = 0;
                Managed_WriteBarrier((undefined8 *)(param_1 + 0x18),0);
                *(undefined4 *)(param_1 + 0x10) = 2;
                return 1;
              }
            }
LAB_02c4b9c0:
            uVar11 = *(int *)(param_1 + 0x60) + 1;
            *(uint *)(param_1 + 0x60) = uVar11;
          } while( true );
        }
      }
    }
  }
LAB_02c4ba2c:
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

