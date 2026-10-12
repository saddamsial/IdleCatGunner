/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x455b140, Ghidra VA 0465b140. */

void InfVal_ToString_0x60000a1
               (undefined8 param_1,undefined4 param_2,undefined4 param_3,undefined8 param_4)

{
  undefined *puVar1;
  undefined8 uVar2;
  
  puVar1 = PTR_DAT_05e718d8;
  if ((bRam0000000006260a28 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e718d8);
    bRam0000000006260a28 = 1;
  }
  if (*(int *)(*(long *)puVar1 + 0xe4) == 0) {
    func_0x029f5bd0();
  }
  uVar2 = Configuration_get_unitsList();
  InfVal_ToString_0x600009e(param_1,param_2,uVar2,param_3,param_4);
  return;
}

