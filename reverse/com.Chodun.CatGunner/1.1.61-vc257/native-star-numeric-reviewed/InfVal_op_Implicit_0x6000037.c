/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x45566dc, Ghidra VA 046566dc. */

void InfVal_op_Implicit_0x6000037(undefined8 *param_1,undefined8 param_2)

{
  param_1[1] = 0;
  *param_1 = 0;
  param_1[3] = 0;
  param_1[2] = 0;
  InfVal__ctor_0x6000029(param_1,param_2,0);
  return;
}

