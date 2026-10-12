/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x4556ccc, Ghidra VA 04656ccc. */

void InfVal_op_Implicit_0x600004e(undefined8 *param_1,ulong param_2)

{
  undefined *puVar1;
  undefined8 uStack_38;
  
  puVar1 = PTR_DAT_05e5a290;
  if ((bRam00000000062609f4 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e5a290);
    bRam00000000062609f4 = 1;
  }
  uStack_38 = 0;
  func_0x035f6d90(&uStack_38,param_2 >> 0x20,*(undefined8 *)puVar1);
  param_1[1] = 0;
  *param_1 = 0;
  param_1[3] = 0;
  param_1[2] = 0;
  InfVal__ctor_0x6000033(param_2 & 0xffffffff,param_1,uStack_38);
  return;
}

