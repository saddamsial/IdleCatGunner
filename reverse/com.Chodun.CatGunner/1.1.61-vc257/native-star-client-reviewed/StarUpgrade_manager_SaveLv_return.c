/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b6e68c, Ghidra VA 02c6e68c. */

void StarUpgrade_manager_SaveLv_return(long param_1)

{
  long lVar1;
  long lVar2;
  long lVar3;
  ulong uVar4;
  uint uVar5;
  ulong uVar6;
  uint uVar7;
  ulong uVar8;
  uint *puVar9;
  long lVar10;
  uint *puVar11;
  undefined8 uVar12;
  undefined1 auVar13 [16];
  
  if ((bRam000000000625c2b1 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e5d790);
    bRam000000000625c2b1 = 1;
  }
  if (*(long *)(param_1 + 0x30) == 0) {
                    /* WARNING: Subroutine does not return */
    Throw_NullReference_Wrapper();
  }
  lVar1 = Array_Clone_0x6000ccb(*(long *)(param_1 + 0x30),0);
  if (lVar1 != 0) {
    uVar12 = *(undefined8 *)PTR_DAT_05e5d790;
    lVar2 = func_0x029f5bd4(lVar1,uVar12);
    if (lVar2 == 0) {
      lVar1 = func_0x029f607c(lVar1,uVar12);
      if ((bRam000000000625c2b2 & 1) == 0) {
        func_0x029f5a50(PTR_DAT_05e5d790);
        bRam000000000625c2b2 = 1;
      }
      if (*(long *)(lVar1 + 0x38) == 0) {
                    /* WARNING: Subroutine does not return */
        Throw_NullReference_Wrapper();
      }
      lVar1 = Array_Clone_0x6000ccb(*(long *)(lVar1 + 0x38),0);
      if (lVar1 != 0) {
        uVar12 = *(undefined8 *)PTR_DAT_05e5d790;
        lVar2 = func_0x029f5bd4(lVar1,uVar12);
        if (lVar2 == 0) {
          auVar13 = func_0x029f607c(lVar1,uVar12);
          lVar3 = auVar13._8_8_;
          lVar1 = auVar13._0_8_;
          StarUpgrade_manager_EnsureArrays();
          lVar2 = *(long *)(lVar1 + 0x30);
          if (lVar2 != 0) {
            Array_Clear_0x6000d48(lVar2,0,*(undefined4 *)(lVar2 + 0x18),0);
            lVar2 = *(long *)(lVar1 + 0x38);
            if (lVar2 != 0) {
              Array_Clear_0x6000d48(lVar2,0,*(undefined4 *)(lVar2 + 0x18),0);
              if (lVar3 != 0) {
                lVar2 = *(long *)(lVar3 + 0xf8);
                if (lVar2 != 0) {
                  lVar10 = *(long *)(lVar1 + 0x30);
                  if (lVar10 == 0) goto LAB_02c6e898;
                  uVar5 = (uint)*(ulong *)(lVar2 + 0x18);
                  uVar7 = (uint)*(ulong *)(lVar10 + 0x18);
                  if ((int)uVar7 <= (int)uVar5) {
                    uVar5 = uVar7;
                  }
                  uVar4 = (ulong)uVar5;
                  if (0 < (int)uVar5) {
                    uVar6 = *(ulong *)(lVar2 + 0x18) & 0xffffffff;
                    uVar8 = *(ulong *)(lVar10 + 0x18) & 0xffffffff;
                    puVar9 = (uint *)(lVar2 + 0x20);
                    puVar11 = (uint *)(lVar10 + 0x20);
                    do {
                      if ((uVar6 == 0) || (uVar8 == 0)) goto LAB_02c6e894;
                      uVar5 = *puVar9;
                      uVar8 = uVar8 - 1;
                      uVar6 = uVar6 - 1;
                      if (0x13 < (int)uVar5) {
                        uVar5 = 0x14;
                      }
                      uVar4 = uVar4 - 1;
                      *puVar11 = uVar5 & ((int)uVar5 >> 0x1f ^ 0xffffffffU);
                      puVar9 = puVar9 + 1;
                      puVar11 = puVar11 + 1;
                    } while (uVar4 != 0);
                  }
                }
                lVar2 = *(long *)(lVar3 + 0x100);
                if (lVar2 != 0) {
                  lVar1 = *(long *)(lVar1 + 0x38);
                  if (lVar1 == 0) goto LAB_02c6e898;
                  uVar5 = (uint)*(ulong *)(lVar2 + 0x18);
                  uVar7 = (uint)*(ulong *)(lVar1 + 0x18);
                  if ((int)uVar7 <= (int)uVar5) {
                    uVar5 = uVar7;
                  }
                  uVar4 = (ulong)uVar5;
                  if (0 < (int)uVar5) {
                    uVar6 = *(ulong *)(lVar2 + 0x18) & 0xffffffff;
                    uVar8 = *(ulong *)(lVar1 + 0x18) & 0xffffffff;
                    puVar9 = (uint *)(lVar2 + 0x20);
                    puVar11 = (uint *)(lVar1 + 0x20);
                    do {
                      if ((uVar6 == 0) || (uVar8 == 0)) {
LAB_02c6e894:
                    /* WARNING: Subroutine does not return */
                        Throw_Index_Wrapper();
                      }
                      uVar4 = uVar4 - 1;
                      uVar8 = uVar8 - 1;
                      uVar6 = uVar6 - 1;
                      *puVar11 = *puVar9 & ((int)*puVar9 >> 0x1f ^ 0xffffffffU);
                      puVar9 = puVar9 + 1;
                      puVar11 = puVar11 + 1;
                    } while (uVar4 != 0);
                  }
                }
              }
              return;
            }
          }
LAB_02c6e898:
                    /* WARNING: Subroutine does not return */
          Throw_NullReference_Wrapper();
        }
      }
      return;
    }
  }
  return;
}

