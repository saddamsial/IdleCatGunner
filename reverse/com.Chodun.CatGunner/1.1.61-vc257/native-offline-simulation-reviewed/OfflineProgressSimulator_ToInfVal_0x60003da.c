/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b089ac, Ghidra VA 02c089ac. */

/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */

void OfflineProgressSimulator_ToInfVal_0x60003da(undefined8 *param_1,double param_2)

{
  undefined8 uStack_30;
  undefined8 uStack_28;
  undefined8 uStack_20;
  undefined8 uStack_18;
  
  if ((0x7ff0000000000000 < (ulong)ABS(param_2)) ||
     (_UNK_0116fc10 < param_2 || ABS(param_2) == INFINITY)) {
    param_2 = _UNK_0116fc10;
  }
  InfVal_op_Implicit_0x600004c(&uStack_30,param_2,0);
  param_1[1] = uStack_28;
  *param_1 = uStack_30;
  param_1[3] = uStack_18;
  param_1[2] = uStack_20;
  return;
}

