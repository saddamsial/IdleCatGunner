/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b09ea0, Ghidra VA 02c09ea0. */

void OfflineProgressSimulator__CheapestUpgradePrice_g__Check_32_0(int param_1,char *param_2)

{
  ulong uVar1;
  undefined8 uStack_40;
  undefined8 uStack_38;
  undefined8 uStack_30;
  undefined8 uStack_28;
  
  if ((bRam000000000625be90 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e62040);
    bRam000000000625be90 = 1;
  }
  uStack_38 = 0;
  uStack_40 = 0;
  uStack_28 = 0;
  uStack_30 = 0;
  if (param_1 < 10000) {
    if (*(int *)(*(long *)PTR_DAT_05e62040 + 0xe4) == 0) {
      func_0x029f5bd0();
    }
    OfflineProgressSimulator_GetPrice(&uStack_40,param_1);
    if ((*param_2 == '\0') ||
       (uVar1 = InfVal_op_LessThan_0x600007e(&uStack_40,param_2 + 8,0), (uVar1 & 1) != 0)) {
      *(undefined8 *)(param_2 + 0x10) = uStack_38;
      *(undefined8 *)(param_2 + 8) = uStack_40;
      *(undefined8 *)(param_2 + 0x20) = uStack_28;
      *(undefined8 *)(param_2 + 0x18) = uStack_30;
      Managed_WriteBarrier(param_2 + 8,0);
      *param_2 = '\x01';
    }
  }
  return;
}

