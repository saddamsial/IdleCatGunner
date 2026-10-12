/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b434c0, Ghidra VA 02c434c0. */

/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */

void Cat_manager_SetupFormation(long param_1)

{
  uint uVar1;
  float fVar2;
  undefined *puVar3;
  undefined *puVar4;
  undefined *puVar5;
  ulong uVar6;
  ulong uVar7;
  long lVar8;
  long lVar9;
  long lVar10;
  long lVar11;
  undefined8 uVar12;
  int iVar13;
  int iVar14;
  long lVar15;
  float fVar16;
  float fStack_58;
  float fStack_54;
  
  puVar3 = PTR_DAT_05e591c0;
  if ((bRam000000000625c0c4 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e63288);
    func_0x029f5a50(PTR_DAT_05e63290);
    func_0x029f5a50(PTR_DAT_05e63298);
    func_0x029f5a50(PTR_DAT_05e632a0);
    func_0x029f5a50(PTR_DAT_05e632a8);
    func_0x029f5a50(PTR_DAT_05e591c0);
    bRam000000000625c0c4 = 1;
  }
  uVar12 = *(undefined8 *)(param_1 + 0x28);
  if (*(int *)(*(long *)puVar3 + 0xe4) == 0) {
    func_0x029f5bd0();
  }
  uVar6 = Object_op_Inequality_0x6000ded(uVar12,0,0);
  if ((uVar6 & 1) != 0) {
    lVar8 = *(long *)(param_1 + 0x28);
    if (lVar8 == 0) goto LAB_02c43690;
    uVar12 = *(undefined8 *)(param_1 + 0x30);
    *(undefined4 *)(lVar8 + 0x1cc) = *(undefined4 *)(param_1 + 0x38);
    *(undefined8 *)(lVar8 + 0x1c4) = uVar12;
  }
  puVar4 = PTR_DAT_05e63290;
  lVar8 = func_0x029f5cec(*(undefined8 *)PTR_DAT_05e632a8);
  func_0x0452c340(lVar8,*(undefined8 *)puVar4);
  puVar5 = PTR_DAT_05e632a0;
  puVar4 = PTR_DAT_05e63288;
  lVar9 = *(long *)(param_1 + 0x20);
  if (lVar9 != 0) {
    lVar15 = 5;
    do {
      fVar2 = _UNK_0116c26c;
      uVar6 = lVar15 - 4;
      if ((long)(int)*(uint *)(lVar9 + 0x18) <= (long)uVar6) {
        if (lVar8 != 0) {
          iVar14 = *(int *)(lVar8 + 0x18);
          if (iVar14 < 1) {
            return;
          }
          iVar13 = 0;
          while (lVar9 = func_0x0452c8d8(lVar8,iVar13,*(undefined8 *)puVar5), lVar9 != 0) {
            func_0x05afb270((360.0 / (float)iVar14) * (float)iVar13 * fVar2,&fStack_54,&fStack_58);
            iVar13 = iVar13 + 1;
            fVar16 = *(float *)(param_1 + 0x3c);
            *(undefined4 *)(lVar9 + 0x1c8) = 0;
            *(float *)(lVar9 + 0x1c4) = fStack_54 * fVar16;
            *(float *)(lVar9 + 0x1cc) = fStack_58 * fVar16;
            iVar14 = *(int *)(lVar8 + 0x18);
            if (iVar14 <= iVar13) {
              return;
            }
          }
        }
        break;
      }
      if (*(uint *)(lVar9 + 0x18) <= uVar6) {
LAB_02c4373c:
                    /* WARNING: Subroutine does not return */
        Throw_Index_Wrapper();
      }
      uVar12 = *(undefined8 *)(lVar9 + lVar15 * 8);
      if (*(int *)(*(long *)puVar3 + 0xe4) == 0) {
        func_0x029f5bd0();
      }
      uVar7 = Object_op_Inequality_0x6000ded(uVar12,0,0);
      if ((uVar7 & 1) != 0) {
        lVar9 = *(long *)(param_1 + 0x20);
        if (lVar9 == 0) break;
        if (*(uint *)(lVar9 + 0x18) <= uVar6) goto LAB_02c4373c;
        lVar9 = *(long *)(lVar9 + lVar15 * 8);
        if (lVar9 == 0) break;
        if (*(char *)(lVar9 + 0x1b0) != '\0') {
          if (lVar8 == 0) break;
          lVar10 = *(long *)(lVar8 + 0x10);
          lVar11 = *(long *)puVar4;
          *(int *)(lVar8 + 0x1c) = *(int *)(lVar8 + 0x1c) + 1;
          if (lVar10 == 0) break;
          uVar1 = *(uint *)(lVar8 + 0x18);
          if (uVar1 < *(uint *)(lVar10 + 0x18)) {
            *(uint *)(lVar8 + 0x18) = uVar1 + 1;
            *(long *)(lVar10 + (long)(int)uVar1 * 8 + 0x20) = lVar9;
            Managed_WriteBarrier();
          }
          else {
            func_0x0452cba8(lVar8,lVar9,
                            *(undefined8 *)(*(long *)(*(long *)(lVar11 + 0x20) + 0xc0) + 0x70));
          }
        }
      }
      lVar9 = *(long *)(param_1 + 0x20);
      lVar15 = lVar15 + 1;
    } while (lVar9 != 0);
  }
LAB_02c43690:
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

