/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2aa40e4, Ghidra VA 02ba40e4. */

void Mission_manager_Reward_Balance_Apply(long param_1)

{
  int iVar1;
  uint uVar2;
  undefined *puVar3;
  bool bVar4;
  long lVar5;
  int iVar6;
  ulong uVar7;
  long lVar8;
  long lVar9;
  bool bVar10;
  long lVar11;
  uint uVar12;
  int iVar13;
  int iVar14;
  int iVar15;
  int iVar16;
  ulong uVar17;
  
  if ((bRam000000000625ba3d & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e5dd50);
    bRam000000000625ba3d = 1;
  }
  puVar3 = PTR_DAT_05e5dd50;
  iVar1 = *(int *)(param_1 + 0x60);
  if (iVar1 < 1) {
    bVar10 = true;
    bVar4 = true;
  }
  else {
    bVar4 = *(char *)(param_1 + 100) == '\0';
    bVar10 = !bVar4;
  }
  lVar5 = *(long *)(param_1 + 0x28);
  if (lVar5 != 0) {
    if (0 < (int)*(ulong *)(lVar5 + 0x18)) {
      uVar7 = *(ulong *)(lVar5 + 0x18) & 0xffffffff;
      iVar13 = 0x4b0;
      iVar14 = 400;
      iVar15 = 200;
      iVar16 = 600;
      lVar11 = 4;
      do {
        uVar17 = lVar11 - 4;
        if ((int)uVar17 + (int)((uVar17 & 0xffffffff) / 3) * -3 == 2) {
          if (bVar10) {
            uVar12 = (uint)((uVar17 & 0xffffffff) / 3);
            if (bVar4) {
              iVar6 = (uVar12 & 1) * 4 + (int)((uVar17 & 0xffffffff) / 6) * 5;
              if (0x12 < iVar6) {
                iVar6 = 0x13;
              }
              iVar6 = iVar6 + 10;
            }
            else {
              lVar5 = *(long *)puVar3;
              if (*(int *)(lVar5 + 0xe4) == 0) {
                func_0x029f5bd0();
                lVar5 = *(long *)puVar3;
              }
              lVar9 = *(long *)(*(long *)(lVar5 + 0xb8) + 0x10);
              if (lVar9 == 0) goto LAB_02ba434c;
              uVar2 = *(uint *)(lVar9 + 0x18) - 1;
              if ((int)uVar2 <= (int)uVar12) {
                uVar12 = uVar2;
              }
              if (*(uint *)(lVar9 + 0x18) <= uVar12) goto LAB_02ba4350;
              lVar5 = *(long *)(param_1 + 0x28);
              if (lVar5 == 0) goto LAB_02ba434c;
              iVar6 = *(int *)(lVar9 + (long)(int)uVar12 * 4 + 0x20);
            }
            if (*(uint *)(lVar5 + 0x18) <= uVar17) goto LAB_02ba4350;
            lVar9 = *(long *)(lVar5 + lVar11 * 8);
            if (lVar9 == 0) goto LAB_02ba434c;
            lVar8 = *(long *)(param_1 + 0x30);
            *(undefined4 *)(lVar9 + 0x14) = 1;
            *(int *)(lVar9 + 0x18) = iVar6;
            if (lVar8 == 0) goto LAB_02ba434c;
            if (*(uint *)(lVar8 + 0x18) <= uVar17) goto LAB_02ba4350;
            lVar9 = *(long *)(lVar8 + lVar11 * 8);
            if (lVar9 == 0) goto LAB_02ba434c;
            *(undefined4 *)(lVar9 + 0x14) = 1;
            iVar6 = iVar6 + 5;
          }
          else {
            if (uVar7 <= uVar17) goto LAB_02ba4350;
            lVar9 = *(long *)(lVar5 + lVar11 * 8);
            if (lVar9 == 0) goto LAB_02ba434c;
            lVar8 = *(long *)(param_1 + 0x30);
            *(undefined4 *)(lVar9 + 0x14) = 2;
            *(int *)(lVar9 + 0x18) = iVar14;
            if (lVar8 == 0) goto LAB_02ba434c;
            if (*(uint *)(lVar8 + 0x18) <= uVar17) goto LAB_02ba4350;
            lVar9 = *(long *)(lVar8 + lVar11 * 8);
            if (lVar9 == 0) goto LAB_02ba434c;
            *(undefined4 *)(lVar9 + 0x14) = 2;
            iVar6 = iVar13;
          }
        }
        else {
          iVar6 = iVar16;
          if (iVar1 < 1) {
            iVar6 = iVar15;
          }
          if (uVar7 <= uVar17) {
LAB_02ba4350:
                    /* WARNING: Subroutine does not return */
            Throw_Index_Wrapper();
          }
          lVar9 = *(long *)(lVar5 + lVar11 * 8);
          if (lVar9 == 0) goto LAB_02ba434c;
          lVar8 = *(long *)(param_1 + 0x30);
          *(undefined4 *)(lVar9 + 0x14) = 0;
          *(int *)(lVar9 + 0x18) = iVar6;
          if (lVar8 == 0) goto LAB_02ba434c;
          if (*(uint *)(lVar8 + 0x18) <= uVar17) goto LAB_02ba4350;
          lVar9 = *(long *)(lVar8 + lVar11 * 8);
          if (lVar9 == 0) goto LAB_02ba434c;
          iVar6 = iVar6 * 3;
          *(undefined4 *)(lVar9 + 0x14) = 0;
        }
        uVar12 = *(uint *)(lVar5 + 0x18);
        uVar7 = (ulong)uVar12;
        *(int *)(lVar9 + 0x18) = iVar6;
        lVar9 = lVar11 + -3;
        lVar11 = lVar11 + 1;
        iVar13 = iVar13 + 0x1e;
        iVar14 = iVar14 + 10;
        iVar15 = iVar15 + 0x28;
        iVar16 = iVar16 + 0x14;
      } while (lVar9 < (int)uVar12);
    }
    return;
  }
LAB_02ba434c:
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

