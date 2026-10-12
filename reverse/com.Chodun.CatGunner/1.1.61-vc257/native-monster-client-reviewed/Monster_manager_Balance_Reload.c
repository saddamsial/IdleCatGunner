/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b4d6bc, Ghidra VA 02c4d6bc. */

void Monster_manager_Balance_Reload(long param_1)

{
  undefined8 *puVar1;
  ulong uVar2;
  long lVar3;
  long lVar4;
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
  
  lVar4 = *(long *)(param_1 + 0x58);
  uStack_68 = 0;
  uStack_70 = 0;
  uStack_58 = 0;
  uStack_60 = 0;
  uStack_48 = 0;
  uStack_50 = 0;
  uStack_38 = 0;
  uStack_40 = 0;
  if (lVar4 != 0) {
    uVar2 = 1;
    lVar3 = 0x40;
    do {
      if ((long)*(int *)(lVar4 + 0x18) <= (long)uVar2) {
        return;
      }
      InfVal_op_Implicit_0x600003f(&uStack_90,3,0);
      uStack_48 = uStack_88;
      uStack_50 = uStack_90;
      uStack_38 = uStack_78;
      uStack_40 = uStack_80;
      if ((ulong)*(uint *)(lVar4 + 0x18) <= uVar2 - 1) {
LAB_02c4d7a0:
                    /* WARNING: Subroutine does not return */
        Throw_Index_Wrapper();
      }
      puVar1 = (undefined8 *)(lVar4 + lVar3);
      InfVal_op_Multiply_0x6000074(&uStack_b0,puVar1 + -4,&uStack_50,0);
      uStack_68 = uStack_a8;
      uStack_70 = uStack_b0;
      uStack_58 = uStack_98;
      uStack_60 = uStack_a0;
      InfVal_ToPrecision_0x6000089(&uStack_d0,&uStack_70,2,0);
      if (*(uint *)(lVar4 + 0x18) <= uVar2) goto LAB_02c4d7a0;
      lVar3 = lVar3 + 0x20;
      puVar1[1] = uStack_c8;
      *puVar1 = uStack_d0;
      puVar1[3] = uStack_b8;
      puVar1[2] = uStack_c0;
      Managed_WriteBarrier(puVar1,0);
      lVar4 = *(long *)(param_1 + 0x58);
      uVar2 = uVar2 + 1;
    } while (lVar4 != 0);
  }
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

