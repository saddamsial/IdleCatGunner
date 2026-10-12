/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x4556de0, Ghidra VA 04656de0. */

void InfVal_op_Implicit_0x6000050(undefined8 *param_1,undefined8 *param_2)

{
  undefined8 uVar1;
  undefined8 uVar2;
  undefined *puVar3;
  undefined8 uStack_38;
  
  puVar3 = PTR_DAT_05e5a290;
  if ((bRam00000000062609f6 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e5a290);
    bRam00000000062609f6 = 1;
  }
  uVar1 = *param_2;
  uVar2 = param_2[1];
  uStack_38 = 0;
  func_0x035f6d90(&uStack_38,*(undefined4 *)(param_2 + 2),*(undefined8 *)puVar3);
  param_1[1] = 0;
  *param_1 = 0;
  param_1[3] = 0;
  param_1[2] = 0;
  InfVal__ctor_0x6000035(param_1,uVar1,uVar2,uStack_38);
  return;
}

