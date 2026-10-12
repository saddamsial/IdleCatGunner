/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x4556cb0, Ghidra VA 04656cb0. */

void InfVal_op_Implicit_0x600004d(undefined8 *param_1,undefined8 param_2,undefined8 param_3)

{
  param_1[1] = 0;
  *param_1 = 0;
  param_1[3] = 0;
  param_1[2] = 0;
  InfVal__ctor_0x6000035(param_1,param_2,param_3,0);
  return;
}

