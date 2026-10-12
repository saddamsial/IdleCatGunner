/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x455bd64, Ghidra VA 0465bd64. */

void InfVal_ToString_0x60000a7(undefined8 param_1)

{
  undefined *puVar1;
  undefined4 uVar2;
  undefined4 uVar3;
  undefined8 uVar4;
  
  puVar1 = PTR_DAT_05e718d8;
  if ((bRam0000000006260a2d & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e718d8);
    bRam0000000006260a2d = 1;
  }
  if (*(int *)(*(long *)puVar1 + 0xe4) == 0) {
    func_0x029f5bd0();
  }
  uVar2 = Configuration_get_maxDisplayedDigits();
  uVar4 = Configuration_get_unitsList();
  uVar3 = Configuration_get_displayOptions();
  InfVal_ToString_0x600009e(param_1,uVar2,uVar4,uVar3,0);
  return;
}

