/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b4dbf0, Ghidra VA 02c4dbf0. */

void Monster_manager_WaveBaseHealth_return(undefined8 *param_1,long param_2,uint param_3)

{
  uint uVar1;
  int iVar2;
  int iVar3;
  long lVar4;
  undefined8 uVar5;
  undefined8 uVar6;
  undefined8 uVar7;
  undefined8 uVar8;
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
  
  lVar4 = *(long *)(param_2 + 0x58);
  uStack_58 = 0;
  uStack_60 = 0;
  uStack_48 = 0;
  uStack_50 = 0;
  uStack_38 = 0;
  uStack_40 = 0;
  uStack_28 = 0;
  uStack_30 = 0;
  if (lVar4 == 0) {
                    /* WARNING: Subroutine does not return */
    Throw_NullReference_Wrapper();
  }
  uVar1 = *(uint *)(lVar4 + 0x18);
  if ((int)param_3 < (int)uVar1) {
    if (uVar1 <= param_3) {
LAB_02c4dd1c:
                    /* WARNING: Subroutine does not return */
      Throw_Index_Wrapper();
    }
    lVar4 = lVar4 + (long)(int)param_3 * 0x20;
    uVar6 = *(undefined8 *)(lVar4 + 0x28);
    uVar5 = *(undefined8 *)(lVar4 + 0x20);
    uVar8 = *(undefined8 *)(lVar4 + 0x38);
    uVar7 = *(undefined8 *)(lVar4 + 0x30);
  }
  else {
    iVar2 = *(int *)(param_2 + 0x80);
    iVar3 = uVar1 - 1;
    if ((iVar2 < iVar3) || ((int)param_3 < iVar2)) {
      *(int *)(param_2 + 0x80) = iVar3;
      if (uVar1 == 0) goto LAB_02c4dd1c;
      lVar4 = lVar4 + (long)iVar3 * 0x20;
      uVar7 = *(undefined8 *)(lVar4 + 0x28);
      uVar6 = *(undefined8 *)(lVar4 + 0x20);
      uVar5 = *(undefined8 *)(lVar4 + 0x30);
      *(undefined8 *)(param_2 + 0xa0) = *(undefined8 *)(lVar4 + 0x38);
      *(undefined8 *)(param_2 + 0x98) = uVar5;
      *(undefined8 *)(param_2 + 0x90) = uVar7;
      *(undefined8 *)(param_2 + 0x88) = uVar6;
      Managed_WriteBarrier(param_2 + 0x88,0);
      iVar2 = *(int *)(param_2 + 0x80);
    }
    while (iVar2 < (int)param_3) {
      InfVal_op_Implicit_0x600003f(&uStack_80,3,0);
      uStack_38 = uStack_78;
      uStack_40 = uStack_80;
      uStack_28 = uStack_68;
      uStack_30 = uStack_70;
      InfVal_op_Multiply_0x6000074(&uStack_a0,param_2 + 0x88,&uStack_40,0);
      uStack_58 = uStack_98;
      uStack_60 = uStack_a0;
      uStack_48 = uStack_88;
      uStack_50 = uStack_90;
      InfVal_ToPrecision_0x6000089(&uStack_c0,&uStack_60,2,0);
      *(undefined8 *)(param_2 + 0x90) = uStack_b8;
      *(undefined8 *)(param_2 + 0x88) = uStack_c0;
      *(undefined8 *)(param_2 + 0xa0) = uStack_a8;
      *(undefined8 *)(param_2 + 0x98) = uStack_b0;
      Managed_WriteBarrier(param_2 + 0x88,0);
      iVar2 = *(int *)(param_2 + 0x80) + 1;
      *(int *)(param_2 + 0x80) = iVar2;
    }
    uVar6 = *(undefined8 *)(param_2 + 0x90);
    uVar5 = *(undefined8 *)(param_2 + 0x88);
    uVar8 = *(undefined8 *)(param_2 + 0xa0);
    uVar7 = *(undefined8 *)(param_2 + 0x98);
  }
  param_1[1] = uVar6;
  *param_1 = uVar5;
  param_1[3] = uVar8;
  param_1[2] = uVar7;
  return;
}

