/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b5e88c, Ghidra VA 02c5e88c. */

void Fish_Tank_SpawnFish(long param_1,undefined4 param_2)

{
  undefined *puVar1;
  undefined *puVar2;
  long lVar3;
  ulong uVar4;
  undefined8 uVar5;
  undefined8 uVar6;
  long lVar7;
  long *plVar8;
  undefined4 uStack_28;
  undefined4 uStack_24;
  
  puVar2 = PTR_DAT_05e591c0;
  if ((bRam000000000625c235 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e5dd38);
    func_0x029f5a50(PTR_DAT_05e62fe8);
    func_0x029f5a50(PTR_DAT_05e591c0);
    func_0x029f5a50(PTR_DAT_05e63838);
    bRam000000000625c235 = 1;
  }
  lVar3 = Fish_Tank_GetInactiveItem(param_1);
  if (*(int *)(*(long *)puVar2 + 0xe4) == 0) {
    func_0x029f5bd0(*(long *)puVar2);
  }
  uVar4 = Object_op_Equality_0x6000dec(lVar3,0,0);
  puVar2 = PTR_DAT_05e5dd38;
  if ((uVar4 & 1) != 0) {
    return;
  }
  if (((**(long **)(*(long *)PTR_DAT_05e5dd38 + 0xb8) != 0) &&
      (lVar7 = *(long *)(**(long **)(*(long *)PTR_DAT_05e5dd38 + 0xb8) + 0x90), lVar7 != 0)) &&
     (lVar3 != 0)) {
    Fish_Item_Reload(lVar3,param_2,*(int *)(lVar7 + 0x18) + -1);
    Fish_Tank_FindEmptyPosition(param_1,lVar3);
    Fish_Item_SetPosition(lVar3);
    Fish_Tank_SortHierarchyByGrade(param_1);
    puVar1 = PTR_DAT_05e58a10;
    if ((**(long **)(*(long *)puVar2 + 0xb8) != 0) &&
       (lVar3 = *(long *)(**(long **)(*(long *)puVar2 + 0xb8) + 0x90), lVar3 != 0)) {
      uStack_24 = *(undefined4 *)(lVar3 + 0x18);
      plVar8 = *(long **)(param_1 + 0x48);
      uVar5 = func_0x029f5bd8(*(undefined8 *)(PTR_DAT_05e58a10 + 0x48),&uStack_24);
      uStack_28 = 0x14;
      uVar6 = func_0x029f5bd8(*(undefined8 *)(puVar1 + 0x48),&uStack_28);
      uVar5 = String_Format_0x600029d(*(undefined8 *)PTR_DAT_05e63838,uVar5,uVar6,0);
      if (plVar8 != (long *)0x0) {
        (**(code **)(*plVar8 + 0x558))(plVar8,uVar5,*(undefined8 *)(*plVar8 + 0x560));
        return;
      }
    }
  }
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

