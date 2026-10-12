/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x455b03c, Ghidra VA 0465b03c. */

void InfVal_ToString_0x600009f(undefined8 param_1,undefined4 param_2,undefined8 param_3)

{
  undefined *puVar1;
  undefined4 uVar2;
  undefined8 uVar3;
  
  puVar1 = PTR_DAT_05e718d8;
  if ((bRam0000000006260a26 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e718d8);
    bRam0000000006260a26 = 1;
  }
  if (*(int *)(*(long *)puVar1 + 0xe4) == 0) {
    func_0x029f5bd0();
  }
  uVar3 = Configuration_get_unitsList();
  uVar2 = Configuration_get_displayOptions();
  InfVal_ToString_0x600009e(param_1,param_2,uVar3,uVar2,param_3);
  return;
}

