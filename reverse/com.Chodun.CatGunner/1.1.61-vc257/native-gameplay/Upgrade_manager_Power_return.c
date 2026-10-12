/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2bb2d48, Ghidra VA 02cb2d48. */

ulong Upgrade_manager_Power_return(undefined8 *param_1)

{
  undefined *puVar1;
  undefined *puVar2;
  undefined *puVar3;
  bool bVar4;
  uint uVar5;
  undefined4 uVar6;
  int iVar7;
  uint uVar8;
  long lVar9;
  ulong uVar10;
  ulong uVar11;
  long lVar12;
  undefined8 uVar13;
  long *plVar14;
  undefined8 uVar15;
  undefined8 *extraout_x8;
  long lVar16;
  long lVar17;
  undefined *unaff_x22;
  long unaff_x23;
  undefined8 uVar18;
  undefined1 auVar19 [16];
  undefined8 uStack_1a8;
  ulong uStack_1a0;
  undefined8 uStack_198;
  undefined *puStack_190;
  undefined *puStack_188;
  undefined *puStack_180;
  long *plStack_178;
  ulong uStack_170;
  undefined8 uStack_168;
  undefined *puStack_160;
  long lStack_158;
  undefined *puStack_150;
  long lStack_148;
  long lStack_140;
  ulong uStack_138;
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
  undefined *puStack_d0;
  
  puVar2 = PTR_DAT_05e5d4e8;
  if ((bRam000000000625c55c & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e5d4e8);
    bRam000000000625c55c = 1;
  }
  lVar9 = *(long *)puVar2;
  if (*(int *)(lVar9 + 0xe4) == 0) {
    func_0x029f5bd0();
    lVar9 = *(long *)puVar2;
  }
  if (**(long **)(lVar9 + 0xb8) == 0) {
LAB_02cb2dd4:
    func_0x029f5cfc();
  }
  else {
    lVar9 = *(long *)(**(long **)(lVar9 + 0xb8) + 0x38);
    uVar10 = func_0x02caf208(0);
    if (lVar9 == 0) goto LAB_02cb2dd4;
    if ((uint)uVar10 < *(uint *)(lVar9 + 0x18)) {
      lVar9 = lVar9 + (long)(int)(uint)uVar10 * 0x20;
      uVar13 = *(undefined8 *)(lVar9 + 0x20);
      uVar18 = *(undefined8 *)(lVar9 + 0x38);
      uVar15 = *(undefined8 *)(lVar9 + 0x30);
      param_1[1] = *(undefined8 *)(lVar9 + 0x28);
      *param_1 = uVar13;
      param_1[3] = uVar18;
      param_1[2] = uVar15;
      return uVar10;
    }
  }
  func_0x029f5d04();
  puVar2 = PTR_DAT_05e5d4e8;
  if ((bRam000000000625c55d & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e5d4e8);
    bRam000000000625c55d = 1;
  }
  lVar9 = *(long *)puVar2;
  if (*(int *)(lVar9 + 0xe4) == 0) {
    func_0x029f5bd0();
    lVar9 = *(long *)puVar2;
  }
  if (**(long **)(lVar9 + 0xb8) == 0) {
LAB_02cb2e68:
    func_0x029f5cfc();
  }
  else {
    lVar9 = *(long *)(**(long **)(lVar9 + 0xb8) + 0x40);
    uVar10 = func_0x02caf208(2);
    if (lVar9 == 0) goto LAB_02cb2e68;
    if ((uint)uVar10 < *(uint *)(lVar9 + 0x18)) {
      lVar9 = lVar9 + (long)(int)(uint)uVar10 * 0x20;
      uVar13 = *(undefined8 *)(lVar9 + 0x20);
      uVar18 = *(undefined8 *)(lVar9 + 0x38);
      uVar15 = *(undefined8 *)(lVar9 + 0x30);
      extraout_x8[1] = *(undefined8 *)(lVar9 + 0x28);
      *extraout_x8 = uVar13;
      extraout_x8[3] = uVar18;
      extraout_x8[2] = uVar15;
      return uVar10;
    }
  }
  func_0x029f5d04();
  puVar2 = PTR_DAT_05e5d4e8;
  if ((bRam000000000625c55e & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e5d4e8);
    bRam000000000625c55e = 1;
  }
  lVar9 = *(long *)puVar2;
  if (*(int *)(lVar9 + 0xe4) == 0) {
    func_0x029f5bd0();
    lVar9 = *(long *)puVar2;
  }
  if (**(long **)(lVar9 + 0xb8) == 0) {
LAB_02cb2ef0:
    func_0x029f5cfc();
  }
  else {
    lVar9 = *(long *)(**(long **)(lVar9 + 0xb8) + 0x48);
    uVar5 = func_0x02caf208(1);
    if (lVar9 == 0) goto LAB_02cb2ef0;
    if (uVar5 < *(uint *)(lVar9 + 0x18)) {
      return (ulong)*(uint *)(lVar9 + (long)(int)uVar5 * 4 + 0x20);
    }
  }
  func_0x029f5d04();
  puVar2 = PTR_DAT_05e5d4e8;
  if ((bRam000000000625c55f & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e5d4e8);
    bRam000000000625c55f = 1;
  }
  lVar9 = *(long *)puVar2;
  if (*(int *)(lVar9 + 0xe4) == 0) {
    func_0x029f5bd0();
    lVar9 = *(long *)puVar2;
  }
  if (**(long **)(lVar9 + 0xb8) == 0) {
LAB_02cb2f78:
    func_0x029f5cfc();
  }
  else {
    lVar9 = *(long *)(**(long **)(lVar9 + 0xb8) + 0x48);
    uVar5 = func_0x02caf208(1);
    if (lVar9 == 0) goto LAB_02cb2f78;
    if (uVar5 < *(uint *)(lVar9 + 0x18)) {
      return (ulong)*(uint *)(lVar9 + (long)(int)uVar5 * 4 + 0x20);
    }
  }
  lVar9 = func_0x029f5d04();
  puVar2 = PTR_DAT_05e5d790;
  if ((bRam000000000625c560 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e5d790);
    bRam000000000625c560 = 1;
  }
  uVar11 = func_0x029f5b40(*(undefined8 *)puVar2,3);
  uVar10 = 0;
  while (lVar16 = *(long *)(lVar9 + 0x20), lVar16 != 0) {
    if (*(uint *)(lVar16 + 0x18) <= uVar10) goto code_r0x02cb302c;
    lVar16 = *(long *)(lVar16 + uVar10 * 8 + 0x20);
    if ((lVar16 == 0) ||
       (uVar6 = func_0x02b1e644(*(undefined8 *)(lVar16 + 0x18),*(undefined8 *)(lVar16 + 0x20),0),
       uVar11 == 0)) break;
    if (*(uint *)(uVar11 + 0x18) <= uVar10) goto code_r0x02cb302c;
    lVar16 = uVar10 * 4;
    uVar10 = uVar10 + 1;
    *(undefined4 *)(uVar11 + lVar16 + 0x20) = uVar6;
    if (uVar10 == 3) {
      return uVar11;
    }
  }
  func_0x029f5cfc();
code_r0x02cb302c:
  auVar19 = func_0x029f5d04();
  lVar9 = auVar19._0_8_;
  puStack_d0 = &UNK_02cb3030;
  lVar16 = 0x625c000;
  uVar10 = auVar19._8_8_ & 0xffffffff;
  if ((bRam000000000625c562 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e5d338);
    bRam000000000625c562 = 1;
  }
  lVar17 = *(long *)(lVar9 + 0x20);
  uStack_e8 = 0;
  uStack_f0 = 0;
  uStack_d8 = 0;
  uStack_e0 = 0;
  if (lVar17 != 0) {
    uVar5 = auVar19._8_4_;
    if (*(uint *)(lVar17 + 0x18) <= uVar5) goto code_r0x02cb31c0;
    lVar16 = (long)(int)uVar5;
    lVar17 = *(long *)(lVar17 + lVar16 * 8 + 0x20);
    if (lVar17 != 0) {
      iVar7 = func_0x02b1e644(*(undefined8 *)(lVar17 + 0x18),*(undefined8 *)(lVar17 + 0x20),0);
      if (9999 < iVar7) {
        return 0;
      }
      lVar17 = *(long *)(lVar9 + 0x20);
      if (lVar17 != 0) {
        if (*(uint *)(lVar17 + 0x18) <= uVar5) goto code_r0x02cb31c0;
        lVar17 = *(long *)(lVar17 + lVar16 * 8 + 0x20);
        if (lVar17 != 0) {
          unaff_x23 = *(long *)(lVar9 + 0x30);
          uVar8 = func_0x02b1e644(*(undefined8 *)(lVar17 + 0x18),*(undefined8 *)(lVar17 + 0x20),0);
          puVar2 = PTR_DAT_05e5d338;
          if (unaff_x23 != 0) {
            if (*(uint *)(unaff_x23 + 0x18) <= uVar8) goto code_r0x02cb31c0;
            lVar17 = unaff_x23 + (long)(int)uVar8 * 0x20;
            lVar12 = *(long *)PTR_DAT_05e5d338;
            uStack_e8 = *(undefined8 *)(lVar17 + 0x28);
            uStack_f0 = *(undefined8 *)(lVar17 + 0x20);
            uStack_d8 = *(undefined8 *)(lVar17 + 0x38);
            uStack_e0 = *(undefined8 *)(lVar17 + 0x30);
            if (*(int *)(lVar12 + 0xe4) == 0) {
              func_0x029f5bd0();
              lVar12 = *(long *)puVar2;
            }
            uVar11 = func_0x046595c4(*(long *)(lVar12 + 0xb8) + 0x30,&uStack_f0,0);
            if ((uVar11 & 1) != 0) {
              return 0;
            }
            uStack_108 = uStack_e8;
            uStack_110 = uStack_f0;
            uStack_f8 = uStack_d8;
            uStack_100 = uStack_e0;
            if (*(int *)(*(long *)puVar2 + 0xe4) == 0) {
              func_0x029f5bd0();
            }
            uStack_128 = uStack_108;
            uStack_130 = uStack_110;
            uStack_118 = uStack_f8;
            uStack_120 = uStack_100;
            func_0x02b7f11c(&uStack_130,0);
            lVar17 = *(long *)(lVar9 + 0x20);
            unaff_x22 = puVar2;
            if (lVar17 != 0) {
              if (*(uint *)(lVar17 + 0x18) <= uVar5) goto code_r0x02cb31c0;
              lVar17 = *(long *)(lVar17 + lVar16 * 8 + 0x20);
              uVar10 = 0;
              if (lVar17 != 0) {
                iVar7 = func_0x02b1e644(*(undefined8 *)(lVar17 + 0x18),
                                        *(undefined8 *)(lVar17 + 0x20),0);
                auVar19 = func_0x02b1e5c8(iVar7 + 1,0);
                *(undefined1 (*) [16])(lVar17 + 0x18) = auVar19;
                return 1;
              }
            }
          }
        }
      }
    }
  }
  func_0x029f5cfc();
code_r0x02cb31c0:
  uVar13 = func_0x029f5d04();
  puVar2 = PTR_DAT_05e5d4e8;
  puStack_160 = &UNK_02cb31c4;
  lStack_158 = unaff_x23;
  puStack_150 = unaff_x22;
  lStack_148 = lVar16;
  lStack_140 = lVar9;
  uStack_138 = uVar10;
  if ((bRam000000000625c564 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e59288);
    func_0x029f5a50(PTR_DAT_05e5d4e8);
    bRam000000000625c564 = 1;
  }
  lVar9 = *(long *)puVar2;
  if (*(int *)(lVar9 + 0xe4) == 0) {
    func_0x029f5bd0();
    lVar9 = *(long *)puVar2;
  }
  puVar1 = PTR_DAT_05e59288;
  uVar10 = *(ulong *)(*(long *)(lVar9 + 0xb8) + 0x18);
  do {
    plVar14 = (long *)func_0x04896684(uVar10,uVar13,0);
    if ((plVar14 != (long *)0x0) && (*plVar14 != *(long *)puVar1)) {
      uVar15 = func_0x029f607c(plVar14);
      puVar3 = PTR_DAT_05e5d4e8;
      puStack_190 = &UNK_02cb32a0;
      puStack_188 = puVar1;
      puStack_180 = puVar2;
      plStack_178 = plVar14;
      uStack_170 = uVar10;
      uStack_168 = uVar13;
      if ((bRam000000000625c565 & 1) == 0) {
        func_0x029f5a50(PTR_DAT_05e59288);
        func_0x029f5a50(PTR_DAT_05e5d4e8);
        bRam000000000625c565 = 1;
      }
      lVar9 = *(long *)puVar3;
      if (*(int *)(lVar9 + 0xe4) == 0) {
        func_0x029f5bd0();
        lVar9 = *(long *)puVar3;
      }
      puVar2 = PTR_DAT_05e59288;
      uVar10 = *(ulong *)(*(long *)(lVar9 + 0xb8) + 0x18);
      do {
        plVar14 = (long *)func_0x04896870(uVar10,uVar15,0);
        if ((plVar14 != (long *)0x0) && (*plVar14 != *(long *)puVar2)) {
          func_0x029f607c(plVar14);
          puVar2 = PTR_DAT_05e5d3c0;
          uStack_1a0 = uVar10;
          uStack_198 = uVar15;
          if ((bRam000000000625c566 & 1) == 0) {
            func_0x029f5a50(PTR_DAT_05e59760);
            func_0x029f5a50(PTR_DAT_05e597d0);
            func_0x029f5a50(PTR_DAT_05e5d3c0);
            func_0x029f5a50(PTR_DAT_05e5d3e0);
            bRam000000000625c566 = 1;
          }
          puVar1 = PTR_DAT_05e59760;
          uStack_1a8 = 0;
          if (*(int *)(*(long *)puVar2 + 0xe4) == 0) {
            func_0x029f5bd0();
          }
          puVar2 = PTR_DAT_05e597d0;
          uStack_1a8 = func_0x02c25b48(0);
          if (*(int *)(*(long *)puVar1 + 0xe4) == 0) {
            func_0x029f5bd0(*(long *)puVar1);
          }
          puVar1 = PTR_DAT_05e5d3e0;
          uVar13 = func_0x047e36ac(0);
          if (*(int *)(*(long *)puVar2 + 0xe4) == 0) {
            func_0x029f5bd0(*(long *)puVar2);
          }
          uVar10 = func_0x04832440(&uStack_1a8,*(undefined8 *)puVar1,uVar13,0);
          return uVar10;
        }
        lVar9 = *(long *)puVar3;
        if (*(int *)(lVar9 + 0xe4) == 0) {
          func_0x029f5bd0();
          lVar9 = *(long *)puVar3;
        }
        uVar11 = func_0x02a2e558(*(long *)(lVar9 + 0xb8) + 0x18,plVar14,uVar10);
        bVar4 = uVar11 != uVar10;
        uVar10 = uVar11;
      } while (bVar4);
      return uVar11;
    }
    lVar9 = *(long *)puVar2;
    if (*(int *)(lVar9 + 0xe4) == 0) {
      func_0x029f5bd0();
      lVar9 = *(long *)puVar2;
    }
    uVar11 = func_0x02a2e558(*(long *)(lVar9 + 0xb8) + 0x18,plVar14,uVar10);
    bVar4 = uVar11 != uVar10;
    uVar10 = uVar11;
  } while (bVar4);
  return uVar11;
}

