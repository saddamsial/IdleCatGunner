/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b6796c, Ghidra VA 02c6796c. */

void Gun_manager_Start(long param_1)

{
  undefined *puVar1;
  ulong uVar2;
  undefined8 uVar3;
  
  puVar1 = PTR_DAT_05e591c0;
  if ((bRam000000000625c25f & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e591c0);
    bRam000000000625c25f = 1;
  }
  uVar3 = *(undefined8 *)(param_1 + 0x58);
  if (*(int *)(*(long *)puVar1 + 0xe4) == 0) {
    func_0x029f5bd0();
  }
  uVar2 = Object_op_Inequality_0x6000ded(uVar3,0,0);
  if ((uVar2 & 1) != 0) {
    if (*(long *)(param_1 + 0x58) == 0) {
                    /* WARNING: Subroutine does not return */
      Throw_NullReference_Wrapper();
    }
    Gun_Item_List_ReloadList_0x6000b63(*(long *)(param_1 + 0x58),0);
  }
  Gun_manager_ReloadAllSlots_0x6000a6a(param_1);
  Gun_manager_AutoMerge_UI_Reload_0x6000a69(param_1);
  Gun_manager_TryStartAutoMerge_0x6000a68(param_1);
  return;
}

