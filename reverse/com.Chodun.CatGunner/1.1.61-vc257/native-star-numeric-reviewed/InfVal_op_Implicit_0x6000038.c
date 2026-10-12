/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x45566f4, Ghidra VA 046566f4. */

void InfVal_op_Implicit_0x6000038(undefined8 *param_1,long param_2)

{
  undefined *puVar1;
  undefined8 uStack_28;
  
  puVar1 = PTR_DAT_05e5a290;
  if ((bRam00000000062609e9 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e5a290);
    bRam00000000062609e9 = 1;
  }
  uStack_28 = 0;
  func_0x035f6d90(&uStack_28,*(undefined4 *)(param_2 + 0x10),*(undefined8 *)puVar1);
  param_1[1] = 0;
  *param_1 = 0;
  param_1[3] = 0;
  param_1[2] = 0;
  InfVal__ctor_0x6000029(param_1,param_2,uStack_28);
  return;
}

