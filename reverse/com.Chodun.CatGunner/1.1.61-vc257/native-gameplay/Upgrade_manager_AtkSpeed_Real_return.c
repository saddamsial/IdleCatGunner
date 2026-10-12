/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2bb2ef8, Ghidra VA 02cb2ef8. */

ulong Upgrade_manager_AtkSpeed_Real_return(void)

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
  long lVar11;
  undefined8 uVar12;
  long *plVar13;
  undefined8 uVar14;
  long lVar15;
  long lVar16;
  ulong uVar17;
  undefined *unaff_x22;
  long unaff_x23;
  undefined1 auVar18 [16];
  undefined8 uStack_148;
  ulong uStack_140;
  undefined8 uStack_138;
  undefined *puStack_130;
  undefined *puStack_128;
  undefined *puStack_120;
  long *plStack_118;
  ulong uStack_110;
  undefined8 uStack_108;
  undefined *puStack_100;
  long lStack_f8;
  undefined *puStack_f0;
  long lStack_e8;
  long lStack_e0;
  ulong uStack_d8;
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
  undefined *puStack_70;
  
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
  uVar10 = func_0x029f5b40(*(undefined8 *)puVar2,3);
  uVar17 = 0;
  while (lVar15 = *(long *)(lVar9 + 0x20), lVar15 != 0) {
    if (*(uint *)(lVar15 + 0x18) <= uVar17) goto code_r0x02cb302c;
    lVar15 = *(long *)(lVar15 + uVar17 * 8 + 0x20);
    if ((lVar15 == 0) ||
       (uVar6 = func_0x02b1e644(*(undefined8 *)(lVar15 + 0x18),*(undefined8 *)(lVar15 + 0x20),0),
       uVar10 == 0)) break;
    if (*(uint *)(uVar10 + 0x18) <= uVar17) goto code_r0x02cb302c;
    lVar15 = uVar17 * 4;
    uVar17 = uVar17 + 1;
    *(undefined4 *)(uVar10 + lVar15 + 0x20) = uVar6;
    if (uVar17 == 3) {
      return uVar10;
    }
  }
  func_0x029f5cfc();
