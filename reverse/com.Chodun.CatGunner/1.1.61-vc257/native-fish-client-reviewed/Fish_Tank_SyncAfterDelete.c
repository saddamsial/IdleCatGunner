/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b5fbe0, Ghidra VA 02c5fbe0. */

void Fish_Tank_SyncAfterDelete(long param_1)

{
  undefined *puVar1;
  undefined *puVar2;
  undefined *puVar3;
  undefined8 uVar4;
  undefined8 uVar5;
  long lVar6;
  long *plVar7;
  undefined4 uStack_38;
  undefined4 uStack_34;
  
  puVar2 = PTR_DAT_05e5dd38;
  if ((bRam000000000625c241 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e5dd38);
    func_0x029f5a50(PTR_DAT_05e62fe8);
    func_0x029f5a50(PTR_DAT_05e63838);
    bRam000000000625c241 = 1;
  }
  Fish_Tank_ClearPendingDelete(param_1);
  Fish_Tank_SyncInventoryIndices(param_1);
  puVar3 = PTR_DAT_05e63838;
  puVar1 = PTR_DAT_05e58a10;
  if ((**(long **)(*(long *)puVar2 + 0xb8) != 0) &&
     (lVar6 = *(long *)(**(long **)(*(long *)puVar2 + 0xb8) + 0x90), lVar6 != 0)) {
    uStack_34 = *(undefined4 *)(lVar6 + 0x18);
    plVar7 = *(long **)(param_1 + 0x48);
    uVar4 = func_0x029f5bd8(*(undefined8 *)(PTR_DAT_05e58a10 + 0x48),&uStack_34);
    uStack_38 = 0x14;
    uVar5 = func_0x029f5bd8(*(undefined8 *)(puVar1 + 0x48),&uStack_38);
    uVar4 = String_Format_0x600029d(*(undefined8 *)puVar3,uVar4,uVar5,0);
    if (plVar7 != (long *)0x0) {
      (**(code **)(*plVar7 + 0x558))(plVar7,uVar4,*(undefined8 *)(*plVar7 + 0x560));
      Fish_Tank_StartAutoMergeChain(param_1);
      return;
    }
  }
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

