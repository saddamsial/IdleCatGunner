/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b8ca3c, Ghidra VA 02c8ca3c. */

void DiaPig_Init(long param_1,long param_2)

{
  undefined *puVar1;
  undefined *puVar2;
  int iVar3;
  undefined8 uVar4;
  ulong uVar5;
  long lVar6;
  undefined8 uVar7;
  undefined8 uStack_38;
  
  if ((bRam000000000625c3ba & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e59760);
    func_0x029f5a50(PTR_DAT_05e597d0);
    func_0x029f5a50(PTR_DAT_05e5d3c0);
    bRam000000000625c3ba = 1;
  }
  puVar2 = PTR_DAT_05e5d3c0;
  puVar1 = PTR_DAT_05e597d0;
  uStack_38 = 0;
  if (param_2 == 0) {
    lVar6 = *(long *)PTR_DAT_05e5d3c0;
    *(undefined4 *)(param_1 + 0x20) = 0;
  }
  else {
    iVar3 = *(int *)(*(long *)PTR_DAT_05e59760 + 0xe4);
    uVar7 = *(undefined8 *)(param_2 + 0x18);
    *(undefined4 *)(param_1 + 0x20) = *(undefined4 *)(param_2 + 0x10);
    if (iVar3 == 0) {
      func_0x029f5bd0();
    }
    uVar4 = CultureInfo_get_InvariantCulture_0x6002ba4(0);
    if (*(int *)(*(long *)puVar1 + 0xe4) == 0) {
      func_0x029f5bd0(*(long *)puVar1);
    }
    uVar5 = DateTime_TryParse_0x6000635(uVar7,uVar4,0x80,&uStack_38,0);
    if ((uVar5 & 1) == 0) {
      if (*(int *)(*(long *)puVar2 + 0xe4) == 0) {
        func_0x029f5bd0();
      }
      uVar7 = Time_manager_get_UtcNow_0x6000578(0);
    }
    else {
      if (*(int *)(*(long *)puVar1 + 0xe4) == 0) {
        func_0x029f5bd0();
      }
      iVar3 = DateTime_get_Kind_0x6000619(&uStack_38,0);
      uVar7 = uStack_38;
      if (iVar3 != 1) {
        if (*(int *)(*(long *)puVar1 + 0xe4) == 0) {
          func_0x029f5bd0();
        }
        uVar7 = DateTime_ToUniversalTime_0x6000633(&uStack_38,0);
      }
    }
    lVar6 = *(long *)puVar2;
    *(undefined8 *)(param_1 + 0x38) = uVar7;
    if (*(int *)(lVar6 + 0xe4) == 0) {
      func_0x029f5bd0();
    }
    uVar4 = Time_manager_get_UtcNow_0x6000578(0);
    if (*(int *)(*(long *)puVar1 + 0xe4) == 0) {
      func_0x029f5bd0(*(long *)puVar1);
    }
    uVar5 = DateTime_op_GreaterThan_0x600063f(uVar7,uVar4,0);
    if ((uVar5 & 1) != 0) {
      if (*(int *)(*(long *)puVar2 + 0xe4) == 0) {
        func_0x029f5bd0();
      }
      uVar7 = Time_manager_get_UtcNow_0x6000578(0);
      *(undefined8 *)(param_1 + 0x38) = uVar7;
    }
    if (*(int *)(*(long *)puVar2 + 0xe4) == 0) {
      func_0x029f5bd0();
    }
    uVar7 = Time_manager_get_MonoSec_0x6000569(0);
    *(undefined8 *)(param_1 + 0x40) = uVar7;
    uVar5 = DiaPig_IsUnlocked();
    if ((uVar5 & 1) != 0) {
      DiaPig_Tick_Accumulate(param_1);
      goto LAB_02c8cc30;
    }
    lVar6 = *(long *)puVar2;
  }
  if (*(int *)(lVar6 + 0xe4) == 0) {
    func_0x029f5bd0();
  }
  uVar7 = Time_manager_get_UtcNow_0x6000578(0);
  DiaPig_SetLastTick(param_1,uVar7);
LAB_02c8cc30:
  if ((*(long *)(param_1 + 0x30) != 0) &&
     (SlicedFilledImage_set_fillAmount_0x60005d0
                ((float)*(int *)(param_1 + 0x20) / (float)*(int *)(param_1 + 0x24),
                 *(long *)(param_1 + 0x30),0), *(long *)(param_1 + 0x28) != 0)) {
    DiaPig_UI_UI_Reload();
    return;
  }
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

