/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b08c6c, Ghidra VA 02c08c6c. */

/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */

void OfflineProgressSimulator_ToInfVal_0x60003d9(undefined8 *param_1,float param_2)

{
  undefined *puVar1;
  double dVar2;
  undefined8 uStack_50;
  undefined8 uStack_48;
  undefined8 uStack_40;
  undefined8 uStack_38;
  
  puVar1 = PTR_DAT_05e62040;
  if ((bRam000000000625be8e & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e62040);
    bRam000000000625be8e = 1;
  }
  if (*(int *)(*(long *)puVar1 + 0xe4) == 0) {
    func_0x029f5bd0();
  }
  dVar2 = _UNK_0116fc10;
  if ((param_2 <= _UNK_0116bf10) && ((uint)ABS(param_2) >> 0x17 < 0xff)) {
    dVar2 = (double)param_2;
  }
  InfVal_op_Implicit_0x600004c(&uStack_50,dVar2,0);
  param_1[1] = uStack_48;
  *param_1 = uStack_50;
  param_1[3] = uStack_38;
  param_1[2] = uStack_40;
  return;
}

