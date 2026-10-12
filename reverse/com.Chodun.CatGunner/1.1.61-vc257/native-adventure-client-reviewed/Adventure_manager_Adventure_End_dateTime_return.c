/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b2cb98, Ghidra VA 02c2cb98. */

void Adventure_manager_Adventure_End_dateTime_return
               (undefined8 param_1,long param_2,undefined4 param_3)

{
  undefined *puVar1;
  int iVar2;
  
  if ((bRam000000000625c002 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e597d0);
    bRam000000000625c002 = 1;
  }
  puVar1 = PTR_DAT_05e597d0;
  if (param_2 != 0) {
    iVar2 = Adventure_manager_Adventure_Effective_Duration_return(param_1,param_3);
    if (*(int *)(*(long *)puVar1 + 0xe4) == 0) {
      func_0x029f5bd0(*(long *)puVar1);
    }
    DateTime_AddHours_0x60005fc((double)iVar2,param_2 + 0x18,0);
    return;
  }
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

