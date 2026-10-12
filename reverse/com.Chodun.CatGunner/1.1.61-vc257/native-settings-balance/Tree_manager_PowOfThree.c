/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2bace94, Ghidra VA 02cace94. */

void Tree_manager_PowOfThree(undefined8 *param_1,uint param_2)

{
  bool bVar1;
  undefined8 uStack_c0;
  undefined8 uStack_b8;
  undefined8 uStack_b0;
  undefined8 uStack_a8;
  undefined8 uStack_a0;
  undefined8 uStack_98;
  undefined8 uStack_90;
  undefined8 uStack_88;
  undefined8 uStack_80;
  undefined8 uStack_78;
  undefined8 uStack_70;
  undefined8 uStack_68;
  undefined8 uStack_60;
  undefined8 uStack_58;
  undefined8 uStack_50;
  undefined8 uStack_48;
  undefined8 uStack_40;
  undefined8 uStack_38;
  undefined8 uStack_30;
  undefined8 uStack_28;
  
  uStack_78 = 0;
  uStack_80 = 0;
  uStack_68 = 0;
  uStack_70 = 0;
  uStack_58 = 0;
  uStack_60 = 0;
  uStack_48 = 0;
  uStack_50 = 0;
  uStack_38 = 0;
  uStack_40 = 0;
  uStack_28 = 0;
  uStack_30 = 0;
  InfVal_op_Implicit_0x600003f(&uStack_a0,1,0);
  uStack_38 = uStack_98;
  uStack_40 = uStack_a0;
  uStack_28 = uStack_88;
  uStack_30 = uStack_90;
  InfVal_op_Implicit_0x600003f(&uStack_60,3,0);
  if (0 < (int)param_2) {
    do {
      if ((param_2 & 1) != 0) {
        InfVal_op_Multiply_0x6000074(&uStack_a0,&uStack_40,&uStack_60,0);
        uStack_78 = uStack_98;
        uStack_80 = uStack_a0;
        uStack_68 = uStack_88;
        uStack_70 = uStack_90;
        InfVal_ToPrecision_0x6000089(&uStack_c0,&uStack_80,2,0);
        uStack_38 = uStack_b8;
        uStack_40 = uStack_c0;
        uStack_28 = uStack_a8;
        uStack_30 = uStack_b0;
      }
      InfVal_op_Multiply_0x6000074(&uStack_a0,&uStack_60,&uStack_60,0);
      uStack_78 = uStack_98;
      uStack_80 = uStack_a0;
      uStack_68 = uStack_88;
      uStack_70 = uStack_90;
      InfVal_ToPrecision_0x6000089(&uStack_c0,&uStack_80,2,0);
      uStack_58 = uStack_b8;
      uStack_60 = uStack_c0;
      uStack_48 = uStack_a8;
      uStack_50 = uStack_b0;
      bVar1 = 1 < param_2;
      param_2 = param_2 >> 1;
    } while (bVar1);
  }
  param_1[1] = uStack_38;
  *param_1 = uStack_40;
  param_1[3] = uStack_28;
  param_1[2] = uStack_30;
  return;
}

