/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x4556e90, Ghidra VA 04656e90. */

void InfVal_ToExponent(undefined8 *param_1,undefined8 *param_2,int param_3,ulong param_4)

{
  int iVar1;
  undefined8 uStack_70;
  undefined8 uStack_68;
  undefined8 uStack_60;
  undefined8 uStack_58;
  undefined8 uStack_50;
  undefined8 uStack_48;
  undefined8 uStack_40;
  undefined8 uStack_38;
  
  iVar1 = *(int *)(param_2 + 1);
  uStack_68 = 0;
  uStack_70 = 0;
  uStack_58 = 0;
  uStack_60 = 0;
  if (iVar1 == param_3) {
    uStack_68 = param_2[1];
    uStack_50 = *param_2;
    uStack_38 = param_2[3];
    uStack_40 = param_2[2];
  }
  else {
    uStack_48 = 0;
    uStack_50 = 0;
    uStack_38 = 0;
    uStack_40 = 0;
    InfVal_set_digits_0x6000094(&uStack_50,param_2[2],param_2[3]);
    uStack_48 = CONCAT44(uStack_48._4_4_,iVar1);
    uStack_68 = uStack_48;
    uStack_70 = uStack_50;
    uStack_58 = uStack_38;
    uStack_60 = uStack_40;
    if ((param_4 & 1) == 0) {
      InfVal_set_exponent_0x6000096(&uStack_70,param_3);
      uStack_50 = uStack_70;
      uStack_40 = uStack_60;
      uStack_38 = uStack_58;
    }
    else {
      uStack_68 = CONCAT44(uStack_48._4_4_,param_3);
    }
  }
  param_1[1] = uStack_68;
  *param_1 = uStack_50;
  param_1[3] = uStack_38;
  param_1[2] = uStack_40;
  return;
}

