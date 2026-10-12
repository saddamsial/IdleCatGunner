/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b5d820, Ghidra VA 02c5d820. */

void Fish_manager_UpdateStatTexts(long param_1)

{
  undefined *puVar1;
  undefined *puVar2;
  ulong uVar3;
  undefined8 uVar4;
  long *plVar5;
  undefined8 uStack_150;
  undefined8 uStack_148;
  undefined8 uStack_140;
  undefined8 uStack_138;
  undefined8 uStack_130;
  undefined8 uStack_128;
  undefined8 uStack_120;
  undefined8 uStack_118;
  undefined8 uStack_110;
  undefined8 uStack_108;
  undefined8 uStack_100;
  undefined8 uStack_f8;
  undefined8 uStack_f0;
  undefined8 uStack_e8;
  undefined8 uStack_e0;
  undefined8 uStack_d8;
  undefined8 uStack_d0;
  undefined8 uStack_c8;
  undefined8 uStack_c0;
  undefined8 uStack_b8;
  undefined8 uStack_b0;
  undefined8 uStack_a8;
  undefined8 uStack_a0;
  undefined8 uStack_98;
  undefined8 uStack_90;
  undefined8 uStack_88;
  undefined8 uStack_80;
  undefined8 uStack_78;
  undefined8 uStack_70;
  undefined8 uStack_68;
  undefined8 uStack_60;
  undefined8 uStack_58;
  undefined8 uStack_50;
  undefined8 uStack_48;
  undefined8 uStack_40;
  undefined8 uStack_38;
  
  if ((bRam000000000625c20b & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e5d4c8);
    func_0x029f5a50(PTR_DAT_05e620b8);
    func_0x029f5a50(PTR_DAT_05e591c0);
    func_0x029f5a50(PTR_DAT_05e63338);
    func_0x029f5a50(PTR_DAT_05e63810);
    bRam000000000625c20b = 1;
  }
  *(undefined1 *)(param_1 + 0x88) = 1;
  uStack_c8 = 0;
  uStack_d0 = 0;
  uStack_b8 = 0;
  uStack_c0 = 0;
  uStack_a8 = 0;
  uStack_b0 = 0;
  uStack_98 = 0;
  uStack_a0 = 0;
  uStack_88 = 0;
  uStack_90 = 0;
  uStack_78 = 0;
  uStack_80 = 0;
  uStack_68 = 0;
  uStack_70 = 0;
  uStack_58 = 0;
  uStack_60 = 0;
  uStack_48 = 0;
  uStack_50 = 0;
  uStack_38 = 0;
  uStack_40 = 0;
  Fish_manager_RecalculateTotals(param_1);
  InfVal_op_Implicit_0x600003f(&uStack_f0,*(undefined4 *)(param_1 + 0x7c),0);
  uStack_48 = uStack_e8;
  uStack_50 = uStack_f0;
  uStack_38 = uStack_d8;
  uStack_40 = uStack_e0;
  if (*(char *)(param_1 + 0x88) != '\0') {
    Fish_manager_RecalculateTotals(param_1);
  }
  puVar1 = PTR_DAT_05e591c0;
  InfVal_op_Implicit_0x600003f(&uStack_110,*(undefined4 *)(param_1 + 0x80),0);
  uStack_68 = uStack_108;
  uStack_70 = uStack_110;
  uStack_58 = uStack_f8;
  uStack_60 = uStack_100;
  if (*(char *)(param_1 + 0x88) != '\0') {
    Fish_manager_RecalculateTotals(param_1);
  }
  InfVal_op_Implicit_0x600003f(&uStack_130,*(undefined4 *)(param_1 + 0x84),0);
  uVar4 = *(undefined8 *)(param_1 + 0x58);
  uStack_88 = uStack_128;
  uStack_90 = uStack_130;
  uStack_78 = uStack_118;
  uStack_80 = uStack_120;
  if (*(int *)(*(long *)puVar1 + 0xe4) == 0) {
    func_0x029f5bd0();
  }
  uVar3 = Object_op_Inequality_0x6000ded(uVar4,0,0);
  puVar2 = PTR_DAT_05e63810;
  if ((uVar3 & 1) != 0) {
    plVar5 = *(long **)(param_1 + 0x58);
    uVar4 = InfVal_InfVal_change_0x60000a8(&uStack_50,0);
    uVar4 = String_Format_0x600029c(*(undefined8 *)puVar2,uVar4,0);
    if (plVar5 == (long *)0x0) goto LAB_02c5db24;
    (**(code **)(*plVar5 + 0x558))(plVar5,uVar4,*(undefined8 *)(*plVar5 + 0x560));
  }
  uVar4 = *(undefined8 *)(param_1 + 0x60);
  if (*(int *)(*(long *)puVar1 + 0xe4) == 0) {
    func_0x029f5bd0();
  }
  uVar3 = Object_op_Inequality_0x6000ded(uVar4,0,0);
  if ((uVar3 & 1) != 0) {
    plVar5 = *(long **)(param_1 + 0x60);
    InfVal_op_Implicit_0x600003f(&uStack_f0,0,0);
    uStack_a8 = uStack_e8;
    uStack_b0 = uStack_f0;
    uStack_98 = uStack_d8;
    uStack_a0 = uStack_e0;
    InfVal_op_Implicit_0x600003f(&uStack_110,100,0);
    uStack_c8 = uStack_108;
    uStack_d0 = uStack_110;
    uStack_b8 = uStack_f8;
    uStack_c0 = uStack_100;
    if (*(int *)(*(long *)PTR_DAT_05e620b8 + 0xe4) == 0) {
      func_0x029f5bd0();
    }
    MathInfVal_Clamp_0x60000d9(&uStack_130,&uStack_70,&uStack_b0,&uStack_d0,0);
    uStack_148 = uStack_128;
    uStack_150 = uStack_130;
    uStack_138 = uStack_118;
    uStack_140 = uStack_120;
    uVar4 = func_0x029f5bd8(*(undefined8 *)PTR_DAT_05e5d4c8,&uStack_150);
    uVar4 = String_Format_0x600029c(*(undefined8 *)PTR_DAT_05e63338,uVar4,0);
    if (plVar5 == (long *)0x0) goto LAB_02c5db24;
    (**(code **)(*plVar5 + 0x558))(plVar5,uVar4,*(undefined8 *)(*plVar5 + 0x560));
  }
  uVar4 = *(undefined8 *)(param_1 + 0x68);
  if (*(int *)(*(long *)puVar1 + 0xe4) == 0) {
    func_0x029f5bd0();
  }
  uVar3 = Object_op_Inequality_0x6000ded(uVar4,0,0);
  if ((uVar3 & 1) != 0) {
    plVar5 = *(long **)(param_1 + 0x68);
    InfVal_op_Implicit_0x600003f(&uStack_f0,0x7d,0);
    uStack_a8 = uStack_e8;
    uStack_b0 = uStack_f0;
    uStack_98 = uStack_d8;
    uStack_a0 = uStack_e0;
    InfVal_op_Addition_0x6000072(&uStack_110,&uStack_90,&uStack_b0,0);
    uStack_c8 = uStack_108;
    uStack_d0 = uStack_110;
    uStack_b8 = uStack_f8;
    uStack_c0 = uStack_100;
    uVar4 = InfVal_InfVal_change_0x60000a8(&uStack_d0,0);
    uVar4 = String_Format_0x600029c(*(undefined8 *)PTR_DAT_05e63338,uVar4,0);
    if (plVar5 == (long *)0x0) {
LAB_02c5db24:
                    /* WARNING: Subroutine does not return */
      Throw_NullReference_Wrapper();
    }
    (**(code **)(*plVar5 + 0x558))(plVar5,uVar4,*(undefined8 *)(*plVar5 + 0x560));
  }
  return;
}

