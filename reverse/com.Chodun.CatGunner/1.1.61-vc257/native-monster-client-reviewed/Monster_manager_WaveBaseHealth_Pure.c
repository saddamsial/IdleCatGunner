/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b4eb20, Ghidra VA 02c4eb20. */

void Monster_manager_WaveBaseHealth_Pure(undefined8 *param_1,long param_2,uint param_3)

{
  uint uVar1;
  long lVar2;
  int iVar3;
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
  undefined8 uStack_30;
  undefined8 uStack_28;
  
  lVar2 = *(long *)(param_2 + 0x58);
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
  uStack_28 = 0;
  uStack_30 = 0;
  if (lVar2 == 0) {
                    /* WARNING: Subroutine does not return */
    Throw_NullReference_Wrapper();
  }
  uVar1 = *(uint *)(lVar2 + 0x18);
  if ((int)param_3 < (int)uVar1) {
    if (uVar1 <= param_3) {
LAB_02c4ec04:
                    /* WARNING: Subroutine does not return */
      Throw_Index_Wrapper();
    }
    lVar2 = lVar2 + (long)(int)param_3 * 0x20;
    uStack_40 = *(undefined8 *)(lVar2 + 0x20);
    uStack_38 = *(undefined8 *)(lVar2 + 0x28);
    uStack_30 = *(undefined8 *)(lVar2 + 0x30);
    uStack_28 = *(undefined8 *)(lVar2 + 0x38);
  }
  else {
    if (uVar1 == 0) goto LAB_02c4ec04;
    lVar2 = lVar2 + (long)(int)(uVar1 - 1) * 0x20;
    uStack_38 = *(undefined8 *)(lVar2 + 0x28);
    uStack_40 = *(undefined8 *)(lVar2 + 0x20);
    uStack_28 = *(undefined8 *)(lVar2 + 0x38);
    uStack_30 = *(undefined8 *)(lVar2 + 0x30);
    if ((int)(uVar1 - 1) < (int)param_3) {
      iVar3 = (param_3 - uVar1) + 1;
      do {
        InfVal_op_Implicit_0x600003f(&uStack_a0,3,0);
        uStack_58 = uStack_98;
        uStack_60 = uStack_a0;
        uStack_48 = uStack_88;
        uStack_50 = uStack_90;
        InfVal_op_Multiply_0x6000074(&uStack_c0,&uStack_40,&uStack_60,0);
        uStack_78 = uStack_b8;
        uStack_80 = uStack_c0;
        uStack_68 = uStack_a8;
        uStack_70 = uStack_b0;
        InfVal_ToPrecision_0x6000089(&uStack_e0,&uStack_80,2,0);
        iVar3 = iVar3 + -1;
        uStack_38 = uStack_d8;
        uStack_40 = uStack_e0;
        uStack_28 = uStack_c8;
        uStack_30 = uStack_d0;
      } while (iVar3 != 0);
    }
  }
  param_1[1] = uStack_38;
  *param_1 = uStack_40;
  param_1[3] = uStack_28;
  param_1[2] = uStack_30;
  return;
}

