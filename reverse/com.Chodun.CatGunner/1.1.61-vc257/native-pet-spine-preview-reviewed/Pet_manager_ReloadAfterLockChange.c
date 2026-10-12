/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b7ceec, Ghidra VA 02c7ceec. */

void Pet_manager_ReloadAfterLockChange(long param_1)

{
  undefined *puVar1;
  ulong uVar2;
  undefined8 uVar3;
  
  puVar1 = PTR_DAT_05e591c0;
  if ((bRam000000000625c324 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e591c0);
    bRam000000000625c324 = 1;
  }
  uVar3 = *(undefined8 *)(param_1 + 0x88);
  if (*(int *)(*(long *)puVar1 + 0xe4) == 0) {
    func_0x029f5bd0();
  }
  uVar2 = Object_op_Inequality_0x6000ded(uVar3,0,0);
  if ((uVar2 & 1) != 0) {
    if (*(long *)(param_1 + 0x88) == 0) {
                    /* WARNING: Subroutine does not return */
      Throw_NullReference_Wrapper();
    }
    Pet_Item_List_ReloadList_0x6000c46(*(long *)(param_1 + 0x88),0);
  }
  Pet_manager_ReloadAllSlots_0x6000be3(param_1);
  Pet_manager_TryStartAutoMerge_0x6000be1(param_1);
  return;
}

