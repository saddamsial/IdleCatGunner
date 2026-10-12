/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x4556880, Ghidra VA 04656880. */

void InfVal_op_Implicit_0x6000041(undefined8 *param_1,undefined8 param_2)

{
  param_1[1] = 0;
  *param_1 = 0;
  param_1[3] = 0;
  param_1[2] = 0;
  InfVal__ctor_0x6000031(param_1,param_2,0);
  return;
}

