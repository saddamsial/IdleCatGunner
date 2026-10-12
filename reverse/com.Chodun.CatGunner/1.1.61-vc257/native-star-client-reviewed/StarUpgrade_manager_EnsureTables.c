/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b6d36c, Ghidra VA 02c6d36c. */

/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */

void StarUpgrade_manager_EnsureTables(void)

{
  long lVar1;
  ulong uVar2;
  undefined *puVar3;
  undefined *puVar4;
  long lVar5;
  undefined8 uVar6;
  undefined8 *puVar7;
  long lVar8;
  long lVar9;
  long lVar10;
  long lVar11;
  int iVar12;
  double dVar13;
  double dVar14;
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
  
  puVar4 = PTR_DAT_05e5e058;
  if ((bRam000000000625c2a7 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e63090);
    func_0x029f5a50(PTR_DAT_05e5d790);
    func_0x029f5a50(PTR_DAT_05e59000);
    func_0x029f5a50(PTR_DAT_05e5e058);
    bRam000000000625c2a7 = 1;
  }
  lVar5 = *(long *)puVar4;
  uStack_a8 = 0;
  uStack_b0 = 0;
  uStack_98 = 0;
  uStack_a0 = 0;
  uStack_88 = 0;
  uStack_90 = 0;
  uStack_78 = 0;
  uStack_80 = 0;
  if (*(int *)(lVar5 + 0xe4) == 0) {
    func_0x029f5bd0();
    lVar5 = *(long *)puVar4;
  }
  puVar3 = PTR_DAT_05e63090;
  if (*(char *)(*(long *)(lVar5 + 0xb8) + 0x30) != '\0') {
    return;
  }
  uVar6 = func_0x029f5b40(*(undefined8 *)PTR_DAT_05e63090,0x15);
  lVar5 = *(long *)puVar4;
  if (*(int *)(lVar5 + 0xe4) == 0) {
    func_0x029f5bd0(lVar5);
    lVar5 = *(long *)puVar4;
  }
  puVar7 = (undefined8 *)(*(long *)(lVar5 + 0xb8) + 0x18);
  *puVar7 = uVar6;
  Managed_WriteBarrier(puVar7,uVar6);
  uVar6 = func_0x029f5b40(*(undefined8 *)puVar3,0x15);
  puVar7 = (undefined8 *)(*(long *)(*(long *)puVar4 + 0xb8) + 0x20);
  *puVar7 = uVar6;
  Managed_WriteBarrier(puVar7,uVar6);
  uVar6 = func_0x029f5b40(*(undefined8 *)PTR_DAT_05e5d790,0x15);
  puVar7 = (undefined8 *)(*(long *)(*(long *)puVar4 + 0xb8) + 0x28);
  *puVar7 = uVar6;
  Managed_WriteBarrier(puVar7,uVar6);
  lVar5 = *(long *)(*(long *)(*(long *)puVar4 + 0xb8) + 0x18);
  InfVal_op_Implicit_0x600003f(&uStack_d0,0,0);
  if (lVar5 != 0) {
    if (*(int *)(lVar5 + 0x18) == 0) {
LAB_02c6d6e0:
                    /* WARNING: Subroutine does not return */
      Throw_Index_Wrapper();
    }
    *(undefined8 *)(lVar5 + 0x28) = uStack_c8;
    *(undefined8 *)(lVar5 + 0x20) = uStack_d0;
    *(undefined8 *)(lVar5 + 0x38) = uStack_b8;
    *(undefined8 *)(lVar5 + 0x30) = uStack_c0;
    Managed_WriteBarrier(lVar5 + 0x20,0);
    lVar5 = *(long *)(*(long *)(*(long *)puVar4 + 0xb8) + 0x20);
    InfVal_op_Implicit_0x600003f(&uStack_f0,100,0);
    if (lVar5 != 0) {
      if (*(int *)(lVar5 + 0x18) == 0) goto LAB_02c6d6e0;
      *(undefined8 *)(lVar5 + 0x28) = uStack_e8;
      *(undefined8 *)(lVar5 + 0x20) = uStack_f0;
      *(undefined8 *)(lVar5 + 0x38) = uStack_d8;
      *(undefined8 *)(lVar5 + 0x30) = uStack_e0;
      Managed_WriteBarrier(lVar5 + 0x20,0);
      puVar3 = PTR_DAT_05e59000;
      lVar5 = *(long *)(*(long *)(*(long *)puVar4 + 0xb8) + 0x28);
      if (lVar5 != 0) {
        if (*(int *)(lVar5 + 0x18) == 0) goto LAB_02c6d6e0;
        dVar14 = 1.0;
        *(undefined4 *)(lVar5 + 0x20) = 0;
        uVar6 = _UNK_01170928;
        lVar11 = 0;
        iVar12 = 0x32;
        lVar5 = -0x280;
        while( true ) {
          if (*(int *)(*(long *)puVar3 + 0xe4) == 0) {
            func_0x029f5bd0();
          }
          dVar13 = (double)Math_Pow_0x60008ae(uVar6,(double)(int)lVar11,0);
          dVar14 = dVar14 * dVar13 * 1.5;
          InfVal_op_Implicit_0x600004c(&uStack_d0,(dVar14 + -1.0) * 100.0,0);
          uStack_a8 = uStack_c8;
          uStack_b0 = uStack_d0;
          uStack_98 = uStack_b8;
          uStack_a0 = uStack_c0;
          InfVal_ToPrecision_0x6000089(&uStack_f0,&uStack_b0,2,0);
          lVar8 = *(long *)puVar4;
          uStack_88 = uStack_e8;
          uStack_90 = uStack_f0;
          uStack_78 = uStack_d8;
          uStack_80 = uStack_e0;
          if (*(int *)(lVar8 + 0xe4) == 0) {
            func_0x029f5bd0();
            lVar8 = *(long *)puVar4;
          }
          lVar8 = *(long *)(*(long *)(lVar8 + 0xb8) + 0x18);
          if (lVar8 == 0) break;
          uVar2 = lVar11 + 1;
          if (*(uint *)(lVar8 + 0x18) <= uVar2) goto LAB_02c6d6e0;
          lVar8 = lVar8 + lVar5;
          *(undefined8 *)(lVar8 + 0x2c8) = uStack_88;
          *(undefined8 *)(lVar8 + 0x2c0) = uStack_90;
          *(undefined8 *)(lVar8 + 0x2d8) = uStack_78;
          *(undefined8 *)(lVar8 + 0x2d0) = uStack_80;
          Managed_WriteBarrier(lVar8 + 0x2c0,0);
          lVar8 = *(long *)(*(long *)(*(long *)puVar4 + 0xb8) + 0x20);
          InfVal_op_Implicit_0x600003f(&uStack_110,100,0);
          uStack_a8 = uStack_108;
          uStack_b0 = uStack_110;
          uStack_98 = uStack_f8;
          uStack_a0 = uStack_100;
          InfVal_op_Addition_0x6000072(&uStack_130,&uStack_90,&uStack_b0,0);
          if (lVar8 == 0) break;
          if (*(uint *)(lVar8 + 0x18) <= uVar2) goto LAB_02c6d6e0;
          lVar8 = lVar8 + lVar5;
          *(undefined8 *)(lVar8 + 0x2c8) = uStack_128;
          *(undefined8 *)(lVar8 + 0x2c0) = uStack_130;
          *(undefined8 *)(lVar8 + 0x2d8) = uStack_118;
          *(undefined8 *)(lVar8 + 0x2d0) = uStack_120;
          Managed_WriteBarrier(lVar8 + 0x2c0,0);
          lVar8 = *(long *)puVar4;
          lVar9 = *(long *)(lVar8 + 0xb8);
          lVar10 = *(long *)(lVar9 + 0x28);
          if (lVar10 == 0) break;
          if (*(uint *)(lVar10 + 0x18) <= uVar2) goto LAB_02c6d6e0;
          lVar1 = lVar11 * 4;
          lVar5 = lVar5 + 0x20;
          lVar11 = lVar11 + 1;
          *(int *)(lVar10 + lVar1 + 0x24) = iVar12;
          iVar12 = iVar12 + 0x32;
          if (lVar5 == 0) {
            if (*(int *)(lVar8 + 0xe4) == 0) {
              func_0x029f5bd0();
              lVar9 = *(long *)(*(long *)puVar4 + 0xb8);
            }
            *(undefined1 *)(lVar9 + 0x30) = 1;
            return;
          }
        }
      }
    }
  }
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

