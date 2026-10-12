/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b5d6f8, Ghidra VA 02c5d6f8. */

void Fish_manager_FreeGacha_Reload(long param_1)

{
  undefined *puVar1;
  undefined *puVar2;
  undefined8 uVar3;
  undefined8 uVar4;
  ulong uVar5;
  
  puVar1 = PTR_DAT_05e597d0;
  if ((bRam000000000625c204 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e597d0);
    func_0x029f5a50(PTR_DAT_05e5d3c0);
    func_0x029f5a50(PTR_DAT_05e63808);
    bRam000000000625c204 = 1;
  }
  puVar2 = PTR_DAT_05e5d3c0;
  if (*(int *)(*(long *)puVar1 + 0xe4) == 0) {
    func_0x029f5bd0();
  }
  uVar3 = DateTime_get_Date_0x6000610(param_1 + 0x70,0);
  if (*(int *)(*(long *)puVar2 + 0xe4) == 0) {
    func_0x029f5bd0(*(long *)puVar2);
  }
  uVar4 = Time_manager_get_Today_0x600057a(0);
  uVar5 = DateTime_op_GreaterThanOrEqual_0x6000640(uVar3,uVar4,0);
  puVar1 = PTR_DAT_05e63808;
  if ((uVar5 & 1) == 0) {
    if (*(int *)(*(long *)puVar2 + 0xe4) == 0) {
      func_0x029f5bd0();
    }
    uVar5 = Time_manager_CanRolloverDaily_0x6000567(*(undefined8 *)puVar1,3,0);
    if ((uVar5 & 1) != 0) {
      if (*(int *)(*(long *)puVar2 + 0xe4) == 0) {
        func_0x029f5bd0();
      }
      Time_manager_RecordGain_0x6000576(*(undefined8 *)puVar1,0);
      uVar3 = Time_manager_get_Today_0x600057a(0);
      *(undefined4 *)(param_1 + 0x78) = 0;
      *(undefined8 *)(param_1 + 0x70) = uVar3;
    }
  }
  return;
}

