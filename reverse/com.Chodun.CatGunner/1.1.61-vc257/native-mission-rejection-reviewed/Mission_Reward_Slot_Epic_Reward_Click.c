/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b04978, Ghidra VA 02c04978. */

void Mission_Reward_Slot_Epic_Reward_Click(long param_1)

{
  undefined *puVar1;
  long lVar2;
  
  puVar1 = PTR_DAT_05e5dd50;
  if ((bRam000000000625be63 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e5dd50);
    bRam000000000625be63 = 1;
  }
  lVar2 = *(long *)puVar1;
  if (*(int *)(lVar2 + 0xe4) == 0) {
    func_0x029f5bd0();
    lVar2 = *(long *)puVar1;
  }
  lVar2 = *(long *)(*(long *)(lVar2 + 0xb8) + 8);
  if (lVar2 != 0) {
    Mission_manager_Reward_Get(lVar2,1,*(undefined4 *)(param_1 + 0x20),0);
    return;
  }
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

