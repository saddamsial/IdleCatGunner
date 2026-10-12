/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b7000c, Ghidra VA 02c7000c. */

byte Gun_Info_UI_Can_Toggle_Pause(long param_1)

{
  byte bVar1;
  
  if ((bRam000000000625c2bc & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e5dd40);
    bRam000000000625c2bc = 1;
  }
  if (*(int *)(param_1 + 0x88) == 1) {
    if (**(long **)(*(long *)PTR_DAT_05e5dd40 + 0xb8) == 0) {
                    /* WARNING: Subroutine does not return */
      Throw_NullReference_Wrapper();
    }
    bVar1 = Gun_manager_Is_AdRewardSlot_0x6000a84
                      (**(long **)(*(long *)PTR_DAT_05e5dd40 + 0xb8),*(undefined4 *)(param_1 + 0x90)
                       ,0);
    bVar1 = bVar1 ^ 1;
  }
  else {
    bVar1 = *(int *)(param_1 + 0x88) == 2;
  }
  return bVar1 & 1;
}

