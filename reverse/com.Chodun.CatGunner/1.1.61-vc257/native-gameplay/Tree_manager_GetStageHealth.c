/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2ba96cc, Ghidra VA 02ca96cc. */

ulong Tree_manager_GetStageHealth(undefined8 *param_1,ulong param_2,uint param_3)

{
  undefined *puVar1;
  uint uVar2;
  ulong uVar3;
  undefined8 uVar4;
  long lVar5;
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
  undefined *puStack_140;
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
  
  uVar3 = param_2;
  if ((bRam000000000625c51a & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e64a08);
    func_0x029f5a50(PTR_DAT_05e64a10);
    uVar3 = func_0x029f5a50(PTR_DAT_05e5dc20);
    bRam000000000625c51a = 1;
  }
  lVar5 = *(long *)(param_2 + 0x70);
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
  if (lVar5 != 0) {
    if ((int)param_3 < (int)*(uint *)(lVar5 + 0x18)) {
      if (param_3 < *(uint *)(lVar5 + 0x18)) {
        lVar5 = lVar5 + (long)(int)param_3 * 0x20;
        uStack_80 = *(undefined8 *)(lVar5 + 0x20);
        uStack_78 = *(undefined8 *)(lVar5 + 0x28);
        uStack_70 = *(undefined8 *)(lVar5 + 0x30);
        uStack_68 = *(undefined8 *)(lVar5 + 0x38);
LAB_02ca9838:
        param_1[1] = uStack_78;
        *param_1 = uStack_80;
        param_1[3] = uStack_68;
        param_1[2] = uStack_70;
        return uVar3;
      }
      goto LAB_02ca9858;
    }
    if (*(long *)(param_2 + 0x80) != 0) {
      uVar3 = func_0x03db0648(*(long *)(param_2 + 0x80),param_3,&uStack_80,
                              *(undefined8 *)PTR_DAT_05e64a08);
      if ((uVar3 & 1) != 0) goto LAB_02ca9838;
      lVar5 = *(long *)(param_2 + 0x70);
      if (lVar5 != 0) {
        uVar2 = *(int *)(lVar5 + 0x18) - 1;
        if (*(int *)(*(long *)PTR_DAT_05e5dc20 + 0xe4) == 0) {
          func_0x029f5bd0();
        }
        func_0x02cace94(&uStack_c0,param_3 - uVar2);
        if (*(uint *)(lVar5 + 0x18) <= uVar2) goto LAB_02ca9858;
        func_0x04658538(&uStack_100,lVar5 + (long)(int)uVar2 * 0x20 + 0x20,&uStack_c0,0);
        uStack_d8 = uStack_f8;
        uStack_e0 = uStack_100;
        uStack_c8 = uStack_e8;
        uStack_d0 = uStack_f0;
        func_0x04658464(&uStack_120,&uStack_e0,2,0);
        uStack_98 = uStack_118;
        uStack_a0 = uStack_120;
        uStack_88 = uStack_108;
        uStack_90 = uStack_110;
        if (*(long *)(param_2 + 0x80) != 0) {
          uStack_58 = uStack_118;
          uStack_60 = uStack_120;
          uStack_48 = uStack_108;
          uStack_50 = uStack_110;
          uVar3 = func_0x03daea4c(*(long *)(param_2 + 0x80),param_3,&uStack_60,
                                  *(undefined8 *)PTR_DAT_05e64a10);
          uStack_80 = uStack_a0;
          uStack_78 = uStack_98;
          uStack_70 = uStack_90;
          uStack_68 = uStack_88;
          goto LAB_02ca9838;
        }
      }
    }
  }
  func_0x029f5cfc();
LAB_02ca9858:
  lVar5 = func_0x029f5d04();
  puVar1 = PTR_DAT_05e5d338;
  puStack_140 = &UNK_02ca985c;
  uStack_138 = param_2;
  uStack_130 = (ulong)param_3;
  puStack_128 = param_1;
  if ((bRam000000000625c4fb & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e5d338);
    bRam000000000625c4fb = 1;
  }
  uStack_178 = 0;
  uStack_180 = 0;
  uStack_168 = 0;
  uStack_170 = 0;
  uStack_158 = 0;
  uStack_160 = 0;
  uStack_148 = 0;
  uStack_150 = 0;
  if (*(int *)(*(long *)puVar1 + 0xe4) == 0) {
    func_0x029f5bd0();
  }
  uVar4 = func_0x02b808d4(&uStack_1a0,0);
  uStack_158 = uStack_198;
  uStack_160 = uStack_1a0;
  uStack_148 = uStack_188;
  uStack_150 = uStack_190;
  func_0x02ca9510(&uStack_180,uVar4,*(undefined4 *)(lVar5 + 0x30));
  uVar2 = func_0x04654530(&uStack_160,&uStack_180,0);
  return (ulong)(uVar2 & 1);
}

