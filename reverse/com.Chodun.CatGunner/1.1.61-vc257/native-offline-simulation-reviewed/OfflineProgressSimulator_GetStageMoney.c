/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b090c8, Ghidra VA 02c090c8. */

void OfflineProgressSimulator_GetStageMoney(undefined8 *param_1,uint param_2)

{
  undefined *puVar1;
  undefined *puVar2;
  long lVar3;
  ulong uVar4;
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
  
  puVar2 = PTR_DAT_05e5dc20;
  if ((bRam000000000625be8c & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e620b8);
    func_0x029f5a50(PTR_DAT_05e591c0);
    func_0x029f5a50(PTR_DAT_05e5dc20);
    bRam000000000625be8c = 1;
  }
  puVar1 = PTR_DAT_05e591c0;
  lVar3 = *(long *)puVar2;
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
  uStack_a8 = 0;
  uStack_b0 = 0;
  uStack_98 = 0;
  uStack_a0 = 0;
  if (*(int *)(lVar3 + 0xe4) == 0) {
    func_0x029f5bd0();
    lVar3 = *(long *)puVar2;
  }
  param_2 = param_2 & ((int)param_2 >> 0x1f ^ 0xffffffffU);
  lVar3 = *(long *)(*(long *)(lVar3 + 0xb8) + 0x10);
  if (*(int *)(*(long *)puVar1 + 0xe4) == 0) {
    func_0x029f5bd0(*(long *)puVar1);
  }
  uVar4 = Object_op_Inequality_0x6000ded(lVar3,0,0);
  puVar2 = PTR_DAT_05e620b8;
  if ((uVar4 & 1) != 0) {
    if (lVar3 == 0) {
                    /* WARNING: Subroutine does not return */
      Throw_NullReference_Wrapper();
    }
    if (*(long *)(lVar3 + 0x78) != 0) {
      Tree_manager_GetStageMoney_0x6000efc(&uStack_d0,lVar3,param_2,0);
      goto LAB_02c09248;
    }
  }
  InfVal_op_Implicit_0x600003f(&uStack_d0,0x14,0);
  uStack_48 = uStack_c8;
  uStack_50 = uStack_d0;
  uStack_38 = uStack_b8;
  uStack_40 = uStack_c0;
  InfVal_op_Implicit_0x600004c(&uStack_f0,0x4008000000000000,0);
  uStack_68 = uStack_e8;
  uStack_70 = uStack_f0;
  uStack_58 = uStack_d8;
  uStack_60 = uStack_e0;
  if (*(int *)(*(long *)puVar2 + 0xe4) == 0) {
    func_0x029f5bd0();
  }
  MathInfVal_Pow_0x60000f3(&uStack_110,&uStack_70,param_2,1,0);
  uStack_88 = uStack_108;
  uStack_90 = uStack_110;
  uStack_78 = uStack_f8;
  uStack_80 = uStack_100;
  InfVal_op_Multiply_0x6000074(&uStack_130,&uStack_50,&uStack_90,0);
  uStack_a8 = uStack_128;
  uStack_b0 = uStack_130;
  uStack_98 = uStack_118;
  uStack_a0 = uStack_120;
  InfVal_ToPrecision_0x6000089(&uStack_150,&uStack_b0,2,0);
  uStack_d0 = uStack_150;
  uStack_c8 = uStack_148;
  uStack_c0 = uStack_140;
  uStack_b8 = uStack_138;
LAB_02c09248:
  param_1[1] = uStack_c8;
  *param_1 = uStack_d0;
  param_1[3] = uStack_b8;
  param_1[2] = uStack_c0;
  return;
}

