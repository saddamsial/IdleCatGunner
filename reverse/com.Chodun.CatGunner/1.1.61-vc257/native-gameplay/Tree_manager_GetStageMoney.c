/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2bab768, Ghidra VA 02cab768. */

ulong Tree_manager_GetStageMoney
                (undefined8 *param_1,ulong param_2,uint param_3,undefined8 *param_4,
                undefined8 param_5)

{
  int iVar1;
  uint uVar2;
  uint uVar3;
  int iVar4;
  undefined *puVar5;
  ulong uVar6;
  undefined8 *puVar7;
  long lVar8;
  ulong uVar9;
  long lVar10;
  undefined1 auVar11 [16];
  undefined8 uStack_1b0;
  undefined8 uStack_1a8;
  undefined8 uStack_1a0;
  undefined8 uStack_198;
  undefined8 uStack_190;
  undefined8 uStack_188;
  undefined8 uStack_180;
  undefined8 uStack_178;
  undefined *puStack_170;
  ulong uStack_160;
  ulong uStack_158;
  undefined *puStack_150;
  long lStack_140;
  ulong uStack_138;
  ulong uStack_130;
  undefined8 *puStack_128;
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
  undefined8 uStack_60;
  undefined8 uStack_58;
  undefined8 uStack_50;
  undefined8 uStack_48;
  
  lVar10 = 0x625c000;
  uVar6 = param_2;
  if ((bRam000000000625c51b & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e64a08);
    func_0x029f5a50(PTR_DAT_05e64a10);
    uVar6 = func_0x029f5a50(PTR_DAT_05e5dc20);
    bRam000000000625c51b = 1;
  }
  lVar8 = *(long *)(param_2 + 0x78);
  uStack_d8 = 0;
  uStack_e0 = 0;
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
  if (lVar8 != 0) {
    if ((int)param_3 < (int)*(uint *)(lVar8 + 0x18)) {
      if (param_3 < *(uint *)(lVar8 + 0x18)) {
        lVar8 = lVar8 + (long)(int)param_3 * 0x20;
        uStack_80 = *(undefined8 *)(lVar8 + 0x20);
        uStack_78 = *(undefined8 *)(lVar8 + 0x28);
        uStack_70 = *(undefined8 *)(lVar8 + 0x30);
        uStack_68 = *(undefined8 *)(lVar8 + 0x38);
LAB_02cab8d4:
        param_1[1] = uStack_78;
        *param_1 = uStack_80;
        param_1[3] = uStack_68;
        param_1[2] = uStack_70;
        return uVar6;
      }
      goto LAB_02cab8f4;
    }
    if (*(long *)(param_2 + 0x88) != 0) {
      param_4 = &uStack_80;
      param_5 = *(undefined8 *)PTR_DAT_05e64a08;
      uVar6 = func_0x03db0648(*(long *)(param_2 + 0x88),param_3,param_4,param_5);
      if ((uVar6 & 1) != 0) goto LAB_02cab8d4;
      lVar10 = *(long *)(param_2 + 0x78);
      if (lVar10 != 0) {
        uVar2 = *(int *)(lVar10 + 0x18) - 1;
        if (*(int *)(*(long *)PTR_DAT_05e5dc20 + 0xe4) == 0) {
          func_0x029f5bd0();
        }
        func_0x02cace94(&uStack_c0,param_3 - uVar2);
        if (*(uint *)(lVar10 + 0x18) <= uVar2) goto LAB_02cab8f4;
        func_0x04658538(&uStack_100,lVar10 + (long)(int)uVar2 * 0x20 + 0x20,&uStack_c0,0);
        param_4 = (undefined8 *)0x0;
        uStack_d8 = uStack_f8;
        uStack_e0 = uStack_100;
        uStack_c8 = uStack_e8;
        uStack_d0 = uStack_f0;
        func_0x04658464(&uStack_120,&uStack_e0,2);
        uStack_98 = uStack_118;
        uStack_a0 = uStack_120;
        uStack_88 = uStack_108;
        uStack_90 = uStack_110;
        if (*(long *)(param_2 + 0x88) != 0) {
          uStack_58 = uStack_118;
          uStack_60 = uStack_120;
          uStack_48 = uStack_108;
          uStack_50 = uStack_110;
          uVar6 = func_0x03daea4c(*(long *)(param_2 + 0x88),param_3,&uStack_60,
                                  *(undefined8 *)PTR_DAT_05e64a10);
          uStack_80 = uStack_a0;
          uStack_78 = uStack_98;
          uStack_70 = uStack_90;
          uStack_68 = uStack_88;
          goto LAB_02cab8d4;
        }
      }
    }
  }
  func_0x029f5cfc();
LAB_02cab8f4:
  auVar11 = func_0x029f5d04();
  puVar5 = PTR_DAT_05e5dc20;
  puStack_150 = &UNK_02cab8f8;
  uVar6 = auVar11._8_8_ & 0xffffffff;
  uVar9 = auVar11._0_8_ & 0xffffffff;
  lStack_140 = lVar10;
  uStack_138 = param_2;
  uStack_130 = (ulong)param_3;
  puStack_128 = param_1;
  if ((bRam000000000625c527 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e5dc20);
    bRam000000000625c527 = 1;
  }
  lVar10 = *(long *)puVar5;
  if (*(int *)(lVar10 + 0xe4) == 0) {
    func_0x029f5bd0();
    lVar10 = *(long *)puVar5;
  }
  lVar10 = *(long *)(*(long *)(lVar10 + 0xb8) + 0x10);
  if ((lVar10 == 0) || (lVar10 = *(long *)(lVar10 + 0x20), lVar10 == 0)) {
    func_0x029f5cfc();
  }
  else {
    iVar1 = auVar11._8_4_ + auVar11._0_4_ * 4;
    uVar2 = *(uint *)(lVar10 + 0x18);
    iVar4 = 0;
    if (uVar2 != 0) {
      iVar4 = iVar1 / (int)uVar2;
    }
    uVar3 = iVar1 - iVar4 * uVar2;
    if (uVar3 < uVar2) {
      return *(ulong *)(lVar10 + (long)(int)uVar3 * 8 + 0x20);
    }
  }
  auVar11 = func_0x029f5d04();
  puVar7 = auVar11._8_8_;
  puStack_170 = &UNK_02cab994;
  lVar10 = *(long *)(auVar11._0_8_ + 0x20);
  uStack_160 = uVar9;
  uStack_158 = uVar6;
  if (lVar10 != 0) {
    uStack_188 = puVar7[1];
    uStack_190 = *puVar7;
    uStack_178 = puVar7[3];
    uStack_180 = puVar7[2];
    uStack_1a8 = param_4[1];
    uStack_1b0 = *param_4;
    uStack_198 = param_4[3];
    uStack_1a0 = param_4[2];
    func_0x02c5c998(lVar10,&uStack_190,&uStack_1b0,0);
    lVar10 = *(long *)(auVar11._0_8_ + 0x28);
    if (lVar10 != 0) {
      uVar6 = func_0x0578eb10(lVar10,param_5,0);
      return uVar6;
    }
  }
  lVar10 = func_0x029f5cfc();
  return *(ulong *)(lVar10 + 0x18);
}

