/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b7421c, Ghidra VA 02c7421c. */

void Gun_Item_MoveToClosestSlot(undefined1 param_1 [16],float param_2,long param_3)

{
  undefined *puVar1;
  undefined *puVar2;
  undefined *puVar3;
  long lVar4;
  ulong uVar5;
  float fVar6;
  int iVar7;
  ulong uVar8;
  long lVar9;
  ulong uVar10;
  long lVar11;
  float fVar12;
  float fVar13;
  float fVar14;
  
  puVar3 = PTR_DAT_05e5dd40;
  if ((bRam000000000625c2d9 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e5be98);
    func_0x029f5a50(PTR_DAT_05e63aa8);
    func_0x029f5a50(PTR_DAT_05e5dd40);
    bRam000000000625c2d9 = 1;
  }
  puVar2 = PTR_DAT_05e5be98;
  puVar1 = PTR_DAT_05e59000;
  if (((**(long **)(*(long *)puVar3 + 0xb8) != 0) &&
      (**(long **)(*(long *)PTR_DAT_05e63aa8 + 0xb8) != 0)) &&
     (lVar9 = *(long *)(**(long **)(*(long *)puVar3 + 0xb8) + 0x40), lVar9 != 0)) {
    if ((int)*(ulong *)(lVar9 + 0x18) < 1) {
      iVar7 = -1;
    }
    else {
      uVar10 = 0;
      lVar11 = *(long *)(**(long **)(*(long *)PTR_DAT_05e63aa8 + 0xb8) + 0x28);
      uVar5 = *(ulong *)(lVar9 + 0x18) & 0xffffffff;
      fVar6 = 3.4028235e+38;
      uVar8 = 0xffffffff;
      do {
        iVar7 = (int)uVar8;
        if (lVar11 == 0) goto LAB_02c74484;
        if ((long)(int)*(uint *)(lVar11 + 0x18) <= (long)uVar10) break;
        if (uVar5 <= uVar10) {
LAB_02c74488:
                    /* WARNING: Subroutine does not return */
          Throw_Index_Wrapper();
        }
        if ((*(int *)(lVar9 + 0x20 + uVar10 * 4) == -1) || (uVar10 == *(uint *)(param_3 + 0xdc))) {
          if (*(uint *)(lVar11 + 0x18) <= uVar10) goto LAB_02c74488;
          lVar4 = *(long *)(lVar11 + 0x20 + uVar10 * 8);
          if (lVar4 == 0) goto LAB_02c74484;
          lVar4 = func_0x02fe5f2c(lVar4,*(undefined8 *)puVar2);
          if ((*(long *)(param_3 + 0x98) == 0) ||
             (fVar12 = (float)RectTransform_get_anchoredPosition_0x6000f2b
                                        (*(long *)(param_3 + 0x98),0), lVar4 == 0))
          goto LAB_02c74484;
          fVar14 = param_2;
          fVar13 = (float)RectTransform_get_anchoredPosition_0x6000f2b(lVar4,0);
          if (cRam000000000625c2a2 == '\0') {
            func_0x029f5a50(puVar1);
            cRam000000000625c2a2 = '\x01';
          }
          if (*(int *)(*(long *)puVar1 + 0xe4) == 0) {
            func_0x029f5bd0();
          }
          fVar14 = param_2 - fVar14;
          param_2 = (fVar12 - fVar13) * (fVar12 - fVar13);
          fVar12 = SQRT(param_2 + fVar14 * fVar14);
          if (fVar12 < fVar6) {
            uVar8 = uVar10 & 0xffffffff;
            fVar6 = fVar12;
          }
        }
        iVar7 = (int)uVar8;
        uVar5 = (ulong)*(uint *)(lVar9 + 0x18);
        uVar10 = uVar10 + 1;
      } while ((long)uVar10 < (long)(int)*(uint *)(lVar9 + 0x18));
    }
    puVar3 = PTR_DAT_05e5dd40;
    if ((iVar7 != -1) && (iVar7 != *(int *)(param_3 + 0xdc))) {
      if (**(long **)(*(long *)PTR_DAT_05e5dd40 + 0xb8) == 0) goto LAB_02c74484;
      uVar10 = Gun_manager_Is_AdRewardSlot_0x6000a84
                         (**(long **)(*(long *)PTR_DAT_05e5dd40 + 0xb8),*(int *)(param_3 + 0xdc),0);
      lVar9 = **(long **)(*(long *)puVar3 + 0xb8);
      if ((uVar10 & 1) == 0) {
        if (lVar9 == 0) goto LAB_02c74484;
      }
      else {
        if (lVar9 == 0) goto LAB_02c74484;
        *(int *)(lVar9 + 0xc0) = iVar7;
      }
      Gun_manager_Owned_Move(lVar9,*(undefined4 *)(param_3 + 0xdc),iVar7,0);
    }
    if (**(long **)(*(long *)PTR_DAT_05e63aa8 + 0xb8) != 0) {
      Gun_Item_List_ReloadList_0x6000b63();
      return;
    }
  }
LAB_02c74484:
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

