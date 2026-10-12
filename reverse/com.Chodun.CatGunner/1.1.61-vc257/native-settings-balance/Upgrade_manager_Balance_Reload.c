/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2bb24dc, Ghidra VA 02cb24dc. */

/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */

void Upgrade_manager_Balance_Reload(long param_1)

{
  uint uVar1;
  undefined8 uVar2;
  undefined *puVar3;
  undefined *puVar4;
  long lVar5;
  int iVar6;
  long lVar7;
  int *piVar8;
  long *plVar9;
  ulong uVar10;
  undefined8 uVar11;
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
  
  puVar4 = PTR_DAT_05e63090;
  if ((bRam000000000625c554 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e63090);
    func_0x029f5a50(PTR_DAT_05e5d790);
    bRam000000000625c554 = 1;
  }
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
  lVar5 = func_0x029f5b40(*(undefined8 *)puVar4,0x2711);
  plVar9 = (long *)(param_1 + 0x38);
  *plVar9 = lVar5;
  func_0x029f59f4(plVar9,lVar5);
  lVar5 = *plVar9;
  InfVal_op_Implicit_0x600003f(&uStack_e0,100,0);
  puVar3 = PTR_DAT_05e5d790;
  if (lVar5 != 0) {
    if (*(int *)(lVar5 + 0x18) == 0) {
LAB_02cb291c:
                    /* WARNING: Subroutine does not return */
      Throw_Index_Wrapper();
    }
    *(undefined8 *)(lVar5 + 0x28) = uStack_d8;
    *(undefined8 *)(lVar5 + 0x20) = uStack_e0;
    *(undefined8 *)(lVar5 + 0x38) = uStack_c8;
    *(undefined8 *)(lVar5 + 0x30) = uStack_d0;
    func_0x029f59f4(lVar5 + 0x20,0);
    uVar2 = _UNK_0116fff8;
    uVar10 = 1;
    do {
      lVar5 = *plVar9;
      if (lVar5 == 0) goto LAB_02cb2920;
      InfVal_op_Implicit_0x600004c(&uStack_e0,uVar2,0);
      uStack_98 = uStack_d8;
      uStack_a0 = uStack_e0;
      uStack_88 = uStack_c8;
      uStack_90 = uStack_d0;
      if ((ulong)*(uint *)(lVar5 + 0x18) <= uVar10 - 1) goto LAB_02cb291c;
      InfVal_op_Multiply_0x6000074(&uStack_100,lVar5 + 0x20 + (uVar10 - 1) * 0x20,&uStack_a0,0);
      if (*(uint *)(lVar5 + 0x18) <= uVar10) goto LAB_02cb291c;
      lVar7 = lVar5 + uVar10 * 0x20;
      *(undefined8 *)(lVar7 + 0x28) = uStack_f8;
      *(undefined8 *)(lVar7 + 0x20) = uStack_100;
      *(undefined8 *)(lVar7 + 0x38) = uStack_e8;
      *(undefined8 *)(lVar7 + 0x30) = uStack_f0;
      func_0x029f59f4(lVar5 + 0x20 + uVar10 * 0x20,0);
      lVar5 = *plVar9;
      if (lVar5 == 0) goto LAB_02cb2920;
      if (*(uint *)(lVar5 + 0x18) <= uVar10) goto LAB_02cb291c;
      lVar7 = lVar5 + uVar10 * 0x20;
      InfVal_ToPrecision_0x6000089(&uStack_120,lVar7 + 0x20,3,0);
      if (*(uint *)(lVar5 + 0x18) <= uVar10) goto LAB_02cb291c;
      *(undefined8 *)(lVar7 + 0x28) = uStack_118;
      *(undefined8 *)(lVar7 + 0x20) = uStack_120;
      *(undefined8 *)(lVar7 + 0x38) = uStack_108;
      *(undefined8 *)(lVar7 + 0x30) = uStack_110;
      func_0x029f59f4(lVar7 + 0x20,0);
      uVar10 = uVar10 + 1;
    } while (uVar10 != 0x2711);
    lVar5 = func_0x029f5b40(*(undefined8 *)puVar3,0x2711);
    plVar9 = (long *)(param_1 + 0x48);
    *plVar9 = lVar5;
    func_0x029f59f4(plVar9,lVar5);
    lVar5 = *plVar9;
    if (lVar5 != 0) {
      uVar1 = *(uint *)(lVar5 + 0x18);
      if ((ulong)uVar1 == 0) goto LAB_02cb291c;
      lVar7 = 0;
      *(undefined4 *)(lVar5 + 0x20) = 100;
      piVar8 = (int *)(lVar5 + 0x24);
      do {
        if ((ulong)uVar1 * 8 + -8 == lVar7) goto LAB_02cb291c;
        iVar6 = (int)lVar7;
        lVar7 = lVar7 + 8;
        *piVar8 = iVar6 + 0x6c;
        piVar8 = piVar8 + 1;
      } while (lVar7 != 80000);
      lVar5 = func_0x029f5b40(*(undefined8 *)puVar4,0x2711);
      plVar9 = (long *)(param_1 + 0x40);
      *plVar9 = lVar5;
      func_0x029f59f4(plVar9,lVar5);
      lVar5 = *plVar9;
      InfVal_op_Implicit_0x600003f(&uStack_e0,100,0);
      if (lVar5 != 0) {
        if (*(int *)(lVar5 + 0x18) == 0) goto LAB_02cb291c;
        *(undefined8 *)(lVar5 + 0x28) = uStack_d8;
        *(undefined8 *)(lVar5 + 0x20) = uStack_e0;
        *(undefined8 *)(lVar5 + 0x38) = uStack_c8;
        *(undefined8 *)(lVar5 + 0x30) = uStack_d0;
        func_0x029f59f4(lVar5 + 0x20,0);
        uVar10 = 1;
        do {
          lVar5 = *plVar9;
          if (lVar5 == 0) goto LAB_02cb2920;
          InfVal_op_Implicit_0x600004c(&uStack_e0,uVar2,0);
          uStack_98 = uStack_d8;
          uStack_a0 = uStack_e0;
          uStack_88 = uStack_c8;
          uStack_90 = uStack_d0;
          if ((ulong)*(uint *)(lVar5 + 0x18) <= uVar10 - 1) goto LAB_02cb291c;
          InfVal_op_Multiply_0x6000074(&uStack_100,lVar5 + 0x20 + (uVar10 - 1) * 0x20,&uStack_a0,0);
          if (*(uint *)(lVar5 + 0x18) <= uVar10) goto LAB_02cb291c;
          lVar7 = lVar5 + uVar10 * 0x20;
          *(undefined8 *)(lVar7 + 0x28) = uStack_f8;
          *(undefined8 *)(lVar7 + 0x20) = uStack_100;
          *(undefined8 *)(lVar7 + 0x38) = uStack_e8;
          *(undefined8 *)(lVar7 + 0x30) = uStack_f0;
          func_0x029f59f4(lVar5 + 0x20 + uVar10 * 0x20,0);
          lVar5 = *plVar9;
          if (lVar5 == 0) goto LAB_02cb2920;
          if (*(uint *)(lVar5 + 0x18) <= uVar10) goto LAB_02cb291c;
          lVar7 = lVar5 + uVar10 * 0x20;
          InfVal_ToPrecision_0x6000089(&uStack_120,lVar7 + 0x20,3,0);
          if (*(uint *)(lVar5 + 0x18) <= uVar10) goto LAB_02cb291c;
          *(undefined8 *)(lVar7 + 0x28) = uStack_118;
          *(undefined8 *)(lVar7 + 0x20) = uStack_120;
          *(undefined8 *)(lVar7 + 0x38) = uStack_108;
          *(undefined8 *)(lVar7 + 0x30) = uStack_110;
          func_0x029f59f4(lVar7 + 0x20,0);
          uVar10 = uVar10 + 1;
        } while (uVar10 != 0x2711);
        lVar5 = func_0x029f5b40(*(undefined8 *)puVar4,0x2711);
        plVar9 = (long *)(param_1 + 0x30);
        *plVar9 = lVar5;
        func_0x029f59f4(plVar9,lVar5);
        InfVal_op_Implicit_0x600004c(&uStack_80,0x4049000000000000,0);
        uVar2 = _UNK_0116f9f0;
        uVar10 = 0;
        while( true ) {
          lVar5 = *plVar9;
          InfVal_DiscardDecimal_return_0x600008c(&uStack_e0,&uStack_80,0);
          uStack_98 = uStack_d8;
          uStack_a0 = uStack_e0;
          uStack_88 = uStack_c8;
          uStack_90 = uStack_d0;
          InfVal_ToPrecision_0x6000089(&uStack_100,&uStack_a0,3,0);
          if (lVar5 == 0) break;
          if (*(uint *)(lVar5 + 0x18) <= uVar10) goto LAB_02cb291c;
          lVar5 = lVar5 + uVar10 * 0x20;
          *(undefined8 *)(lVar5 + 0x28) = uStack_f8;
          *(undefined8 *)(lVar5 + 0x20) = uStack_100;
          *(undefined8 *)(lVar5 + 0x38) = uStack_e8;
          *(undefined8 *)(lVar5 + 0x30) = uStack_f0;
          func_0x029f59f4(lVar5 + 0x20,0);
          uVar11 = uVar2;
          if (0x270 < uVar10 >> 3) {
            uVar11 = 0x4000000000000000;
          }
          InfVal_op_Implicit_0x600004c(&uStack_e0,uVar11,0);
          uStack_98 = uStack_d8;
          uStack_a0 = uStack_e0;
          uStack_88 = uStack_c8;
          uStack_90 = uStack_d0;
          InfVal_op_Multiply_0x6000074(&uStack_100,&uStack_80,&uStack_a0,0);
          uStack_b8 = uStack_f8;
          uStack_c0 = uStack_100;
          uStack_a8 = uStack_e8;
          uStack_b0 = uStack_f0;
          InfVal_ToPrecision_0x6000089(&uStack_120,&uStack_c0,4,0);
          uStack_78 = uStack_118;
          uStack_80 = uStack_120;
          uStack_68 = uStack_108;
          uStack_70 = uStack_110;
          uVar10 = uVar10 + 1;
          if (uVar10 == 0x2711) {
            return;
          }
        }
      }
    }
  }
LAB_02cb2920:
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

