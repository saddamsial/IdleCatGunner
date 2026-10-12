/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b324bc, Ghidra VA 02c324bc. */

/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */

void Relic_manager_Balance_Reload(long param_1)

{
  undefined8 *puVar1;
  undefined8 *puVar2;
  undefined *puVar3;
  long lVar4;
  long lVar5;
  long *plVar6;
  long *plVar7;
  ulong uVar8;
  long *plVar9;
  long lVar10;
  undefined8 uVar11;
  undefined8 uVar12;
  undefined8 uVar13;
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
  
  puVar3 = PTR_DAT_05e63090;
  if ((bRam000000000625c03f & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e63090);
    bRam000000000625c03f = 1;
  }
  uStack_88 = 0;
  uStack_90 = 0;
  uStack_78 = 0;
  uStack_80 = 0;
  uStack_68 = 0;
  uStack_70 = 0;
  uStack_58 = 0;
  uStack_60 = 0;
  lVar4 = func_0x029f5b40(*(undefined8 *)puVar3,300);
  plVar7 = (long *)(param_1 + 0x48);
  *plVar7 = lVar4;
  Managed_WriteBarrier(plVar7,lVar4);
  lVar4 = *plVar7;
  InfVal_op_Implicit_0x600003f(&uStack_b0,0x69,0);
  if (lVar4 != 0) {
    if (*(int *)(lVar4 + 0x18) == 0) {
LAB_02c327d4:
                    /* WARNING: Subroutine does not return */
      Throw_Index_Wrapper();
    }
    *(undefined8 *)(lVar4 + 0x28) = uStack_a8;
    *(undefined8 *)(lVar4 + 0x20) = uStack_b0;
    *(undefined8 *)(lVar4 + 0x38) = uStack_98;
    *(undefined8 *)(lVar4 + 0x30) = uStack_a0;
    Managed_WriteBarrier(lVar4 + 0x20,0);
    uVar11 = _UNK_0116fde8;
    lVar4 = *plVar7;
    if (lVar4 != 0) {
      uVar8 = 1;
      lVar10 = 0x40;
      do {
        if ((long)*(int *)(lVar4 + 0x18) <= (long)uVar8) {
          uVar8 = 0;
          lVar10 = 0x20;
          goto LAB_02c32620;
        }
        InfVal_op_Implicit_0x600004c(&uStack_b0,uVar11,0);
        uStack_68 = uStack_a8;
        uStack_70 = uStack_b0;
        uStack_58 = uStack_98;
        uStack_60 = uStack_a0;
        if ((ulong)*(uint *)(lVar4 + 0x18) <= uVar8 - 1) goto LAB_02c327d4;
        puVar1 = (undefined8 *)(lVar4 + lVar10);
        InfVal_op_Multiply_0x6000074(&uStack_d0,puVar1 + -4,&uStack_70,0);
        uStack_88 = uStack_c8;
        uStack_90 = uStack_d0;
        uStack_78 = uStack_b8;
        uStack_80 = uStack_c0;
        InfVal_ToPrecision_0x6000089(&uStack_f0,&uStack_90,3,0);
        if (*(uint *)(lVar4 + 0x18) <= uVar8) goto LAB_02c327d4;
        lVar10 = lVar10 + 0x20;
        puVar1[1] = uStack_e8;
        *puVar1 = uStack_f0;
        puVar1[3] = uStack_d8;
        puVar1[2] = uStack_e0;
        Managed_WriteBarrier(puVar1,0);
        lVar4 = *plVar7;
        uVar8 = uVar8 + 1;
      } while (lVar4 != 0);
    }
  }
  goto LAB_02c327b4;
  while( true ) {
    if (*(uint *)(lVar4 + 0x18) <= uVar8) goto LAB_02c327d4;
    puVar1 = (undefined8 *)(lVar4 + lVar10);
    InfVal_op_Implicit_0x600003f(&uStack_b0,100,0);
    uStack_68 = uStack_a8;
    uStack_70 = uStack_b0;
    uStack_58 = uStack_98;
    uStack_60 = uStack_a0;
    InfVal_op_Subtraction_0x6000073(&uStack_d0,puVar1,&uStack_70,0);
    puVar1[1] = uStack_c8;
    *puVar1 = uStack_d0;
    puVar1[3] = uStack_b8;
    puVar1[2] = uStack_c0;
    Managed_WriteBarrier(puVar1,0);
    lVar4 = *plVar7;
    if (lVar4 == 0) break;
    if (*(uint *)(lVar4 + 0x18) <= uVar8) goto LAB_02c327d4;
    puVar1 = (undefined8 *)(lVar4 + lVar10);
    InfVal_ToPrecision_0x6000089(&uStack_f0,puVar1,3,0);
    if (*(uint *)(lVar4 + 0x18) <= uVar8) goto LAB_02c327d4;
    lVar10 = lVar10 + 0x20;
    uVar8 = uVar8 + 1;
    puVar1[1] = uStack_e8;
    *puVar1 = uStack_f0;
    puVar1[3] = uStack_d8;
    puVar1[2] = uStack_e0;
    Managed_WriteBarrier(puVar1,0);
    lVar4 = *plVar7;
    if (lVar4 == 0) break;
LAB_02c32620:
    if ((long)(int)*(uint *)(lVar4 + 0x18) <= (long)uVar8) {
      lVar4 = func_0x029f5b40(*(undefined8 *)puVar3,300);
      plVar9 = (long *)(param_1 + 0x50);
      *plVar9 = lVar4;
      Managed_WriteBarrier(plVar9,lVar4);
      lVar4 = func_0x029f5b40(*(undefined8 *)puVar3,300);
      plVar6 = (long *)(param_1 + 0x58);
      *plVar6 = lVar4;
      Managed_WriteBarrier(plVar6,lVar4);
      lVar4 = *(long *)(param_1 + 0x48);
      if (lVar4 != 0) {
        uVar8 = 0;
        lVar10 = 0x20;
        goto LAB_02c32724;
      }
      break;
    }
  }
  goto LAB_02c327b4;
  while( true ) {
    if (*(uint *)(lVar5 + 0x18) <= uVar8) goto LAB_02c327d4;
    puVar1 = (undefined8 *)(lVar4 + lVar10);
    puVar2 = (undefined8 *)(lVar5 + lVar10);
    uVar13 = *puVar1;
    uVar12 = puVar1[3];
    uVar11 = puVar1[2];
    puVar2[1] = puVar1[1];
    *puVar2 = uVar13;
    puVar2[3] = uVar12;
    puVar2[2] = uVar11;
    Managed_WriteBarrier(puVar2,0);
    lVar4 = *plVar7;
    if (lVar4 == 0) break;
    if (*(uint *)(lVar4 + 0x18) <= uVar8) goto LAB_02c327d4;
    lVar5 = *plVar6;
    if (lVar5 == 0) break;
    if (*(uint *)(lVar5 + 0x18) <= uVar8) goto LAB_02c327d4;
    puVar1 = (undefined8 *)(lVar4 + lVar10);
    puVar2 = (undefined8 *)(lVar5 + lVar10);
    uVar13 = *puVar1;
    uVar12 = puVar1[3];
    uVar11 = puVar1[2];
    lVar10 = lVar10 + 0x20;
    uVar8 = uVar8 + 1;
    puVar2[1] = puVar1[1];
    *puVar2 = uVar13;
    puVar2[3] = uVar12;
    puVar2[2] = uVar11;
    Managed_WriteBarrier(puVar2,0);
    lVar4 = *plVar7;
    if (lVar4 == 0) break;
LAB_02c32724:
    if ((long)(int)*(uint *)(lVar4 + 0x18) <= (long)uVar8) {
      return;
    }
    if (*(uint *)(lVar4 + 0x18) <= uVar8) goto LAB_02c327d4;
    lVar5 = *plVar9;
    if (lVar5 == 0) break;
  }
LAB_02c327b4:
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

