/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b563f0, Ghidra VA 02c563f0. */

void Raid_Ingame_UI_Health_Reload(long param_1,undefined8 param_2,undefined8 param_3)

{
  float fVar1;
  undefined8 uVar2;
  long *plVar3;
  float fVar4;
  float fVar5;
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
  fVar4 = (float)InfVal_op_Explicit_0x600005a(&uStack_40,0);
  if (*(long *)(param_1 + 0x50) != 0) {
    fVar5 = 1.0;
    if (fVar4 <= 1.0) {
      fVar5 = fVar4;
    }
    fVar1 = 0.0;
    if (0.0 <= fVar4) {
      fVar1 = fVar5;
    }
    SlicedFilledImage_set_fillAmount_0x60005d0(fVar1,*(long *)(param_1 + 0x50),0);
    plVar3 = *(long **)(param_1 + 0x30);
    uVar2 = InfVal_InfVal_change_0x60000a8(param_2,0);
    if (plVar3 != (long *)0x0) {
      (**(code **)(*plVar3 + 0x558))(plVar3,uVar2,*(undefined8 *)(*plVar3 + 0x560));
      return;
    }
  }
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

