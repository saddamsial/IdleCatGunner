/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b5ca8c, Ghidra VA 02c5ca8c. */

void Enemy_Damaged(long param_1,undefined8 param_2)

{
  undefined *puVar1;
  long lVar2;
  ulong uVar3;
  undefined4 uVar4;
  undefined8 uStack_70;
  undefined8 uStack_68;
  undefined8 uStack_60;
  undefined8 uStack_58;
  undefined8 uStack_50;
  undefined8 uStack_48;
  undefined8 uStack_40;
  undefined8 uStack_38;
  
  if ((bRam000000000625c1f0 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e63480);
    func_0x029f5a50(PTR_DAT_05e5d338);
    bRam000000000625c1f0 = 1;
  }
  puVar1 = PTR_DAT_05e5d338;
  uStack_48 = 0;
  uStack_50 = 0;
  uStack_38 = 0;
  uStack_40 = 0;
  if (*(char *)(param_1 + 0x24) == '\0') {
    lVar2 = *(long *)PTR_DAT_05e5d338;
    if (*(int *)(lVar2 + 0xe4) == 0) {
      func_0x029f5bd0();
      lVar2 = *(long *)puVar1;
    }
    if (**(char **)(lVar2 + 0xb8) == '\0') {
      return;
    }
    InfVal_op_Subtraction_0x6000073(&uStack_70,param_1 + 0x28,param_2,0);
    *(undefined8 *)(param_1 + 0x30) = uStack_68;
    *(undefined8 *)(param_1 + 0x28) = uStack_70;
    *(undefined8 *)(param_1 + 0x40) = uStack_58;
    *(undefined8 *)(param_1 + 0x38) = uStack_60;
    func_0x029f59f4(param_1 + 0x28,0);
    if (*(int *)(param_1 + 0x20) == 3) {
      InfVal_op_Division_0x6000075(&uStack_70,param_2,param_1 + 0x48,0);
      uStack_48 = uStack_68;
      uStack_50 = uStack_70;
      uStack_38 = uStack_58;
      uStack_40 = uStack_60;
      uVar4 = InfVal_op_Explicit_0x600005a(&uStack_50,0);
      lVar2 = func_0x02fe5f2c(param_1,*(undefined8 *)PTR_DAT_05e63480);
      if (lVar2 == 0) goto LAB_02c5cbf8;
      Monster_Apply_Knockback_0x6000832(uVar4,lVar2,0);
    }
    Enemy_Slider_Reload(param_1);
    InfVal_op_Implicit_0x600003f(&uStack_70,0,0);
    uStack_48 = uStack_68;
    uStack_50 = uStack_70;
    uStack_38 = uStack_58;
    uStack_40 = uStack_60;
    uVar3 = InfVal_op_LessThanOrEqual_0x6000080(param_1 + 0x28,&uStack_50,0);
    if ((uVar3 & 1) == 0) {
      if (*(long *)(param_1 + 0x90) == 0) {
LAB_02c5cbf8:
                    /* WARNING: Subroutine does not return */
        Throw_NullReference_Wrapper();
      }
      Bounce_Custom_Bounce_Start_0x600026a(*(long *)(param_1 + 0x90),0);
    }
    else {
      Enemy_Die(param_1);
    }
  }
  return;
}

