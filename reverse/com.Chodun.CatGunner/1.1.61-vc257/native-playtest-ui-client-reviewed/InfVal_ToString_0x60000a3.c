/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x455b244, Ghidra VA 0465b244. */

void InfVal_ToString_0x60000a3
               (undefined8 param_1,undefined8 param_2,undefined4 param_3,undefined8 param_4)

{
  undefined *puVar1;
  undefined4 uVar2;
  
  puVar1 = PTR_DAT_05e718d8;
  if ((bRam0000000006260a2a & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e718d8);
    bRam0000000006260a2a = 1;
  }
  if (*(int *)(*(long *)puVar1 + 0xe4) == 0) {
    func_0x029f5bd0();
  }
  uVar2 = Configuration_get_maxDisplayedDigits();
  InfVal_ToString_0x600009e(param_1,uVar2,param_2,param_3,param_4);
  return;
}

