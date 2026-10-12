/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b5ef70, Ghidra VA 02c5ef70. */

void Fish_Tank_ReloadAll(long param_1)

{
  undefined *puVar1;
  undefined *puVar2;
  undefined4 uVar3;
  long lVar4;
  ulong uVar5;
  undefined8 uVar6;
  undefined8 uVar7;
  long lVar8;
  long lVar9;
  long *plVar10;
  uint uVar11;
  undefined4 uStack_48;
  undefined4 uStack_44;
  
  if ((bRam000000000625c234 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e5dd38);
    func_0x029f5a50(PTR_DAT_05e62fe8);
    func_0x029f5a50(PTR_DAT_05e63128);
    func_0x029f5a50(PTR_DAT_05e63838);
    bRam000000000625c234 = 1;
  }
  lVar4 = Component_get_gameObject_0x6000c83(param_1,0);
  if (lVar4 != 0) {
    uVar5 = GameObject_get_activeInHierarchy_0x6000d00(lVar4,0);
    if ((uVar5 & 1) == 0) {
      *(undefined1 *)(param_1 + 0x50) = 1;
      return;
    }
    lVar4 = *(long *)(param_1 + 0x20);
    if (lVar4 != 0) {
      lVar9 = 0;
      do {
        puVar1 = PTR_DAT_05e63128;
        puVar2 = PTR_DAT_05e5dd38;
        if ((int)*(uint *)(lVar4 + 0x18) <= (int)(uint)lVar9) {
          if ((**(long **)(*(long *)PTR_DAT_05e5dd38 + 0xb8) != 0) &&
             (lVar4 = *(long *)(**(long **)(*(long *)PTR_DAT_05e5dd38 + 0xb8) + 0x90), lVar4 != 0))
          {
            if (*(int *)(lVar4 + 0x18) < 1) goto LAB_02c5f0f8;
            lVar9 = 4;
            goto LAB_02c5f06c;
          }
          break;
        }
        if (*(uint *)(lVar4 + 0x18) <= (uint)lVar9) goto LAB_02c5f1ac;
        if (*(long *)(lVar4 + lVar9 * 8 + 0x20) == 0) break;
        Fish_Item_Deactivate();
        lVar4 = *(long *)(param_1 + 0x20);
        lVar9 = lVar9 + 1;
      } while (lVar4 != 0);
    }
  }
  goto LAB_02c5f024;
LAB_02c5f06c:
  do {
    lVar8 = *(long *)(param_1 + 0x20);
    if (lVar8 == 0) goto LAB_02c5f024;
    uVar5 = lVar9 - 4;
    uVar11 = (uint)uVar5;
    if ((int)*(uint *)(lVar8 + 0x18) <= (int)uVar11) break;
    if (*(uint *)(lVar8 + 0x18) <= uVar11) {
LAB_02c5f1ac:
                    /* WARNING: Subroutine does not return */
      Throw_Index_Wrapper();
    }
    lVar8 = *(long *)(lVar8 + lVar9 * 8);
    uVar3 = func_0x044f7718(lVar4,uVar5 & 0xffffffff,*(undefined8 *)puVar1);
    if (lVar8 == 0) goto LAB_02c5f024;
    Fish_Item_Reload(lVar8,uVar3,uVar5 & 0xffffffff);
    lVar8 = *(long *)(param_1 + 0x20);
    if (lVar8 == 0) goto LAB_02c5f024;
    if (*(uint *)(lVar8 + 0x18) <= uVar11) goto LAB_02c5f1ac;
    lVar8 = *(long *)(lVar8 + lVar9 * 8);
    Fish_Tank_FindEmptyPosition(param_1,lVar8);
    if (lVar8 == 0) goto LAB_02c5f024;
    Fish_Item_SetPosition(lVar8);
    lVar9 = lVar9 + 1;
  } while ((int)lVar9 + -4 < *(int *)(lVar4 + 0x18));
LAB_02c5f0f8:
  Fish_Tank_SortHierarchyByGrade(param_1);
  puVar1 = PTR_DAT_05e58a10;
  if ((**(long **)(*(long *)puVar2 + 0xb8) != 0) &&
     (lVar4 = *(long *)(**(long **)(*(long *)puVar2 + 0xb8) + 0x90), lVar4 != 0)) {
    uStack_44 = *(undefined4 *)(lVar4 + 0x18);
    plVar10 = *(long **)(param_1 + 0x48);
    uVar6 = func_0x029f5bd8(*(undefined8 *)(PTR_DAT_05e58a10 + 0x48),&uStack_44);
    uStack_48 = 0x14;
    uVar7 = func_0x029f5bd8(*(undefined8 *)(puVar1 + 0x48),&uStack_48);
    uVar6 = String_Format_0x600029d(*(undefined8 *)PTR_DAT_05e63838,uVar6,uVar7,0);
    if (plVar10 != (long *)0x0) {
      (**(code **)(*plVar10 + 0x558))(plVar10,uVar6,*(undefined8 *)(*plVar10 + 0x560));
      Fish_Tank_StartAutoMergeChain(param_1);
      return;
    }
  }
LAB_02c5f024:
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

