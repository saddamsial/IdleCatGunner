/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x4553178, Ghidra VA 04653178. */

void InfVal_ToString_0x600009e
               (undefined8 param_1,undefined4 param_2,undefined8 param_3,undefined4 param_4,
               undefined8 param_5)

{
  undefined *puVar1;
  undefined8 uStack_b0;
  undefined8 uStack_a8;
  undefined8 uStack_a0;
  undefined8 uStack_90;
  undefined8 uStack_88;
  undefined8 uStack_80;
  undefined8 uStack_70;
  undefined8 uStack_68;
  undefined8 uStack_60;
  undefined8 uStack_58;
  undefined8 uStack_50;
  undefined8 uStack_48;
  
  puVar1 = PTR_DAT_05e718e8;
  if ((bRam0000000006260a25 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e718e8);
    bRam0000000006260a25 = 1;
  }
  uStack_58 = 0;
  uStack_50 = 0;
  uStack_48 = 0;
  func_0x03ba509c(&uStack_58,param_2,param_3,param_4,*(undefined8 *)puVar1);
  InfVal_ProviderToFormatParams(&uStack_70,param_5);
  uStack_88 = uStack_50;
  uStack_90 = uStack_58;
  uStack_80 = uStack_48;
  uStack_a8 = uStack_68;
  uStack_b0 = uStack_70;
  uStack_a0 = uStack_60;
  InfVal_InternalToString(param_1,&uStack_90,&uStack_b0);
  return;
}

