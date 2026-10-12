/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b633b4, Ghidra VA 02c633b4. */

void Fish_Tank_SortHierarchyByGrade(long param_1)

{
  uint uVar1;
  undefined *puVar2;
  undefined *puVar3;
  undefined *puVar4;
  undefined *puVar5;
  long lVar6;
  long *plVar7;
  long lVar8;
  long lVar9;
  undefined8 *puVar10;
  long lVar11;
  int iVar12;
  uint uVar13;
  undefined8 uVar14;
  
  puVar3 = PTR_DAT_05e638b0;
  puVar2 = PTR_DAT_05e638a8;
  if ((bRam000000000625c236 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e638b8);
    func_0x029f5a50(PTR_DAT_05e638c0);
    func_0x029f5a50(PTR_DAT_05e638c8);
    func_0x029f5a50(PTR_DAT_05e638b0);
    func_0x029f5a50(PTR_DAT_05e638d0);
    func_0x029f5a50(PTR_DAT_05e638d8);
    func_0x029f5a50(PTR_DAT_05e638a8);
    func_0x029f5a50(PTR_DAT_05e638e0);
    func_0x029f5a50(PTR_DAT_05e638e8);
    bRam000000000625c236 = 1;
  }
  lVar6 = func_0x029f5cec(*(undefined8 *)puVar2);
  func_0x0452c340(lVar6,*(undefined8 *)puVar3);
  puVar5 = PTR_DAT_05e638e8;
  puVar4 = PTR_DAT_05e638d8;
  puVar3 = PTR_DAT_05e638c8;
  puVar2 = PTR_DAT_05e638c0;
  lVar8 = *(long *)(param_1 + 0x20);
  if (lVar8 != 0) {
    uVar13 = 0;
    do {
      if ((int)*(uint *)(lVar8 + 0x18) <= (int)uVar13) {
        lVar8 = *(long *)puVar5;
        if (*(int *)(lVar8 + 0xe4) == 0) {
          func_0x029f5bd0();
          lVar8 = *(long *)puVar5;
        }
        puVar10 = *(undefined8 **)(lVar8 + 0xb8);
        lVar9 = puVar10[1];
        if (lVar9 == 0) {
          if (*(int *)(lVar8 + 0xe4) == 0) {
            func_0x029f5bd0();
            puVar10 = *(undefined8 **)(*(long *)puVar5 + 0xb8);
          }
          uVar14 = *puVar10;
          lVar9 = func_0x029f5cec(*(undefined8 *)PTR_DAT_05e638b8);
          func_0x03cf8804(lVar9,uVar14,*(undefined8 *)PTR_DAT_05e638e0,0);
          plVar7 = (long *)(*(long *)(*(long *)puVar5 + 0xb8) + 8);
          *plVar7 = lVar9;
          Managed_WriteBarrier(plVar7,lVar9);
        }
        if (lVar6 != 0) {
          func_0x0452e640(lVar6,lVar9,*(undefined8 *)puVar3);
          if (*(int *)(lVar6 + 0x18) < 1) goto LAB_02c635fc;
          iVar12 = 0;
          goto LAB_02c635c0;
        }
        break;
      }
      if (*(uint *)(lVar8 + 0x18) <= uVar13) goto LAB_02c63664;
      lVar8 = *(long *)(lVar8 + (long)(int)uVar13 * 8 + 0x20);
      if (lVar8 == 0) break;
      if (*(char *)(lVar8 + 0x48) != '\0') {
        if (lVar6 == 0) break;
        lVar9 = *(long *)(lVar6 + 0x10);
        lVar11 = *(long *)puVar2;
        *(int *)(lVar6 + 0x1c) = *(int *)(lVar6 + 0x1c) + 1;
        if (lVar9 == 0) break;
        uVar1 = *(uint *)(lVar6 + 0x18);
        if (uVar1 < *(uint *)(lVar9 + 0x18)) {
          *(uint *)(lVar6 + 0x18) = uVar1 + 1;
          *(long *)(lVar9 + (long)(int)uVar1 * 8 + 0x20) = lVar8;
          Managed_WriteBarrier();
        }
        else {
          func_0x0452cba8(lVar6,lVar8,
                          *(undefined8 *)(*(long *)(*(long *)(lVar11 + 0x20) + 0xc0) + 0x70));
        }
      }
      lVar8 = *(long *)(param_1 + 0x20);
      uVar13 = uVar13 + 1;
    } while (lVar8 != 0);
  }
  goto LAB_02c6364c;
  while( true ) {
    Transform_SetSiblingIndex_0x6000f7f(lVar8,iVar12,0);
    iVar12 = iVar12 + 1;
    if (*(int *)(lVar6 + 0x18) <= iVar12) break;
LAB_02c635c0:
    lVar8 = func_0x0452c8d8(lVar6,iVar12,*(undefined8 *)puVar4);
    if ((lVar8 == 0) || (lVar8 = Component_get_transform_0x6000c82(lVar8,0), lVar8 == 0))
    goto LAB_02c6364c;
  }
LAB_02c635fc:
  lVar6 = *(long *)(param_1 + 0x20);
  if (lVar6 != 0) {
    uVar13 = 0;
    do {
      if ((int)*(uint *)(lVar6 + 0x18) <= (int)uVar13) {
        return;
      }
      if (*(uint *)(lVar6 + 0x18) <= uVar13) {
LAB_02c63664:
                    /* WARNING: Subroutine does not return */
        Throw_Index_Wrapper();
      }
      lVar8 = *(long *)(lVar6 + (long)(int)uVar13 * 8 + 0x20);
      if (lVar8 == 0) break;
      if (*(char *)(lVar8 + 0x48) == '\0') {
        lVar6 = Component_get_transform_0x6000c82(lVar8,0);
        if (lVar6 == 0) break;
        Transform_SetAsLastSibling_0x6000f7e(lVar6,0);
        lVar6 = *(long *)(param_1 + 0x20);
      }
      uVar13 = uVar13 + 1;
    } while (lVar6 != 0);
  }
LAB_02c6364c:
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

