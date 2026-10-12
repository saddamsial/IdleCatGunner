/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x4556868, Ghidra VA 04656868. */

void InfVal_op_Implicit_0x6000040(undefined8 *param_1,undefined4 param_2)

{
  param_1[1] = 0;
  *param_1 = 0;
  param_1[3] = 0;
  param_1[2] = 0;
  InfVal__ctor_0x6000030(param_1,param_2,0);
  return;
}

