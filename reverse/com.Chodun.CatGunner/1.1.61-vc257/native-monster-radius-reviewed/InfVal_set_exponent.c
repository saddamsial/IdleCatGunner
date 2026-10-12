/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x4554f68, Ghidra VA 04654f68. */

void InfVal_set_exponent(long param_1,int param_2)

{
  int iVar1;
  int iVar2;
  undefined1 auVar3 [16];
  undefined8 uStack_30;
  undefined8 uStack_28;
  
  if ((bRam0000000006260a1f & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e58fe0);
    bRam0000000006260a1f = 1;
  }
  iVar1 = *(int *)(param_1 + 8);
  uStack_30 = 0;
  uStack_28 = 0;
  if (param_2 != iVar1) {
    iVar2 = InfVal_get_precision_0x6000097(param_1);
    if (param_2 - iVar1 < iVar2) {
      uStack_28 = *(undefined8 *)(param_1 + 0x18);
      uStack_30 = *(undefined8 *)(param_1 + 0x10);
      auVar3 = MathBigInteger_MultiplyByPowerOf10_0x60000d5
                         (&uStack_30,*(int *)(param_1 + 8) - param_2);
    }
    else {
      if (*(int *)(*(long *)PTR_DAT_05e58fe0 + 0xe4) == 0) {
        func_0x029f5bd0();
      }
      auVar3 = BigInteger_op_Implicit_0x600003d(0,0);
    }
    InfVal_set_digits_0x6000094(param_1,auVar3._0_8_,auVar3._8_8_);
    *(int *)(param_1 + 8) = param_2;
  }
  return;
}

