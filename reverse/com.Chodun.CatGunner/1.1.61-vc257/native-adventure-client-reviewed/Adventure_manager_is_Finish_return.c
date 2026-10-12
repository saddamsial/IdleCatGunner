/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b2e56c, Ghidra VA 02c2e56c. */

void Adventure_manager_is_Finish_return(undefined8 param_1,undefined4 param_2,undefined4 param_3)

{
  undefined *puVar1;
  undefined8 uVar2;
  long lVar3;
  
  puVar1 = PTR_DAT_05e5a180;
  if ((bRam000000000625c00c & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e5a180);
    bRam000000000625c00c = 1;
  }
  uVar2 = Adventure_manager_Adventure_Remain_Duration_return(param_1,param_2,param_3);
  lVar3 = *(long *)puVar1;
  if (*(int *)(lVar3 + 0xe4) == 0) {
    func_0x029f5bd0(lVar3);
    lVar3 = *(long *)puVar1;
  }
  TimeSpan_op_LessThanOrEqual_0x6000a96(uVar2,**(undefined8 **)(lVar3 + 0xb8),0);
  return;
}

