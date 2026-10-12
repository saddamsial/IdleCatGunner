/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2bacc18, Ghidra VA 02cacc18. */

void Tree_manager_Balance_Reload(long param_1)

{
  undefined8 *puVar1;
  undefined *puVar2;
  undefined *puVar3;
  long lVar4;
  long *plVar5;
  ulong uVar6;
  long lVar7;
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
  
  puVar2 = PTR_DAT_05e63090;
  if ((bRam000000000625c519 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e64a98);
    func_0x029f5a50(PTR_DAT_05e63090);
    bRam000000000625c519 = 1;
  }
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
  lVar4 = func_0x029f5b40(*(undefined8 *)puVar2,5000);
  plVar5 = (long *)(param_1 + 0x70);
  *plVar5 = lVar4;
  func_0x029f59f4(plVar5,lVar4);
  puVar3 = PTR_DAT_05e64a98;
  lVar4 = *plVar5;
  if (lVar4 != 0) {
    uVar6 = 0;
    lVar7 = 0x20;
    do {
      if ((long)*(int *)(lVar4 + 0x18) <= (long)uVar6) {
        lVar4 = func_0x029f5b40(*(undefined8 *)puVar2,5000);
        plVar5 = (long *)(param_1 + 0x78);
        *plVar5 = lVar4;
        func_0x029f59f4(plVar5,lVar4);
        lVar4 = *plVar5;
        if (lVar4 != 0) {
          uVar6 = 0;
          lVar7 = 0x20;
          goto LAB_02cacd9c;
        }
        break;
      }
      if (uVar6 == 0) {
        InfVal_op_Implicit_0x600003f(&uStack_f0,0xfa,0);
        uStack_a8 = uStack_e8;
        uStack_b0 = uStack_f0;
        uStack_98 = uStack_d8;
        uStack_a0 = uStack_e0;
      }
      else {
        InfVal_op_Implicit_0x600003f(&uStack_f0,3,0);
        uStack_68 = uStack_e8;
        uStack_70 = uStack_f0;
        uStack_58 = uStack_d8;
        uStack_60 = uStack_e0;
        if (*(uint *)(lVar4 + 0x18) <= (int)uVar6 - 1U) goto LAB_02cace90;
        InfVal_op_Multiply_0x6000074(&uStack_110,lVar4 + lVar7 + -0x20,&uStack_70,0);
        uStack_88 = uStack_108;
        uStack_90 = uStack_110;
        uStack_78 = uStack_f8;
        uStack_80 = uStack_100;
        InfVal_ToPrecision_0x6000089(&uStack_b0,&uStack_90,2,0);
      }
      if (*(uint *)(lVar4 + 0x18) <= uVar6) goto LAB_02cace90;
      puVar1 = (undefined8 *)(lVar4 + lVar7);
      puVar1[1] = uStack_a8;
      *puVar1 = uStack_b0;
      puVar1[3] = uStack_98;
      puVar1[2] = uStack_a0;
      func_0x029f59f4(puVar1,0);
      lVar4 = *plVar5;
      uVar6 = uVar6 + 1;
      lVar7 = lVar7 + 0x20;
    } while (lVar4 != 0);
  }
  goto LAB_02cace50;
LAB_02cacd9c:
  do {
    if ((long)*(int *)(lVar4 + 0x18) <= (long)uVar6) {
      if (*(long *)(param_1 + 0x80) != 0) {
        func_0x03daeca4(*(long *)(param_1 + 0x80),*(undefined8 *)puVar3);
        if (*(long *)(param_1 + 0x88) != 0) {
          func_0x03daeca4(*(long *)(param_1 + 0x88),*(undefined8 *)puVar3);
          return;
        }
      }
      break;
    }
    if (uVar6 == 0) {
      InfVal_op_Implicit_0x600003f(&uStack_f0,0x14,0);
      uStack_c8 = uStack_e8;
      uStack_d0 = uStack_f0;
      uStack_b8 = uStack_d8;
      uStack_c0 = uStack_e0;
    }
    else {
      InfVal_op_Implicit_0x600003f(&uStack_f0,3,0);
      uStack_68 = uStack_e8;
      uStack_70 = uStack_f0;
      uStack_58 = uStack_d8;
      uStack_60 = uStack_e0;
      if (*(uint *)(lVar4 + 0x18) <= (int)uVar6 - 1U) {
LAB_02cace90:
                    /* WARNING: Subroutine does not return */
        Throw_Index_Wrapper();
      }
      InfVal_op_Multiply_0x6000074(&uStack_110,lVar4 + lVar7 + -0x20,&uStack_70,0);
      uStack_88 = uStack_108;
      uStack_90 = uStack_110;
      uStack_78 = uStack_f8;
      uStack_80 = uStack_100;
      InfVal_ToPrecision_0x6000089(&uStack_d0,&uStack_90,2,0);
    }
    if (*(uint *)(lVar4 + 0x18) <= uVar6) goto LAB_02cace90;
    puVar1 = (undefined8 *)(lVar4 + lVar7);
    puVar1[1] = uStack_c8;
    *puVar1 = uStack_d0;
    puVar1[3] = uStack_b8;
    puVar1[2] = uStack_c0;
    func_0x029f59f4(puVar1,0);
    lVar4 = *plVar5;
    uVar6 = uVar6 + 1;
    lVar7 = lVar7 + 0x20;
  } while (lVar4 != 0);
LAB_02cace50:
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

