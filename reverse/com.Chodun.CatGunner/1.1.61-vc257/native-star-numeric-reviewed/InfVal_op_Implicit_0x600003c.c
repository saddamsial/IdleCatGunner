/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x4556820, Ghidra VA 04656820. */

void InfVal_op_Implicit_0x600003c(undefined8 *param_1,undefined4 param_2)

{
  param_1[1] = 0;
  *param_1 = 0;
  param_1[3] = 0;
  param_1[2] = 0;
  InfVal__ctor_0x600002c(param_1,param_2,0);
  return;
}

