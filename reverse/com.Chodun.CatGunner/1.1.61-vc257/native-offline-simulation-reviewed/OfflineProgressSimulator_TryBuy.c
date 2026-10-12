/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b09d04, Ghidra VA 02c09d04. */

undefined8 OfflineProgressSimulator_TryBuy(int *param_1,undefined8 *param_2)

{
  int iVar1;
  ulong uVar2;
  undefined8 uStack_60;
  undefined8 uStack_58;
  undefined8 uStack_50;
  undefined8 uStack_48;
  undefined8 uStack_40;
  undefined8 uStack_38;
  undefined8 uStack_30;
  undefined8 uStack_28;
  
  if ((bRam000000000625be84 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e62040);
    bRam000000000625be84 = 1;
  }
  iVar1 = *param_1;
  uStack_38 = 0;
  uStack_40 = 0;
  uStack_28 = 0;
  uStack_30 = 0;
  if (iVar1 < 10000) {
    if (*(int *)(*(long *)PTR_DAT_05e62040 + 0xe4) == 0) {
      func_0x029f5bd0();
    }
    OfflineProgressSimulator_GetPrice(&uStack_40,iVar1);
    uVar2 = InfVal_op_LessThan_0x600007e(param_2,&uStack_40,0);
    if ((uVar2 & 1) == 0) {
      InfVal_op_Subtraction_0x6000073(&uStack_60,param_2,&uStack_40,0);
      param_2[1] = uStack_58;
      *param_2 = uStack_60;
      param_2[3] = uStack_48;
      param_2[2] = uStack_50;
      Managed_WriteBarrier(param_2,0);
      *param_1 = *param_1 + 1;
      return 1;
    }
  }
  return 0;
}

