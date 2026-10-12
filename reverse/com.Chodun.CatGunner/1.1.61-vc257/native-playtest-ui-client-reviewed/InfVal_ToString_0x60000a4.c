/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x455b2c8, Ghidra VA 0465b2c8. */

void InfVal_ToString_0x60000a4(undefined8 param_1,undefined4 param_2,undefined8 param_3)

{
  undefined *puVar1;
  undefined4 uVar2;
  undefined8 uVar3;
  
  puVar1 = PTR_DAT_05e718d8;
  if ((bRam0000000006260a2b & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e718d8);
    bRam0000000006260a2b = 1;
  }
  if (*(int *)(*(long *)puVar1 + 0xe4) == 0) {
    func_0x029f5bd0();
  }
  uVar2 = Configuration_get_maxDisplayedDigits();
  uVar3 = Configuration_get_unitsList();
  InfVal_ToString_0x600009e(param_1,uVar2,uVar3,param_2,param_3);
  return;
}

