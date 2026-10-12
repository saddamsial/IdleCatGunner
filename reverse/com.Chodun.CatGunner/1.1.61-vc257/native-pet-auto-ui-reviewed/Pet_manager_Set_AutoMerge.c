/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b7d860, Ghidra VA 02c7d860. */

void Pet_manager_Set_AutoMerge(long param_1,byte param_2)

{
  ulong uVar1;
  undefined8 uVar2;
  
  if ((bRam000000000625c32c & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e591c0);
    bRam000000000625c32c = 1;
  }
  *(byte *)(param_1 + 0x60) = param_2 & 1;
  Pet_manager_AutoMerge_UI_Reload(param_1);
  uVar1 = Pet_manager_get_is_AutoMergeAble();
  if (((uVar1 & 1) != 0) && (*(char *)(param_1 + 0x60) != '\0')) {
    Pet_manager_TryStartAutoMerge_0x6000be1(param_1);
    return;
  }
  uVar2 = *(undefined8 *)(param_1 + 0x88);
  if (*(int *)(*(long *)PTR_DAT_05e591c0 + 0xe4) == 0) {
    func_0x029f5bd0();
  }
  uVar1 = Object_op_Inequality_0x6000ded(uVar2,0,0);
  if ((uVar1 & 1) != 0) {
    if (*(long *)(param_1 + 0x88) != 0) {
      Pet_Item_List_StopAutoMergeChain(*(long *)(param_1 + 0x88),0);
      return;
    }
                    /* WARNING: Subroutine does not return */
    Throw_NullReference_Wrapper();
  }
  return;
}

