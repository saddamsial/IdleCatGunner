/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b7cf74, Ghidra VA 02c7cf74. */

long Pet_manager_GetLockedGrades(long param_1,int param_2)

{
  int iVar1;
  uint uVar2;
  undefined *puVar3;
  undefined *puVar4;
  undefined *puVar5;
  long lVar6;
  long lVar7;
  ulong uVar8;
  long lVar9;
  long lVar10;
  long lVar11;
  
  puVar4 = PTR_DAT_05e62680;
  puVar3 = PTR_DAT_05e62628;
  if ((bRam000000000625c325 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e63108);
    func_0x029f5a50(PTR_DAT_05e62680);
    func_0x029f5a50(PTR_DAT_05e62628);
    bRam000000000625c325 = 1;
  }
  puVar5 = PTR_DAT_05e63108;
  lVar6 = func_0x029f5cec(*(undefined8 *)puVar3);
  func_0x044f7180(lVar6,*(undefined8 *)puVar4);
  lVar7 = *(long *)(param_1 + 0x40);
  if (lVar7 == 0) {
LAB_02c7d0a0:
    lVar7 = *(long *)(param_1 + 0x48);
    if (lVar7 == 0) {
      return lVar6;
    }
    lVar11 = 8;
    do {
      uVar8 = lVar11 - 8;
      if ((long)(int)*(uint *)(lVar7 + 0x18) <= (long)uVar8) {
        return lVar6;
      }
      if (*(uint *)(lVar7 + 0x18) <= uVar8) goto LAB_02c7d168;
      if (*(int *)(lVar7 + lVar11 * 4) == param_2) {
        lVar9 = *(long *)(param_1 + 0x30);
        if (lVar9 == 0) break;
        if (*(uint *)(lVar9 + 0x18) <= uVar8) {
LAB_02c7d168:
                    /* WARNING: Subroutine does not return */
          Throw_Index_Wrapper();
        }
        iVar1 = *(int *)(lVar9 + lVar11 * 4);
        if (iVar1 != -1) {
          if (lVar6 == 0) break;
          lVar9 = *(long *)(lVar6 + 0x10);
          lVar10 = *(long *)puVar5;
          *(int *)(lVar6 + 0x1c) = *(int *)(lVar6 + 0x1c) + 1;
          if (lVar9 == 0) break;
          uVar2 = *(uint *)(lVar6 + 0x18);
          if (uVar2 < *(uint *)(lVar9 + 0x18)) {
            *(uint *)(lVar6 + 0x18) = uVar2 + 1;
            *(int *)(lVar9 + (long)(int)uVar2 * 4 + 0x20) = iVar1;
          }
          else {
            func_0x044f7a10(lVar6,iVar1,
                            *(undefined8 *)(*(long *)(*(long *)(lVar10 + 0x20) + 0xc0) + 0x70));
            lVar7 = *(long *)(param_1 + 0x48);
          }
        }
      }
      lVar11 = lVar11 + 1;
    } while (lVar7 != 0);
  }
  else {
    lVar11 = 8;
    do {
      uVar8 = lVar11 - 8;
      if ((long)(int)*(uint *)(lVar7 + 0x18) <= (long)uVar8) goto LAB_02c7d0a0;
      if (*(uint *)(lVar7 + 0x18) <= uVar8) goto LAB_02c7d168;
      if (*(int *)(lVar7 + lVar11 * 4) == param_2) {
        lVar9 = *(long *)(param_1 + 0x38);
        if (lVar9 == 0) break;
        if (*(uint *)(lVar9 + 0x18) <= uVar8) goto LAB_02c7d168;
        iVar1 = *(int *)(lVar9 + lVar11 * 4);
        if (iVar1 != -1) {
          if (lVar6 == 0) break;
          lVar9 = *(long *)(lVar6 + 0x10);
          lVar10 = *(long *)puVar5;
          *(int *)(lVar6 + 0x1c) = *(int *)(lVar6 + 0x1c) + 1;
          if (lVar9 == 0) break;
          uVar2 = *(uint *)(lVar6 + 0x18);
          if (uVar2 < *(uint *)(lVar9 + 0x18)) {
            *(uint *)(lVar6 + 0x18) = uVar2 + 1;
            *(int *)(lVar9 + (long)(int)uVar2 * 4 + 0x20) = iVar1;
          }
          else {
            func_0x044f7a10(lVar6,iVar1,
                            *(undefined8 *)(*(long *)(*(long *)(lVar10 + 0x20) + 0xc0) + 0x70));
            lVar7 = *(long *)(param_1 + 0x40);
          }
        }
      }
      lVar11 = lVar11 + 1;
    } while (lVar7 != 0);
  }
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

