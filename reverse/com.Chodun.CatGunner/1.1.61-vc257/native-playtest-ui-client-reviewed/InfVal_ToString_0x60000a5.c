/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x455b348, Ghidra VA 0465b348. */

void InfVal_ToString_0x60000a5(undefined8 param_1,undefined8 param_2,undefined8 param_3)

{
  undefined8 uStack_90;
  undefined8 uStack_88;
  undefined8 uStack_80;
  undefined8 uStack_70;
  undefined8 uStack_68;
  undefined8 uStack_60;
  undefined8 uStack_50;
  undefined8 uStack_48;
  undefined8 uStack_40;
  undefined8 uStack_38;
  undefined8 uStack_30;
  undefined8 uStack_28;
  
  InfVal_StrToDisplayParams_0x60000bb(&uStack_38,param_2);
  InfVal_ProviderToFormatParams(&uStack_50,param_3);
  uStack_68 = uStack_30;
  uStack_70 = uStack_38;
  uStack_60 = uStack_28;
  uStack_88 = uStack_48;
  uStack_90 = uStack_50;
  uStack_80 = uStack_40;
  InfVal_InternalToString(param_1,&uStack_70,&uStack_90);
  return;
}

