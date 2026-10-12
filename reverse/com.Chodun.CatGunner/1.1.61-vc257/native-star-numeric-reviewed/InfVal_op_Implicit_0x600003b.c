/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x4556808, Ghidra VA 04656808. */

void InfVal_op_Implicit_0x600003b(undefined8 *param_1,undefined4 param_2)

{
  param_1[1] = 0;
  *param_1 = 0;
  param_1[3] = 0;
  param_1[2] = 0;
  InfVal__ctor_0x600002b(param_1,param_2,0);
  return;
}

