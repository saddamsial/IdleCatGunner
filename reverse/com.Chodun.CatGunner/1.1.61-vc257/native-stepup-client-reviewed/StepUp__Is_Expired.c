/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2ba2a04, Ghidra VA 02ca2a04. */

undefined8 StepUp__Is_Expired(undefined8 param_1)

{
  undefined *puVar1;
  ulong uVar2;
  undefined8 uVar3;
  long lVar4;
  
  if ((bRam000000000625c498 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e5a180);
    bRam000000000625c498 = 1;
  }
  uVar2 = StepUp__get_is_Started(param_1);
  puVar1 = PTR_DAT_05e5a180;
  if ((uVar2 & 1) != 0) {
    uVar3 = StepUp__Remain_Duration(param_1);
    lVar4 = *(long *)puVar1;
    if (*(int *)(lVar4 + 0xe4) == 0) {
      func_0x029f5bd0(lVar4);
      lVar4 = *(long *)puVar1;
    }
    uVar3 = TimeSpan_op_LessThanOrEqual_0x6000a96(uVar3,**(undefined8 **)(lVar4 + 0xb8),0);
    return uVar3;
  }
  return 0;
}

