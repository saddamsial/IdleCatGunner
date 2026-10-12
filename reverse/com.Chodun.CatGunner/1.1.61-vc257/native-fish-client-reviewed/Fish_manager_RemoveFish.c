/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b5f360, Ghidra VA 02c5f360. */

void Fish_manager_RemoveFish(long param_1,int param_2)

{
  long lVar1;
  
  if ((bRam000000000625c20d & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e63840);
    func_0x029f5a50(PTR_DAT_05e62fe8);
    bRam000000000625c20d = 1;
  }
  if (-1 < param_2) {
    lVar1 = *(long *)(param_1 + 0x90);
    if (lVar1 == 0) {
                    /* WARNING: Subroutine does not return */
      Throw_NullReference_Wrapper();
    }
    if (param_2 < *(int *)(lVar1 + 0x18)) {
      func_0x044f9164(lVar1,param_2,*(undefined8 *)PTR_DAT_05e63840);
      lVar1 = *(long *)(param_1 + 0xa8);
      if (lVar1 != 0) {
        (**(code **)(lVar1 + 0x18))(*(undefined8 *)(lVar1 + 0x40),*(undefined8 *)(lVar1 + 0x28));
      }
      Fish_manager_UpdateStatTexts(param_1);
      Fish_manager_RefreshCatStats();
      return;
    }
  }
  return;
}

