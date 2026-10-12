/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x4555c7c, Ghidra VA 04655c7c. */

void InfVal__ctor_0x6000031(undefined8 param_1,undefined8 param_2,undefined8 param_3)

{
  undefined *puVar1;
  undefined1 auStack_40 [16];
  
  puVar1 = PTR_DAT_05e58fe0;
  if ((bRam00000000062609e3 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e58fe0);
    bRam00000000062609e3 = 1;
  }
  auStack_40._0_8_ = 0;
  auStack_40._8_8_ = 0;
  if (*(int *)(*(long *)puVar1 + 0xe4) == 0) {
    func_0x029f5bd0();
  }
  auStack_40 = BigInteger_op_Implicit_0x600003f(param_2,0);
  InfVal__ctor_0x6000029(param_1,auStack_40,param_3);
  return;
}

