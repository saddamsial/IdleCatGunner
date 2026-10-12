/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b63a38, Ghidra VA 02c63a38. */

void Fish_Tank_SyncInventoryIndices(long param_1)

{
  uint uVar1;
  undefined *puVar2;
  undefined *puVar3;
  undefined *puVar4;
  undefined *puVar5;
  undefined *puVar6;
  undefined *puVar7;
  int iVar8;
  long lVar9;
  ulong uVar10;
  long lVar11;
  long lVar12;
  long lVar13;
  long lVar14;
  uint uVar15;
  undefined8 uStack_98;
  undefined8 *puStack_90;
  long lStack_88;
  undefined8 uStack_80;
  undefined8 uStack_78;
  long lStack_70;
  
  puVar2 = PTR_DAT_05e5dd38;
  if ((bRam000000000625c23f & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e626b0);
    func_0x029f5a50(PTR_DAT_05e638f0);
    func_0x029f5a50(PTR_DAT_05e638f8);
    func_0x029f5a50(PTR_DAT_05e63900);
    func_0x029f5a50(PTR_DAT_05e5dd38);
    func_0x029f5a50(PTR_DAT_05e638c0);
    func_0x029f5a50(PTR_DAT_05e63908);
    func_0x029f5a50(PTR_DAT_05e638b0);
    func_0x029f5a50(PTR_DAT_05e62fe8);
    func_0x029f5a50(PTR_DAT_05e63128);
    func_0x029f5a50(PTR_DAT_05e638a8);
    bRam000000000625c23f = 1;
  }
  puVar3 = PTR_DAT_05e638b0;
  uStack_80 = 0;
  uStack_78 = 0;
  lStack_70 = 0;
  if (**(long **)(*(long *)puVar2 + 0xb8) != 0) {
    lVar14 = *(long *)(**(long **)(*(long *)puVar2 + 0xb8) + 0x90);
    lVar9 = func_0x029f5cec(*(undefined8 *)PTR_DAT_05e638a8);
    func_0x0452c340(lVar9,*(undefined8 *)puVar3);
    puVar7 = PTR_DAT_05e63908;
    puVar6 = PTR_DAT_05e638f8;
    puVar5 = PTR_DAT_05e638f0;
    puVar4 = PTR_DAT_05e638c0;
    puVar3 = PTR_DAT_05e63128;
    puVar2 = PTR_DAT_05e626b0;
    lVar11 = *(long *)(param_1 + 0x20);
    if (lVar11 != 0) {
      uVar15 = 0;
      do {
        if ((int)*(uint *)(lVar11 + 0x18) <= (int)uVar15) {
          if ((lVar14 != 0) &&
             (lVar11 = func_0x029f5b40(*(undefined8 *)puVar2,*(undefined4 *)(lVar14 + 0x18)),
             lVar9 != 0)) {
            func_0x0452d690(&uStack_98,lVar9,*(undefined8 *)puVar7);
            lStack_70 = lStack_88;
            uStack_78 = puStack_90;
            uStack_80 = uStack_98;
            uStack_98 = 0;
            puStack_90 = &uStack_80;
            do {
              do {
                uVar10 = func_0x03fa4e10(&uStack_80,*(undefined8 *)puVar6);
                lVar9 = lStack_70;
                if ((uVar10 & 1) == 0) {
                  func_0x03fa4e0c(&uStack_80,*(undefined8 *)puVar5);
                  return;
                }
                if (lStack_70 == 0) {
                    /* WARNING: Subroutine does not return */
                  Throw_NullReference_Wrapper();
                }
                *(undefined4 *)(lStack_70 + 0x44) = 0xffffffff;
                iVar8 = *(int *)(lVar14 + 0x18);
              } while (iVar8 < 1);
              if (lVar11 == 0) {
                    /* WARNING: Subroutine does not return */
                Throw_NullReference_Wrapper();
              }
              uVar10 = 0;
              do {
                if (*(uint *)(lVar11 + 0x18) <= uVar10) {
                    /* WARNING: Subroutine does not return */
                  Throw_Index_Wrapper();
                }
                if (*(char *)(lVar11 + 0x20 + uVar10) == '\0') {
                  iVar8 = func_0x044f7718(lVar14,uVar10 & 0xffffffff,*(undefined8 *)puVar3);
                  if (iVar8 == *(int *)(lVar9 + 0x40)) {
                    *(uint *)(lVar9 + 0x44) = (uint)uVar10;
                    if (*(uint *)(lVar11 + 0x18) <= (uint)uVar10) {
                    /* WARNING: Subroutine does not return */
                      Throw_Index_Wrapper();
                    }
                    *(undefined1 *)(lVar11 + 0x20 + uVar10) = 1;
                    break;
                  }
                  iVar8 = *(int *)(lVar14 + 0x18);
                }
                uVar10 = uVar10 + 1;
              } while ((long)uVar10 < (long)iVar8);
            } while( true );
          }
          break;
        }
        if (*(uint *)(lVar11 + 0x18) <= uVar15) {
                    /* WARNING: Subroutine does not return */
          Throw_Index_Wrapper();
        }
        lVar11 = *(long *)(lVar11 + (long)(int)uVar15 * 8 + 0x20);
        if (lVar11 == 0) break;
        if (*(char *)(lVar11 + 0x48) != '\0') {
          if (lVar9 == 0) break;
          lVar12 = *(long *)(lVar9 + 0x10);
          lVar13 = *(long *)puVar4;
          *(int *)(lVar9 + 0x1c) = *(int *)(lVar9 + 0x1c) + 1;
          if (lVar12 == 0) break;
          uVar1 = *(uint *)(lVar9 + 0x18);
          if (uVar1 < *(uint *)(lVar12 + 0x18)) {
            *(uint *)(lVar9 + 0x18) = uVar1 + 1;
            *(long *)(lVar12 + (long)(int)uVar1 * 8 + 0x20) = lVar11;
            Managed_WriteBarrier();
          }
          else {
            func_0x0452cba8(lVar9,lVar11,
                            *(undefined8 *)(*(long *)(*(long *)(lVar13 + 0x20) + 0xc0) + 0x70));
          }
        }
        lVar11 = *(long *)(param_1 + 0x20);
        uVar15 = uVar15 + 1;
      } while (lVar11 != 0);
    }
  }
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

