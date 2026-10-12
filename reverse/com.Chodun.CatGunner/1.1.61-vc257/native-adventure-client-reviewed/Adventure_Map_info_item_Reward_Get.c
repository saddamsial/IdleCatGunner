/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b35000, Ghidra VA 02c35000. */

void Adventure_Map_info_item_Reward_Get(long param_1)

{
  undefined *puVar1;
  long lVar2;
  
  puVar1 = PTR_DAT_05e5dd28;
  if ((bRam000000000625c05c & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e5dd28);
    bRam000000000625c05c = 1;
  }
  lVar2 = *(long *)puVar1;
  if (*(int *)(lVar2 + 0xe4) == 0) {
    func_0x029f5bd0();
    lVar2 = *(long *)puVar1;
  }
  lVar2 = *(long *)(*(long *)(lVar2 + 0xb8) + 0x10);
  if (lVar2 != 0) {
    Adventure_manager_Adventure_Reward_Get
              (lVar2,*(undefined4 *)(param_1 + 0x90),*(undefined4 *)(param_1 + 0x94),0);
    return;
  }
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

