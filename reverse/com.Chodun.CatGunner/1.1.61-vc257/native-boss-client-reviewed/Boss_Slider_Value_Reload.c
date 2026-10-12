/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b4692c, Ghidra VA 02c4692c. */

void Boss_Slider_Value_Reload(long param_1,undefined8 param_2,undefined8 param_3)

{
  undefined8 uVar1;
  long *plVar2;
  undefined8 uStack_60;
  undefined8 uStack_58;
  undefined8 uStack_50;
  undefined8 uStack_48;
  undefined8 uStack_40;
  undefined8 uStack_38;
  undefined8 uStack_30;
  undefined8 uStack_28;
  
  uStack_38 = 0;
  uStack_40 = 0;
  uStack_28 = 0;
  uStack_30 = 0;
  InfVal_op_Division_0x6000075(&uStack_60,param_2,param_3,0);
  uStack_38 = uStack_58;
  uStack_40 = uStack_60;
  uStack_28 = uStack_48;
  uStack_30 = uStack_50;
  InfVal_op_Explicit_0x600005a(&uStack_40,0);
  if (*(long *)(param_1 + 0x20) != 0) {
    SlicedFilledImage_set_fillAmount_0x60005d0(*(long *)(param_1 + 0x20),0);
    plVar2 = *(long **)(param_1 + 0x30);
    uVar1 = InfVal_InfVal_change_0x60000a8(param_2,0);
    if (plVar2 != (long *)0x0) {
      (**(code **)(*plVar2 + 0x558))(plVar2,uVar1,*(undefined8 *)(*plVar2 + 0x560));
      return;
    }
  }
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

