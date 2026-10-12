/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b637bc, Ghidra VA 02c637bc. */

undefined8
Fish_Tank_FuseItems(undefined1 param_1 [16],undefined4 param_2,long param_3,long param_4,
                   long param_5)

{
  undefined *puVar1;
  undefined *puVar2;
  int iVar3;
  ulong uVar4;
  long lVar5;
  undefined8 uVar6;
  undefined8 uVar7;
  long lVar8;
  long *plVar9;
  undefined4 uVar10;
  undefined4 uStack_38;
  undefined4 uStack_34;
  
  puVar1 = PTR_DAT_05e591c0;
  if ((bRam000000000625c239 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e5dd38);
    func_0x029f5a50(PTR_DAT_05e62fe8);
    func_0x029f5a50(PTR_DAT_05e591c0);
    func_0x029f5a50(PTR_DAT_05e63838);
    bRam000000000625c239 = 1;
  }
  if (*(int *)(*(long *)puVar1 + 0xe4) == 0) {
    func_0x029f5bd0();
  }
  uVar4 = Object_op_Equality_0x6000dec(param_4,0,0);
  if ((uVar4 & 1) == 0) {
    if (*(int *)(*(long *)puVar1 + 0xe4) == 0) {
      func_0x029f5bd0();
    }
    uVar4 = Object_op_Equality_0x6000dec(param_5,0,0);
    if ((uVar4 & 1) == 0) {
      if (*(int *)(*(long *)puVar1 + 0xe4) == 0) {
        func_0x029f5bd0();
      }
      uVar4 = Object_op_Equality_0x6000dec(param_4,param_5,0);
      puVar2 = PTR_DAT_05e5dd38;
      if ((uVar4 & 1) == 0) {
        if (param_4 != 0) {
          if (*(char *)(param_4 + 0x48) == '\0') {
            return 0;
          }
          if (param_5 != 0) {
            if (*(char *)(param_5 + 0x48) == '\0') {
              return 0;
            }
            if (**(long **)(*(long *)PTR_DAT_05e5dd38 + 0xb8) != 0) {
              iVar3 = Fish_manager_TryFusion
                                (**(long **)(*(long *)PTR_DAT_05e5dd38 + 0xb8),
                                 *(undefined4 *)(param_4 + 0x44),*(undefined4 *)(param_5 + 0x44));
              if (iVar3 < 0) {
                return 0;
              }
              uVar10 = Fish_Item_GetPosition(param_5);
              Fish_Item_Deactivate(param_4);
              Fish_Item_Deactivate(param_5);
              Fish_Tank_SyncInventoryIndices(param_3);
              lVar5 = Fish_Tank_GetInactiveItem(param_3);
              if (*(int *)(*(long *)puVar1 + 0xe4) == 0) {
                func_0x029f5bd0(*(long *)puVar1);
              }
              uVar4 = Object_op_Inequality_0x6000ded(lVar5,0,0);
              if ((uVar4 & 1) != 0) {
                lVar8 = **(long **)(*(long *)puVar2 + 0xb8);
                if (((lVar8 == 0) || (lVar8 = *(long *)(lVar8 + 0x90), lVar8 == 0)) || (lVar5 == 0))
                goto LAB_02c63a34;
                Fish_Item_Reload(lVar5,iVar3,*(int *)(lVar8 + 0x18) + -1);
                Fish_Item_SetPosition(uVar10,param_2,lVar5);
              }
              Fish_Tank_SortHierarchyByGrade(param_3);
              puVar1 = PTR_DAT_05e58a10;
              lVar5 = **(long **)(*(long *)puVar2 + 0xb8);
              if ((lVar5 != 0) && (lVar5 = *(long *)(lVar5 + 0x90), lVar5 != 0)) {
                uStack_34 = *(undefined4 *)(lVar5 + 0x18);
                plVar9 = *(long **)(param_3 + 0x48);
                uVar6 = func_0x029f5bd8(*(undefined8 *)(PTR_DAT_05e58a10 + 0x48),&uStack_34);
                uStack_38 = 0x14;
                uVar7 = func_0x029f5bd8(*(undefined8 *)(puVar1 + 0x48),&uStack_38);
                uVar6 = String_Format_0x600029d(*(undefined8 *)PTR_DAT_05e63838,uVar6,uVar7,0);
                if (plVar9 != (long *)0x0) {
                  (**(code **)(*plVar9 + 0x558))(plVar9,uVar6,*(undefined8 *)(*plVar9 + 0x560));
                  Fish_Tank_StartAutoMergeChain(param_3);
                  return 1;
                }
              }
            }
          }
        }
LAB_02c63a34:
                    /* WARNING: Subroutine does not return */
        Throw_NullReference_Wrapper();
      }
    }
  }
  return 0;
}

