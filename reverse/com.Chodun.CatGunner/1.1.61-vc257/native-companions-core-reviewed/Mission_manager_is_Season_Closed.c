/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2aa48ac, Ghidra VA 02ba48ac. */

undefined8 Mission_manager_is_Season_Closed(long param_1)

{
  undefined *puVar1;
  int iVar2;
  ulong uVar3;
  undefined8 uVar4;
  undefined8 uVar5;
  
  if ((bRam000000000625ba3f & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e597d0);
    func_0x029f5a50(PTR_DAT_05e5d3c0);
    func_0x029f5a50(PTR_DAT_05e5e728);
    bRam000000000625ba3f = 1;
  }
  puVar1 = PTR_DAT_05e5d3c0;
  if (*(char *)(param_1 + 0x65) == '\0') {
    uVar4 = 1;
  }
  else {
    if (*(int *)(*(long *)PTR_DAT_05e5d3c0 + 0xe4) == 0) {
      func_0x029f5bd0();
    }
    uVar3 = Time_manager_get_CanGrantTimedReward_0x6000572(0);
    if ((uVar3 & 1) != 0) {
      if (*(int *)(*(long *)puVar1 + 0xe4) == 0) {
        func_0x029f5bd0();
      }
      iVar2 = Time_manager_PendingCount_0x6000565(*(undefined8 *)PTR_DAT_05e5e728,0);
      if (iVar2 < 1) {
        if (*(int *)(*(long *)puVar1 + 0xe4) == 0) {
          func_0x029f5bd0();
        }
        uVar4 = Time_manager_get_Today_0x600057a(0);
        if (*(int *)(*(long *)PTR_DAT_05e597d0 + 0xe4) == 0) {
          func_0x029f5bd0(*(long *)PTR_DAT_05e597d0);
        }
        uVar5 = DateTime_get_Date_0x6000610(param_1 + 0x68,0);
        uVar4 = DateTime_op_GreaterThanOrEqual_0x6000640(uVar4,uVar5,0);
        return uVar4;
      }
    }
    uVar4 = 0;
  }
  return uVar4;
}

