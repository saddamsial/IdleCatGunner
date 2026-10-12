/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x4558464, Ghidra VA 04658464. */

void InfVal_ToPrecision(undefined8 *param_1,undefined8 *param_2,int param_3)

{
  undefined *puVar1;
  int iVar2;
  int iVar3;
  undefined4 uVar4;
  undefined4 uVar5;
  undefined8 uVar6;
  undefined8 uVar7;
  undefined8 uVar8;
  ulong uVar9;
  undefined8 *extraout_x8;
  undefined1 auVar10 [16];
  undefined8 uStack_e0;
  undefined8 uStack_d8;
  undefined8 uStack_d0;
  undefined8 uStack_c8;
  undefined8 uStack_c0;
  undefined8 uStack_b8;
  undefined8 uStack_b0;
  undefined8 uStack_a8;
  code *pcStack_a0;
  undefined8 uStack_50;
  undefined8 uStack_48;
  undefined8 uStack_40;
  undefined8 uStack_38;
  
  if (0 < param_3) {
    iVar2 = InfVal_get_precision_0x6000097();
    if (iVar2 == param_3) {
      uStack_48 = param_2[1];
      uStack_50 = *param_2;
      uStack_38 = param_2[3];
      uStack_40 = param_2[2];
    }
    else {
      iVar2 = *(int *)(param_2 + 1);
      iVar3 = InfVal_get_precision_0x6000097(param_2);
      InfVal_ToExponent_0x6000087(&uStack_50,param_2,(iVar2 - param_3) + iVar3,0);
    }
    param_1[1] = uStack_48;
    *param_1 = uStack_50;
    param_1[3] = uStack_38;
    param_1[2] = uStack_40;
    return;
  }
  func_0x029f5a64(PTR_DAT_05e65dc8);
  uVar6 = func_0x029f5cec();
  uVar7 = func_0x029f5a64(PTR_DAT_05e71960);
  uVar8 = func_0x029f5a64(PTR_DAT_05e71968);
  ArgumentException__ctor_0x60003e7(uVar6,uVar7,uVar8,0);
  uVar7 = func_0x029f5a64(PTR_DAT_05e71a00);
  auVar10 = func_0x029f5bc0(uVar6,uVar7);
  puVar1 = PTR_DAT_05e59000;
  uVar7 = auVar10._8_8_;
  uVar6 = auVar10._0_8_;
  pcStack_a0 = InfVal_op_Multiply_0x6000074;
  if ((bRam0000000006260a07 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e58fe0);
    func_0x029f5a50(PTR_DAT_05e59000);
    func_0x029f5a50(PTR_DAT_05e5a290);
    bRam0000000006260a07 = 1;
  }
  uStack_d8 = 0;
  uStack_e0 = 0;
  uStack_c8 = 0;
  uStack_d0 = 0;
  uVar4 = InfVal_get_precision_0x6000097(uVar6);
  uVar5 = InfVal_get_precision_0x6000097(uVar7);
  if (*(int *)(*(long *)puVar1 + 0xe4) == 0) {
    func_0x029f5bd0(*(long *)puVar1);
  }
  uVar4 = Math_Max_0x6000884(uVar4,uVar5,0);
  uVar9 = InfVal_get_isZero_0x6000099(uVar6);
  if (((uVar9 & 1) == 0) && (uVar9 = InfVal_get_isZero_0x6000099(uVar7), (uVar9 & 1) == 0)) {
    InfVal_RemoveTrailingZeros_0x600008a(&uStack_c0,uVar6);
    uVar8 = uStack_a8;
    uVar6 = uStack_b0;
    iVar2 = (int)uStack_b8;
    InfVal_RemoveTrailingZeros_0x600008a(&uStack_c0,uVar7);
    if (*(int *)(*(long *)PTR_DAT_05e58fe0 + 0xe4) == 0) {
      func_0x029f5bd0();
    }
    auVar10 = BigInteger_op_Multiply_0x6000058(uVar6,uVar8,uStack_b0,uStack_a8,0);
    iVar2 = (int)uStack_b8 + iVar2;
    uStack_b8 = 0;
    uStack_c0 = 0;
    uStack_a8 = 0;
    uStack_b0 = 0;
    InfVal_set_digits_0x6000094(&uStack_c0,auVar10._0_8_,auVar10._8_8_);
    uStack_b8 = CONCAT44(uStack_b8._4_4_,iVar2);
    uStack_d8 = uStack_b8;
    uStack_e0 = uStack_c0;
    uStack_c8 = uStack_a8;
    uStack_d0 = uStack_b0;
    InfVal_ToPrecision(&uStack_c0,&uStack_e0,uVar4);
    extraout_x8[1] = uStack_b8;
    *extraout_x8 = uStack_c0;
    extraout_x8[3] = uStack_a8;
    extraout_x8[2] = uStack_b0;
  }
  else {
    uStack_c0 = 0;
    func_0x035f6d90(&uStack_c0,uVar4,*(undefined8 *)PTR_DAT_05e5a290);
    extraout_x8[1] = 0;
    *extraout_x8 = 0;
    extraout_x8[3] = 0;
    extraout_x8[2] = 0;
    InfVal__ctor_0x600002f(extraout_x8,0,uStack_c0);
  }
  return;
}

