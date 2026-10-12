/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b56c34, Ghidra VA 02c56c34. */

void Raid_manager_Boss_Health_return(undefined8 *param_1,uint param_2)

{
  int iVar1;
  uint uVar2;
  undefined *puVar3;
  undefined *puVar4;
  undefined *puVar5;
  undefined *puVar6;
  long lVar7;
  long lVar8;
  long lVar9;
  double dVar10;
  undefined8 uStack_1a0;
  undefined8 uStack_198;
  undefined8 uStack_190;
  undefined8 uStack_188;
  undefined8 uStack_180;
  undefined8 uStack_178;
  undefined8 uStack_170;
  undefined8 uStack_168;
  undefined8 uStack_160;
  undefined8 uStack_158;
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
  
  puVar4 = PTR_DAT_05e5e070;
  if ((bRam000000000625c19b & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e63680);
    func_0x029f5a50(PTR_DAT_05e63688);
    func_0x029f5a50(PTR_DAT_05e63690);
    func_0x029f5a50(PTR_DAT_05e59000);
    func_0x029f5a50(PTR_DAT_05e5e070);
    bRam000000000625c19b = 1;
  }
  lVar8 = *(long *)puVar4;
  uStack_f8 = 0;
  uStack_100 = 0;
  uStack_e8 = 0;
  uStack_f0 = 0;
  uStack_d8 = 0;
  uStack_e0 = 0;
  uStack_c8 = 0;
  uStack_d0 = 0;
  uStack_b8 = 0;
  uStack_c0 = 0;
  uStack_a8 = 0;
  uStack_b0 = 0;
  if (*(int *)(lVar8 + 0xe4) == 0) {
    func_0x029f5bd0(lVar8);
    lVar8 = *(long *)puVar4;
  }
  puVar6 = PTR_DAT_05e63690;
  puVar5 = PTR_DAT_05e63680;
  puVar3 = PTR_DAT_05e59000;
  lVar9 = *(long *)(lVar8 + 0xb8);
  lVar7 = *(long *)(lVar9 + 0x28);
  if (lVar7 != 0) {
    param_2 = param_2 & ((int)param_2 >> 0x1f ^ 0xffffffffU);
    if (*(int *)(lVar7 + 0x18) != 0) goto LAB_02c56ed8;
    if (*(int *)(lVar8 + 0xe4) == 0) {
      func_0x029f5bd0(lVar8);
      lVar8 = *(long *)(*(long *)puVar4 + 0xb8);
      uStack_118 = *(undefined8 *)(lVar8 + 0x10);
      uStack_120 = *(undefined8 *)(lVar8 + 8);
      lVar7 = *(long *)(lVar8 + 0x28);
      uStack_108 = *(undefined8 *)(lVar8 + 0x20);
      uStack_110 = *(undefined8 *)(lVar8 + 0x18);
      if (lVar7 == 0) goto LAB_02c56f7c;
    }
    else {
      uStack_118 = *(undefined8 *)(lVar9 + 0x10);
      uStack_120 = *(undefined8 *)(lVar9 + 8);
      uStack_108 = *(undefined8 *)(lVar9 + 0x20);
      uStack_110 = *(undefined8 *)(lVar9 + 0x18);
    }
    lVar8 = *(long *)(lVar7 + 0x10);
    lVar9 = *(long *)puVar5;
    *(int *)(lVar7 + 0x1c) = *(int *)(lVar7 + 0x1c) + 1;
    if (lVar8 != 0) {
      uVar2 = *(uint *)(lVar7 + 0x18);
      if (*(uint *)(lVar8 + 0x18) <= uVar2) {
        lVar8 = *(long *)(lVar9 + 0x20);
        uStack_80 = uStack_120;
        uStack_78 = uStack_118;
        uStack_70 = uStack_110;
        uStack_68 = uStack_108;
        goto LAB_02c56ec8;
      }
      lVar8 = lVar8 + (long)(int)uVar2 * 0x20;
      *(uint *)(lVar7 + 0x18) = uVar2 + 1;
      *(undefined8 *)(lVar8 + 0x28) = uStack_118;
      *(undefined8 *)(lVar8 + 0x20) = uStack_120;
      *(undefined8 *)(lVar8 + 0x38) = uStack_108;
      *(undefined8 *)(lVar8 + 0x30) = uStack_110;
      do {
        Managed_WriteBarrier(lVar8 + 0x20,0);
LAB_02c56ed8:
        while( true ) {
          lVar8 = *(long *)puVar4;
          if (*(int *)(lVar8 + 0xe4) == 0) {
            func_0x029f5bd0(lVar8);
            lVar8 = *(long *)puVar4;
          }
          lVar7 = *(long *)(*(long *)(lVar8 + 0xb8) + 0x28);
          if (lVar7 == 0) goto LAB_02c56f7c;
          if ((int)param_2 < *(int *)(lVar7 + 0x18)) {
            if (*(int *)(lVar8 + 0xe4) == 0) {
              func_0x029f5bd0(lVar8);
              lVar7 = *(long *)(*(long *)(*(long *)puVar4 + 0xb8) + 0x28);
              if (lVar7 == 0) goto LAB_02c56f7c;
            }
            func_0x044bddc4(&uStack_80,lVar7,param_2,*(undefined8 *)puVar6);
            uStack_b8 = uStack_78;
            uStack_c0 = uStack_80;
            uStack_a8 = uStack_68;
            uStack_b0 = uStack_70;
            InfVal_ToPrecision_0x6000089(&uStack_a0,&uStack_c0,2,0);
            param_1[1] = uStack_98;
            *param_1 = uStack_a0;
            param_1[3] = uStack_88;
            param_1[2] = uStack_90;
            return;
          }
          if (*(int *)(lVar8 + 0xe4) == 0) {
            func_0x029f5bd0(lVar8);
            lVar7 = *(long *)(*(long *)(*(long *)puVar4 + 0xb8) + 0x28);
            if (lVar7 == 0) goto LAB_02c56f7c;
          }
          iVar1 = *(int *)(lVar7 + 0x18);
          if (*(int *)(*(long *)puVar3 + 0xe4) == 0) {
            func_0x029f5bd0(*(long *)puVar3);
          }
          iVar1 = iVar1 + -1;
          dVar10 = (double)Math_Pow_0x60008ae(0x3ff0000000000000,(double)iVar1,0);
          lVar7 = *(long *)(*(long *)(*(long *)puVar4 + 0xb8) + 0x28);
          if (lVar7 == 0) goto LAB_02c56f7c;
          func_0x044bddc4(&uStack_140,lVar7,iVar1,*(undefined8 *)puVar6);
          uStack_b8 = uStack_138;
          uStack_c0 = uStack_140;
          uStack_a8 = uStack_128;
          uStack_b0 = uStack_130;
          InfVal_op_Implicit_0x600004c(&uStack_160,dVar10 * 3.0,0);
          uStack_d8 = uStack_158;
          uStack_e0 = uStack_160;
          uStack_c8 = uStack_148;
          uStack_d0 = uStack_150;
          InfVal_op_Multiply_0x6000074(&uStack_180,&uStack_c0,&uStack_e0,0);
          uStack_f8 = uStack_178;
          uStack_100 = uStack_180;
          uStack_e8 = uStack_168;
          uStack_f0 = uStack_170;
          InfVal_ToPrecision_0x6000089(&uStack_1a0,&uStack_100,3,0);
          uStack_98 = uStack_198;
          uStack_a0 = uStack_1a0;
          uStack_88 = uStack_188;
          uStack_90 = uStack_190;
          lVar9 = *(long *)puVar5;
          lVar8 = *(long *)(lVar7 + 0x10);
          *(int *)(lVar7 + 0x1c) = *(int *)(lVar7 + 0x1c) + 1;
          if (lVar8 == 0) goto LAB_02c56f7c;
          uVar2 = *(uint *)(lVar7 + 0x18);
          if (uVar2 < *(uint *)(lVar8 + 0x18)) break;
          lVar8 = *(long *)(lVar9 + 0x20);
          uStack_80 = uStack_1a0;
          uStack_78 = uStack_198;
          uStack_70 = uStack_190;
          uStack_68 = uStack_188;
LAB_02c56ec8:
          func_0x044be120(lVar7,&uStack_80,*(undefined8 *)(*(long *)(lVar8 + 0xc0) + 0x70));
        }
        lVar8 = lVar8 + (long)(int)uVar2 * 0x20;
        *(uint *)(lVar7 + 0x18) = uVar2 + 1;
        *(undefined8 *)(lVar8 + 0x28) = uStack_198;
        *(undefined8 *)(lVar8 + 0x20) = uStack_1a0;
        *(undefined8 *)(lVar8 + 0x38) = uStack_188;
        *(undefined8 *)(lVar8 + 0x30) = uStack_190;
      } while( true );
    }
  }
LAB_02c56f7c:
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

