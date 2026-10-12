/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b3156c, Ghidra VA 02c3156c. */

void Relic_manager_Relic_Value_return(undefined8 *param_1,long param_2)

{
  uint uVar1;
  undefined *puVar2;
  int iVar3;
  long lVar4;
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
  undefined8 uStack_30;
  undefined8 uStack_28;
  
  if ((bRam000000000625c045 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e5d4d8);
    bRam000000000625c045 = 1;
  }
  puVar2 = PTR_DAT_05e5d4d8;
  uStack_58 = 0;
  uStack_60 = 0;
  uStack_48 = 0;
  uStack_50 = 0;
  uStack_38 = 0;
  uStack_40 = 0;
  uStack_28 = 0;
  uStack_30 = 0;
  if (param_2 == 0) goto LAB_02c318c8;
  switch(*(undefined4 *)(param_2 + 0x10)) {
  case 0:
    lVar4 = *(long *)PTR_DAT_05e5d4d8;
    if (*(int *)(lVar4 + 0xe4) == 0) {
      func_0x029f5bd0();
      lVar4 = *(long *)puVar2;
    }
    lVar4 = *(long *)(*(long *)(lVar4 + 0xb8) + 0x70);
    if (lVar4 == 0) goto LAB_02c318c8;
    lVar4 = *(long *)(lVar4 + 0x48);
    goto joined_r0x02c31808;
  case 1:
    lVar4 = *(long *)PTR_DAT_05e5d4d8;
    if (*(int *)(lVar4 + 0xe4) == 0) {
      func_0x029f5bd0();
      lVar4 = *(long *)puVar2;
    }
    lVar4 = *(long *)(*(long *)(lVar4 + 0xb8) + 0x70);
    if (lVar4 == 0) goto LAB_02c318c8;
    lVar4 = *(long *)(lVar4 + 0x48);
    goto joined_r0x02c316dc;
  case 2:
    lVar4 = *(long *)PTR_DAT_05e5d4d8;
    if (*(int *)(lVar4 + 0xe4) == 0) {
      func_0x029f5bd0();
      lVar4 = *(long *)puVar2;
    }
    lVar4 = *(long *)(*(long *)(lVar4 + 0xb8) + 0x70);
    if (lVar4 == 0) goto LAB_02c318c8;
    lVar4 = *(long *)(lVar4 + 0x48);
    goto joined_r0x02c31854;
  case 3:
    lVar4 = *(long *)PTR_DAT_05e5d4d8;
    if (*(int *)(lVar4 + 0xe4) == 0) {
      func_0x029f5bd0();
      lVar4 = *(long *)puVar2;
    }
    lVar4 = *(long *)(*(long *)(lVar4 + 0xb8) + 0x70);
    if (lVar4 == 0) goto LAB_02c318c8;
    lVar4 = *(long *)(lVar4 + 0x50);
    goto joined_r0x02c31808;
  case 4:
    lVar4 = *(long *)PTR_DAT_05e5d4d8;
    if (*(int *)(lVar4 + 0xe4) == 0) {
      func_0x029f5bd0();
      lVar4 = *(long *)puVar2;
    }
    lVar4 = *(long *)(*(long *)(lVar4 + 0xb8) + 0x70);
    if (lVar4 == 0) goto LAB_02c318c8;
    lVar4 = *(long *)(lVar4 + 0x50);
    goto joined_r0x02c316dc;
  case 5:
    lVar4 = *(long *)PTR_DAT_05e5d4d8;
    if (*(int *)(lVar4 + 0xe4) == 0) {
      func_0x029f5bd0();
      lVar4 = *(long *)puVar2;
    }
    lVar4 = *(long *)(*(long *)(lVar4 + 0xb8) + 0x70);
    if (lVar4 == 0) goto LAB_02c318c8;
    lVar4 = *(long *)(lVar4 + 0x50);
    goto joined_r0x02c31854;
  case 6:
    lVar4 = *(long *)PTR_DAT_05e5d4d8;
    if (*(int *)(lVar4 + 0xe4) == 0) {
      func_0x029f5bd0();
      lVar4 = *(long *)puVar2;
    }
    lVar4 = *(long *)(*(long *)(lVar4 + 0xb8) + 0x70);
    if (lVar4 == 0) goto LAB_02c318c8;
    lVar4 = *(long *)(lVar4 + 0x58);
joined_r0x02c31808:
    if (lVar4 == 0) {
LAB_02c318c8:
                    /* WARNING: Subroutine does not return */
      Throw_NullReference_Wrapper();
    }
    if (*(uint *)(lVar4 + 0x18) <= *(uint *)(param_2 + 0x18)) {
code_r0x02c318cc:
                    /* WARNING: Subroutine does not return */
      Throw_Index_Wrapper();
    }
    lVar4 = lVar4 + (long)(int)*(uint *)(param_2 + 0x18) * 0x20;
    uStack_78 = *(undefined8 *)(lVar4 + 0x28);
    uStack_80 = *(undefined8 *)(lVar4 + 0x20);
    uStack_68 = *(undefined8 *)(lVar4 + 0x38);
    uStack_70 = *(undefined8 *)(lVar4 + 0x30);
    goto code_r0x02c318b4;
  case 7:
    lVar4 = *(long *)PTR_DAT_05e5d4d8;
    if (*(int *)(lVar4 + 0xe4) == 0) {
      func_0x029f5bd0();
      lVar4 = *(long *)puVar2;
    }
    lVar4 = *(long *)(*(long *)(lVar4 + 0xb8) + 0x70);
    if (lVar4 == 0) goto LAB_02c318c8;
    lVar4 = *(long *)(lVar4 + 0x58);
joined_r0x02c316dc:
    if (lVar4 == 0) goto LAB_02c318c8;
    uVar1 = *(uint *)(param_2 + 0x18);
    InfVal_op_Implicit_0x600004c(&uStack_80,0x3ff8000000000000,0);
    uStack_38 = uStack_78;
    uStack_40 = uStack_80;
    uStack_28 = uStack_68;
    uStack_30 = uStack_70;
    if (*(uint *)(lVar4 + 0x18) <= uVar1) goto code_r0x02c318cc;
    InfVal_op_Multiply_0x6000074(&uStack_a0,lVar4 + (long)(int)uVar1 * 0x20 + 0x20,&uStack_40,0);
    uStack_58 = uStack_98;
    uStack_60 = uStack_a0;
    uStack_48 = uStack_88;
    uStack_50 = uStack_90;
    InfVal_DiscardDecimal_return_0x600008c(&uStack_c0,&uStack_60,0);
    uStack_80 = uStack_c0;
    uStack_78 = uStack_b8;
    uStack_70 = uStack_b0;
    uStack_68 = uStack_a8;
    goto code_r0x02c318b4;
  case 8:
    lVar4 = *(long *)PTR_DAT_05e5d4d8;
    if (*(int *)(lVar4 + 0xe4) == 0) {
      func_0x029f5bd0();
      lVar4 = *(long *)puVar2;
    }
    lVar4 = *(long *)(*(long *)(lVar4 + 0xb8) + 0x70);
    if (lVar4 == 0) goto LAB_02c318c8;
    lVar4 = *(long *)(lVar4 + 0x58);
joined_r0x02c31854:
    if (lVar4 == 0) goto LAB_02c318c8;
    uVar1 = *(uint *)(param_2 + 0x18);
    InfVal_op_Implicit_0x600003f(&uStack_80,2,0);
    uStack_38 = uStack_78;
    uStack_40 = uStack_80;
    uStack_28 = uStack_68;
    uStack_30 = uStack_70;
    if (*(uint *)(lVar4 + 0x18) <= uVar1) goto code_r0x02c318cc;
    InfVal_op_Multiply_0x6000074(&uStack_a0,lVar4 + (long)(int)uVar1 * 0x20 + 0x20,&uStack_40,0);
    uStack_80 = uStack_a0;
    uStack_78 = uStack_98;
    uStack_70 = uStack_90;
    uStack_68 = uStack_88;
    goto code_r0x02c318b4;
  case 9:
  case 0xc:
    iVar3 = *(int *)(param_2 + 0x18) * 2 + 2;
    break;
  case 10:
    iVar3 = *(int *)(param_2 + 0x18) * 10 + 10;
    break;
  case 0xb:
    iVar3 = *(int *)(param_2 + 0x18) * 5 + 5;
    break;
  default:
    iVar3 = 0;
  }
  InfVal_op_Implicit_0x600003f(&uStack_80,iVar3,0);
code_r0x02c318b4:
  param_1[1] = uStack_78;
  *param_1 = uStack_80;
  param_1[3] = uStack_68;
  param_1[2] = uStack_70;
  return;
}