code_r0x02cb302c:
  auVar18 = func_0x029f5d04();
  lVar9 = auVar18._0_8_;
  puStack_70 = &UNK_02cb3030;
  lVar15 = 0x625c000;
  uVar17 = auVar18._8_8_ & 0xffffffff;
  if ((bRam000000000625c562 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e5d338);
    bRam000000000625c562 = 1;
  }
  lVar16 = *(long *)(lVar9 + 0x20);
  uStack_88 = 0;
  uStack_90 = 0;
  uStack_78 = 0;
  uStack_80 = 0;
  if (lVar16 != 0) {
    uVar5 = auVar18._8_4_;
    if (*(uint *)(lVar16 + 0x18) <= uVar5) goto code_r0x02cb31c0;
    lVar15 = (long)(int)uVar5;
    lVar16 = *(long *)(lVar16 + lVar15 * 8 + 0x20);
    if (lVar16 != 0) {
      iVar7 = func_0x02b1e644(*(undefined8 *)(lVar16 + 0x18),*(undefined8 *)(lVar16 + 0x20),0);
      if (9999 < iVar7) {
        return 0;
      }
      lVar16 = *(long *)(lVar9 + 0x20);
      if (lVar16 != 0) {
        if (*(uint *)(lVar16 + 0x18) <= uVar5) goto code_r0x02cb31c0;
        lVar16 = *(long *)(lVar16 + lVar15 * 8 + 0x20);
        if (lVar16 != 0) {
          unaff_x23 = *(long *)(lVar9 + 0x30);
          uVar8 = func_0x02b1e644(*(undefined8 *)(lVar16 + 0x18),*(undefined8 *)(lVar16 + 0x20),0);
          puVar2 = PTR_DAT_05e5d338;
          if (unaff_x23 != 0) {
            if (*(uint *)(unaff_x23 + 0x18) <= uVar8) goto code_r0x02cb31c0;
            lVar16 = unaff_x23 + (long)(int)uVar8 * 0x20;
            lVar11 = *(long *)PTR_DAT_05e5d338;
            uStack_88 = *(undefined8 *)(lVar16 + 0x28);
            uStack_90 = *(undefined8 *)(lVar16 + 0x20);
            uStack_78 = *(undefined8 *)(lVar16 + 0x38);
            uStack_80 = *(undefined8 *)(lVar16 + 0x30);
            if (*(int *)(lVar11 + 0xe4) == 0) {
              func_0x029f5bd0();
              lVar11 = *(long *)puVar2;
            }
            uVar10 = func_0x046595c4(*(long *)(lVar11 + 0xb8) + 0x30,&uStack_90,0);
            if ((uVar10 & 1) != 0) {
              return 0;
            }
            uStack_a8 = uStack_88;
            uStack_b0 = uStack_90;
            uStack_98 = uStack_78;
            uStack_a0 = uStack_80;
            if (*(int *)(*(long *)puVar2 + 0xe4) == 0) {
              func_0x029f5bd0();
            }
            uStack_c8 = uStack_a8;
            uStack_d0 = uStack_b0;
            uStack_b8 = uStack_98;
            uStack_c0 = uStack_a0;
            func_0x02b7f11c(&uStack_d0,0);
            lVar16 = *(long *)(lVar9 + 0x20);
            unaff_x22 = puVar2;
            if (lVar16 != 0) {
              if (*(uint *)(lVar16 + 0x18) <= uVar5) goto code_r0x02cb31c0;
              lVar16 = *(long *)(lVar16 + lVar15 * 8 + 0x20);
              uVar17 = 0;
              if (lVar16 != 0) {
                iVar7 = func_0x02b1e644(*(undefined8 *)(lVar16 + 0x18),
                                        *(undefined8 *)(lVar16 + 0x20),0);
                auVar18 = func_0x02b1e5c8(iVar7 + 1,0);
                *(undefined1 (*) [16])(lVar16 + 0x18) = auVar18;
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
  uVar12 = func_0x029f5d04();
  puVar2 = PTR_DAT_05e5d4e8;
  puStack_100 = &UNK_02cb31c4;
  lStack_f8 = unaff_x23;
  puStack_f0 = unaff_x22;
  lStack_e8 = lVar15;
  lStack_e0 = lVar9;
  uStack_d8 = uVar17;
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
  uVar17 = *(ulong *)(*(long *)(lVar9 + 0xb8) + 0x18);
  do {
    plVar13 = (long *)func_0x04896684(uVar17,uVar12,0);
    if ((plVar13 != (long *)0x0) && (*plVar13 != *(long *)puVar1)) {
      uVar14 = func_0x029f607c(plVar13);
      puVar3 = PTR_DAT_05e5d4e8;
      puStack_130 = &UNK_02cb32a0;
      puStack_128 = puVar1;
      puStack_120 = puVar2;
      plStack_118 = plVar13;
      uStack_110 = uVar17;
      uStack_108 = uVar12;
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
      uVar17 = *(ulong *)(*(long *)(lVar9 + 0xb8) + 0x18);
      do {
        plVar13 = (long *)func_0x04896870(uVar17,uVar14,0);
        if ((plVar13 != (long *)0x0) && (*plVar13 != *(long *)puVar2)) {
          func_0x029f607c(plVar13);
          puVar2 = PTR_DAT_05e5d3c0;
          uStack_140 = uVar17;
          uStack_138 = uVar14;
          if ((bRam000000000625c566 & 1) == 0) {
            func_0x029f5a50(PTR_DAT_05e59760);
            func_0x029f5a50(PTR_DAT_05e597d0);
            func_0x029f5a50(PTR_DAT_05e5d3c0);
            func_0x029f5a50(PTR_DAT_05e5d3e0);
            bRam000000000625c566 = 1;
          }
          puVar1 = PTR_DAT_05e59760;
          uStack_148 = 0;
          if (*(int *)(*(long *)puVar2 + 0xe4) == 0) {
            func_0x029f5bd0();
          }
          puVar2 = PTR_DAT_05e597d0;
          uStack_148 = func_0x02c25b48(0);
          if (*(int *)(*(long *)puVar1 + 0xe4) == 0) {
            func_0x029f5bd0(*(long *)puVar1);
          }
          puVar1 = PTR_DAT_05e5d3e0;
          uVar12 = func_0x047e36ac(0);
          if (*(int *)(*(long *)puVar2 + 0xe4) == 0) {
            func_0x029f5bd0(*(long *)puVar2);
          }
          uVar17 = func_0x04832440(&uStack_148,*(undefined8 *)puVar1,uVar12,0);
          return uVar17;
        }
        lVar9 = *(long *)puVar3;
        if (*(int *)(lVar9 + 0xe4) == 0) {
          func_0x029f5bd0();
          lVar9 = *(long *)puVar3;
        }
        uVar10 = func_0x02a2e558(*(long *)(lVar9 + 0xb8) + 0x18,plVar13,uVar17);
        bVar4 = uVar10 != uVar17;
        uVar17 = uVar10;
      } while (bVar4);
      return uVar10;
    }
    lVar9 = *(long *)puVar2;
    if (*(int *)(lVar9 + 0xe4) == 0) {
      func_0x029f5bd0();
      lVar9 = *(long *)puVar2;
    }
    uVar10 = func_0x02a2e558(*(long *)(lVar9 + 0xb8) + 0x18,plVar13,uVar17);
    bVar4 = uVar10 != uVar17;
    uVar17 = uVar10;
  } while (bVar4);
  return uVar10;
}

