/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b7cacc, Ghidra VA 02c7cacc. */

/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */

void Pet_manager_Balance_Reload(long param_1)

{
  int iVar1;
  undefined8 uVar2;
  long lVar3;
  ulong uVar4;
  long lVar5;
  long lVar6;
  int iVar7;
  long lVar8;
  uint uVar9;
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
  
  lVar3 = *(long *)(param_1 + 0x20);
  uStack_88 = 0;
  uStack_90 = 0;
  uStack_78 = 0;
  uStack_80 = 0;
  uStack_68 = 0;
  uStack_70 = 0;
  uStack_58 = 0;
  uStack_60 = 0;
  if (lVar3 != 0) {
    if (*(int *)(lVar3 + 0x18) == 0) {
LAB_02c7cc64:
                    /* WARNING: Subroutine does not return */
      Throw_Index_Wrapper();
    }
    lVar3 = *(long *)(lVar3 + 0x20);
    InfVal_op_Implicit_0x600003f(&uStack_b0,2,0);
    if (lVar3 != 0) {
      *(undefined8 *)(lVar3 + 0x20) = uStack_a8;
      *(undefined8 *)(lVar3 + 0x18) = uStack_b0;
      *(undefined8 *)(lVar3 + 0x30) = uStack_98;
      *(undefined8 *)(lVar3 + 0x28) = uStack_a0;
      Managed_WriteBarrier(lVar3 + 0x18,0);
      lVar3 = *(long *)(param_1 + 0x20);
      if (lVar3 != 0) {
        uVar9 = *(uint *)(lVar3 + 0x18);
        uVar4 = (ulong)uVar9;
        if (uVar4 == 0) goto LAB_02c7cc64;
        lVar8 = *(long *)(lVar3 + 0x20);
        if (lVar8 != 0) {
          *(undefined4 *)(lVar8 + 0x38) = 2;
          uVar2 = _UNK_0116fa98;
          if (1 < (int)uVar9) {
            lVar6 = 0;
            iVar7 = 2;
            do {
              uVar9 = (int)lVar6 + 1;
              if ((uint)uVar4 <= uVar9) goto LAB_02c7cc64;
              lVar3 = *(long *)(lVar3 + lVar6 * 8 + 0x28);
              InfVal_op_Implicit_0x600004c(&uStack_b0,uVar2,0);
              uStack_68 = uStack_a8;
              uStack_70 = uStack_b0;
              uStack_58 = uStack_98;
              uStack_60 = uStack_a0;
              InfVal_op_Multiply_0x6000074(&uStack_d0,lVar8 + 0x18,&uStack_70,0);
              uStack_88 = uStack_c8;
              uStack_90 = uStack_d0;
              uStack_78 = uStack_b8;
              uStack_80 = uStack_c0;
              InfVal_ToPrecision_0x6000089(&uStack_f0,&uStack_90,2,0);
              uStack_88 = uStack_e8;
              uStack_90 = uStack_f0;
              uStack_78 = uStack_d8;
              uStack_80 = uStack_e0;
              InfVal_DiscardDecimal_return_0x600008c(&uStack_110,&uStack_90,0);
              if (lVar3 == 0) goto LAB_02c7cc60;
              *(undefined8 *)(lVar3 + 0x20) = uStack_108;
              *(undefined8 *)(lVar3 + 0x18) = uStack_110;
              *(undefined8 *)(lVar3 + 0x30) = uStack_f8;
              *(undefined8 *)(lVar3 + 0x28) = uStack_100;
              Managed_WriteBarrier(lVar3 + 0x18,0);
              lVar3 = *(long *)(param_1 + 0x20);
              if (lVar3 == 0) goto LAB_02c7cc60;
              uVar4 = *(ulong *)(lVar3 + 0x18);
              if ((uint)uVar4 <= uVar9) goto LAB_02c7cc64;
              lVar8 = lVar3 + lVar6 * 8;
              lVar5 = *(long *)(lVar8 + 0x20);
              if ((lVar5 == 0) || (lVar8 = *(long *)(lVar8 + 0x28), lVar8 == 0)) goto LAB_02c7cc60;
              lVar6 = lVar6 + 1;
              iVar1 = iVar7 + *(int *)(lVar5 + 0x38);
              iVar7 = iVar7 + 2;
              *(int *)(lVar8 + 0x38) = iVar1;
            } while ((int)lVar6 + 1 < (int)(uint)uVar4);
          }
          return;
        }
      }
    }
  }
LAB_02c7cc60:
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

