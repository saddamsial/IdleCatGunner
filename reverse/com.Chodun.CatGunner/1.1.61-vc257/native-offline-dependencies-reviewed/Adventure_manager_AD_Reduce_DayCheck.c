/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b2ef68, Ghidra VA 02c2ef68. */

void Adventure_manager_AD_Reduce_DayCheck(long param_1)

{
  undefined *puVar1;
  undefined *puVar2;
  undefined8 uVar3;
  ulong uVar4;
  undefined8 uStack_28;
  
  puVar2 = PTR_DAT_05e5d3c0;
  if ((bRam000000000625c017 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e59760);
    func_0x029f5a50(PTR_DAT_05e597d0);
    func_0x029f5a50(PTR_DAT_05e5d3c0);
    func_0x029f5a50(PTR_DAT_05e5d3e0);
    bRam000000000625c017 = 1;
  }
  puVar1 = PTR_DAT_05e59760;
  uStack_28 = 0;
  if (*(int *)(*(long *)puVar2 + 0xe4) == 0) {
    func_0x029f5bd0();
  }
  puVar2 = PTR_DAT_05e597d0;
  uStack_28 = Time_manager_get_Now_0x6000579();
  if (*(int *)(*(long *)puVar1 + 0xe4) == 0) {
    func_0x029f5bd0(*(long *)puVar1);
  }
  puVar1 = PTR_DAT_05e5d3e0;
  uVar3 = CultureInfo_get_InvariantCulture_0x6002ba4(0);
  if (*(int *)(*(long *)puVar2 + 0xe4) == 0) {
    func_0x029f5bd0(*(long *)puVar2);
  }
  uVar3 = DateTime_ToString_0x6000631(&uStack_28,*(undefined8 *)puVar1,uVar3,0);
  uVar4 = String_op_Equality_0x600025a(*(undefined8 *)(param_1 + 0x80),uVar3,0);
  if ((uVar4 & 1) == 0) {
    *(undefined8 *)(param_1 + 0x80) = uVar3;
    Managed_WriteBarrier((undefined8 *)(param_1 + 0x80),uVar3);
    *(undefined4 *)(param_1 + 0x78) = 0;
  }
  return;
}

