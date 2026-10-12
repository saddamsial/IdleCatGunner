/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b399cc, Ghidra VA 02c399cc. */

/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */

undefined1  [16]
Cat_CalculateAtkCoolMax(float param_1,undefined8 param_2,ulong param_3,ulong param_4,ulong param_5)

{
  float fVar1;
  undefined *puVar2;
  undefined *puVar3;
  undefined *puVar4;
  char cVar5;
  int iVar6;
  uint uVar7;
  ulong uVar8;
  undefined8 uVar9;
  long lVar10;
  long lVar11;
  undefined8 *extraout_x8;
  undefined4 *puVar12;
  long *plVar13;
  undefined *unaff_x19;
  undefined *unaff_x20;
  ulong unaff_x21;
  undefined *puVar14;
  ulong unaff_x22;
  undefined8 unaff_x23;
  undefined8 unaff_x29;
  undefined *unaff_x30;
  float fVar15;
  undefined4 uVar16;
  undefined8 extraout_d0;
  undefined1 auVar17 [16];
  undefined8 extraout_var;
  undefined8 uVar18;
  undefined8 uVar19;
  ulong unaff_d8;
  undefined8 unaff_d9;
  
  do {
    puVar2 = PTR_DAT_05e5d4e0;
    *(undefined8 *)((long)register0x00000008 + -0x40) = unaff_d9;
    *(ulong *)((long)register0x00000008 + -0x38) = unaff_d8;
    *(undefined **)((long)register0x00000008 + -0x30) = unaff_x30;
    *(undefined8 *)((long)register0x00000008 + -0x28) = unaff_x23;
    *(ulong *)((long)register0x00000008 + -0x20) = unaff_x22;
    *(ulong *)((long)register0x00000008 + -0x18) = unaff_x21;
    *(undefined **)((long)register0x00000008 + -0x10) = unaff_x20;
    *(undefined **)((long)register0x00000008 + -8) = unaff_x19;
    unaff_x23 = 0x625c000;
    unaff_x20 = (undefined *)(param_3 & 0xffffffff);
    if ((bRam000000000625c08b & 1) == 0) {
      func_0x029f5a50(PTR_DAT_05e5d4c0);
      func_0x029f5a50(PTR_DAT_05e591c0);
      func_0x029f5a50(PTR_DAT_05e5d4e0);
      func_0x029f5a50(PTR_DAT_05e5dc20);
      func_0x029f5a50(PTR_DAT_05e5d4e8);
      bRam000000000625c08b = 1;
    }
    lVar11 = *(long *)(*(long *)puVar2 + 0xb8);
    *(undefined8 *)((long)register0x00000008 + -0x58) = 0;
    *(undefined8 *)((long)register0x00000008 + -0x60) = 0;
    *(undefined8 *)((long)register0x00000008 + -0x48) = 0;
    *(undefined8 *)((long)register0x00000008 + -0x50) = 0;
    uVar7 = *(uint *)(lVar11 + 4);
    unaff_x22 = (ulong)uVar7;
    if ((param_5 & 1) == 0) {
      func_0x02c87498((undefined1 *)((long)register0x00000008 + -0x80),0);
      *(undefined8 *)((long)register0x00000008 + -0x58) =
           *(undefined8 *)((long)register0x00000008 + -0x78);
      *(undefined8 *)((long)register0x00000008 + -0x60) =
           *(undefined8 *)((long)register0x00000008 + -0x80);
      *(undefined8 *)((long)register0x00000008 + -0x48) =
           *(undefined8 *)((long)register0x00000008 + -0x68);
      *(undefined8 *)((long)register0x00000008 + -0x50) =
           *(undefined8 *)((long)register0x00000008 + -0x70);
      iVar6 = func_0x04657108((undefined1 *)((long)register0x00000008 + -0x60),0);
      uVar7 = (uVar7 + iVar6) - 200;
      if ((param_3 & 1) == 0) goto LAB_02c39ad0;
LAB_02c39a68:
      unaff_x21 = (ulong)uVar7;
      if ((param_4 & 1) != 0) goto LAB_02c39a6c;
LAB_02c39af8:
      iVar6 = 0;
LAB_02c39afc:
      unaff_x20 = PTR_DAT_05e5d4c0;
      puVar2 = PTR_DAT_05e591c0;
      iVar6 = iVar6 + (int)unaff_x21;
      if (9999 < iVar6) {
        iVar6 = 10000;
      }
      unaff_x21 = 0x42c80000;
      lVar11 = *(long *)PTR_DAT_05e5d4c0;
      if (iVar6 < 0x65) {
        iVar6 = 100;
      }
      if (*(int *)(lVar11 + 0xe4) == 0) {
        func_0x029f5bd0();
        lVar11 = *(long *)unaff_x20;
      }
      unaff_d9 = 0x42c80000;
      unaff_x19 = (undefined *)**(undefined8 **)(lVar11 + 0xb8);
      if (*(int *)(*(long *)puVar2 + 0xe4) == 0) {
        func_0x029f5bd0(*(long *)puVar2);
      }
      param_1 = (param_1 / (float)iVar6) * 100.0;
      uVar8 = func_0x057dfa70(unaff_x19,0,0);
      if ((uVar8 & 1) == 0) {
LAB_02c39bb0:
        fVar15 = 2.0;
        if (param_1 <= 2.0) {
          fVar15 = param_1;
        }
        fVar1 = _UNK_0116c094;
        if (_UNK_0116c094 <= param_1) {
          fVar1 = fVar15;
        }
        return ZEXT416((uint)fVar1);
      }
      lVar11 = *(long *)unaff_x20;
      if (*(int *)(lVar11 + 0xe4) == 0) {
        func_0x029f5bd0();
        lVar11 = *(long *)unaff_x20;
      }
      if (**(long **)(lVar11 + 0xb8) != 0) {
        iVar6 = func_0x02c376a8(**(long **)(lVar11 + 0xb8),2);
        param_1 = param_1 / (float)iVar6;
        goto LAB_02c39bb0;
      }
    }
    else {
      uVar7 = uVar7 - 100;
      if ((param_3 & 1) != 0) goto LAB_02c39a68;
LAB_02c39ad0:
      if (*(int *)(*(long *)PTR_DAT_05e5d4e8 + 0xe4) == 0) {
        func_0x029f5bd0();
      }
      iVar6 = Upgrade_manager_AtkSpeed_Real_return(0);
      unaff_x21 = (ulong)(iVar6 + uVar7);
      if ((param_4 & 1) == 0) goto LAB_02c39af8;
LAB_02c39a6c:
      unaff_x19 = PTR_DAT_05e5dc20;
      lVar11 = *(long *)PTR_DAT_05e5dc20;
      if (*(int *)(lVar11 + 0xe4) == 0) {
        func_0x029f5bd0();
        lVar11 = *(long *)unaff_x19;
      }
      lVar11 = *(long *)(*(long *)(lVar11 + 0xb8) + 0x10);
      if (lVar11 != 0) {
        iVar6 = *(int *)(lVar11 + 0x28) * -0x1e;
        goto LAB_02c39afc;
      }
    }
    unaff_d8 = (ulong)(uint)param_1;
    unaff_x30 = &UNK_02c39be8;
    lVar11 = func_0x029f5cfc();
    if (*(long *)(lVar11 + 0x48) == 0) {
      *(undefined **)((long)register0x00000008 + -0x90) = &UNK_02c39be8;
      unaff_x30 = &UNK_02c39c0c;
      lVar11 = func_0x029f5cfc();
      if (*(long *)(lVar11 + 0x48) == 0) {
        *(undefined **)((long)register0x00000008 + -0xa0) = &UNK_02c39c0c;
        uVar8 = func_0x029f5cfc();
        *(undefined8 *)((long)register0x00000008 + -0xe0) = unaff_x29;
        *(undefined **)((long)register0x00000008 + -0xd0) = &UNK_02c39c30;
        *(undefined8 *)((long)register0x00000008 + -200) = 0x625c000;
        *(ulong *)((long)register0x00000008 + -0xc0) = unaff_x22;
        *(ulong *)((long)register0x00000008 + -0xb8) = unaff_x21;
        *(undefined **)((long)register0x00000008 + -0xb0) = unaff_x20;
        *(undefined **)((long)register0x00000008 + -0xa8) = unaff_x19;
        if ((bRam000000000625c08c & 1) == 0) {
          func_0x029f5a50(PTR_DAT_05e5d4c0);
          func_0x029f5a50(PTR_DAT_05e5dd38);
          func_0x029f5a50(PTR_DAT_05e5d4d8);
          func_0x029f5a50(PTR_DAT_05e5d4e0);
          func_0x029f5a50(PTR_DAT_05e5e058);
          bRam000000000625c08c = 1;
        }
        puVar4 = PTR_DAT_05e5dd38;
        puVar2 = PTR_DAT_05e5d4e0;
        lVar11 = *(long *)(uVar8 + 0x48);
        *(undefined8 *)((long)register0x00000008 + -0xe8) = 0;
        *(undefined8 *)((long)register0x00000008 + -0xf0) = 0;
        *(undefined8 *)((long)register0x00000008 + -0xf8) = 0;
        *(undefined8 *)((long)register0x00000008 + -0x100) = 0;
        *(undefined8 *)((long)register0x00000008 + -0x108) = 0;
        *(undefined8 *)((long)register0x00000008 + -0x110) = 0;
        *(undefined8 *)((long)register0x00000008 + -0x118) = 0;
        *(undefined8 *)((long)register0x00000008 + -0x120) = 0;
        *(undefined8 *)((long)register0x00000008 + -0x128) = 0;
        *(undefined8 *)((long)register0x00000008 + -0x130) = 0;
        *(undefined8 *)((long)register0x00000008 + -0x138) = 0;
        *(undefined8 *)((long)register0x00000008 + -0x140) = 0;
        *(undefined8 *)((long)register0x00000008 + -0x148) = 0;
        *(undefined8 *)((long)register0x00000008 + -0x150) = 0;
        *(undefined8 *)((long)register0x00000008 + -0x158) = 0;
        *(undefined8 *)((long)register0x00000008 + -0x160) = 0;
        *(undefined8 *)((long)register0x00000008 + -0x168) = 0;
        *(undefined8 *)((long)register0x00000008 + -0x170) = 0;
        *(undefined8 *)((long)register0x00000008 + -0x178) = 0;
        *(undefined8 *)((long)register0x00000008 + -0x180) = 0;
        *(undefined8 *)((long)register0x00000008 + -0x188) = 0;
        *(undefined8 *)((long)register0x00000008 + -400) = 0;
        *(undefined8 *)((long)register0x00000008 + -0x198) = 0;
        *(undefined8 *)((long)register0x00000008 + -0x1a0) = 0;
        *(undefined8 *)((long)register0x00000008 + -0x1a8) = 0;
        *(undefined8 *)((long)register0x00000008 + -0x1b0) = 0;
        *(undefined8 *)((long)register0x00000008 + -0x1b8) = 0;
        *(undefined8 *)((long)register0x00000008 + -0x1c0) = 0;
        *(undefined8 *)((long)register0x00000008 + -0x1c8) = 0;
        *(undefined8 *)((long)register0x00000008 + -0x1d0) = 0;
        *(undefined8 *)((long)register0x00000008 + -0x1d8) = 0;
        *(undefined8 *)((long)register0x00000008 + -0x1e0) = 0;
        puVar14 = (undefined *)0x625c000;
        if (lVar11 != 0) {
          uVar9 = *(undefined8 *)(lVar11 + 0x20);
          uVar19 = *(undefined8 *)(lVar11 + 0x38);
          uVar18 = *(undefined8 *)(lVar11 + 0x30);
          *(undefined8 *)((long)register0x00000008 + -0xf8) = *(undefined8 *)(lVar11 + 0x28);
          *(undefined8 *)((long)register0x00000008 + -0x100) = uVar9;
          *(undefined8 *)((long)register0x00000008 + -0xe8) = uVar19;
          *(undefined8 *)((long)register0x00000008 + -0xf0) = uVar18;
          func_0x02c87364((undefined1 *)((long)register0x00000008 + -0x200),0);
          *(undefined8 *)((long)register0x00000008 + -0x138) =
               *(undefined8 *)((long)register0x00000008 + -0x1f8);
          *(undefined8 *)((long)register0x00000008 + -0x140) =
               *(undefined8 *)((long)register0x00000008 + -0x200);
          *(undefined8 *)((long)register0x00000008 + -0x128) =
               *(undefined8 *)((long)register0x00000008 + -0x1e8);
          *(undefined8 *)((long)register0x00000008 + -0x130) =
               *(undefined8 *)((long)register0x00000008 + -0x1f0);
          func_0x04658538((undefined1 *)((long)register0x00000008 + -0x220),
                          (undefined1 *)((long)register0x00000008 + -0x100),
                          (undefined1 *)((long)register0x00000008 + -0x140),0);
          *(undefined8 *)((long)register0x00000008 + -0x158) =
               *(undefined8 *)((long)register0x00000008 + -0x218);
          *(undefined8 *)((long)register0x00000008 + -0x160) =
               *(undefined8 *)((long)register0x00000008 + -0x220);
          *(undefined8 *)((long)register0x00000008 + -0x148) =
               *(undefined8 *)((long)register0x00000008 + -0x208);
          *(undefined8 *)((long)register0x00000008 + -0x150) =
               *(undefined8 *)((long)register0x00000008 + -0x210);
          func_0x046544b8((undefined1 *)((long)register0x00000008 + -0x240),100,0);
          *(undefined8 *)((long)register0x00000008 + -0x178) =
               *(undefined8 *)((long)register0x00000008 + -0x238);
          *(undefined8 *)((long)register0x00000008 + -0x180) =
               *(undefined8 *)((long)register0x00000008 + -0x240);
          *(undefined8 *)((long)register0x00000008 + -0x168) =
               *(undefined8 *)((long)register0x00000008 + -0x228);
          *(undefined8 *)((long)register0x00000008 + -0x170) =
               *(undefined8 *)((long)register0x00000008 + -0x230);
          func_0x046587e8((undefined1 *)((long)register0x00000008 + -0x260),
                          (undefined1 *)((long)register0x00000008 + -0x160),
                          (undefined1 *)((long)register0x00000008 + -0x180),0);
          puVar12 = *(undefined4 **)(*(long *)puVar2 + 0xb8);
          *(undefined8 *)((long)register0x00000008 + -0xf8) =
               *(undefined8 *)((long)register0x00000008 + -600);
          *(undefined8 *)((long)register0x00000008 + -0x100) =
               *(undefined8 *)((long)register0x00000008 + -0x260);
          *(undefined8 *)((long)register0x00000008 + -0xe8) =
               *(undefined8 *)((long)register0x00000008 + -0x248);
          *(undefined8 *)((long)register0x00000008 + -0xf0) =
               *(undefined8 *)((long)register0x00000008 + -0x250);
          func_0x046544b8((undefined1 *)((long)register0x00000008 + -0x280),*puVar12,0);
          *(undefined8 *)((long)register0x00000008 + -0x138) =
               *(undefined8 *)((long)register0x00000008 + -0x278);
          *(undefined8 *)((long)register0x00000008 + -0x140) =
               *(undefined8 *)((long)register0x00000008 + -0x280);
          *(undefined8 *)((long)register0x00000008 + -0x128) =
               *(undefined8 *)((long)register0x00000008 + -0x268);
          *(undefined8 *)((long)register0x00000008 + -0x130) =
               *(undefined8 *)((long)register0x00000008 + -0x270);
          func_0x04658538((undefined1 *)((long)register0x00000008 + -0x2a0),
                          (undefined1 *)((long)register0x00000008 + -0x100),
                          (undefined1 *)((long)register0x00000008 + -0x140),0);
          *(undefined8 *)((long)register0x00000008 + -0x158) =
               *(undefined8 *)((long)register0x00000008 + -0x298);
          *(undefined8 *)((long)register0x00000008 + -0x160) =
               *(undefined8 *)((long)register0x00000008 + -0x2a0);
          *(undefined8 *)((long)register0x00000008 + -0x148) =
               *(undefined8 *)((long)register0x00000008 + -0x288);
          *(undefined8 *)((long)register0x00000008 + -0x150) =
               *(undefined8 *)((long)register0x00000008 + -0x290);
          func_0x046544b8((undefined1 *)((long)register0x00000008 + -0x2c0),100,0);
          *(undefined8 *)((long)register0x00000008 + -0x178) =
               *(undefined8 *)((long)register0x00000008 + -0x2b8);
          *(undefined8 *)((long)register0x00000008 + -0x180) =
               *(undefined8 *)((long)register0x00000008 + -0x2c0);
          *(undefined8 *)((long)register0x00000008 + -0x168) =
               *(undefined8 *)((long)register0x00000008 + -0x2a8);
          *(undefined8 *)((long)register0x00000008 + -0x170) =
               *(undefined8 *)((long)register0x00000008 + -0x2b0);
          func_0x046587e8((undefined1 *)((long)register0x00000008 + -0x2e0),
                          (undefined1 *)((long)register0x00000008 + -0x160),
                          (undefined1 *)((long)register0x00000008 + -0x180),0);
          puVar3 = PTR_DAT_05e5d4d8;
          puVar2 = PTR_DAT_05e5d4c0;
          plVar13 = *(long **)(*(long *)puVar4 + 0xb8);
          *(undefined8 *)((long)register0x00000008 + -0xe8) =
               *(undefined8 *)((long)register0x00000008 + -0x2c8);
          *(undefined8 *)((long)register0x00000008 + -0xf0) =
               *(undefined8 *)((long)register0x00000008 + -0x2d0);
          *(undefined8 *)((long)register0x00000008 + -0xf8) =
               *(undefined8 *)((long)register0x00000008 + -0x2d8);
          *(undefined8 *)((long)register0x00000008 + -0x100) =
               *(undefined8 *)((long)register0x00000008 + -0x2e0);
          puVar14 = puVar4;
          if (*plVar13 != 0) {
            iVar6 = func_0x02c5f2a4(*plVar13,0);
            func_0x046544b8((undefined1 *)((long)register0x00000008 + -0x300),iVar6 + 100,0);
            *(undefined8 *)((long)register0x00000008 + -0x138) =
                 *(undefined8 *)((long)register0x00000008 + -0x2f8);
            *(undefined8 *)((long)register0x00000008 + -0x140) =
                 *(undefined8 *)((long)register0x00000008 + -0x300);
            *(undefined8 *)((long)register0x00000008 + -0x128) =
                 *(undefined8 *)((long)register0x00000008 + -0x2e8);
            *(undefined8 *)((long)register0x00000008 + -0x130) =
                 *(undefined8 *)((long)register0x00000008 + -0x2f0);
            func_0x04658538((undefined1 *)((long)register0x00000008 + -800),
                            (undefined1 *)((long)register0x00000008 + -0x100),
                            (undefined1 *)((long)register0x00000008 + -0x140),0);
            *(undefined8 *)((long)register0x00000008 + -0x158) =
                 *(undefined8 *)((long)register0x00000008 + -0x318);
            *(undefined8 *)((long)register0x00000008 + -0x160) =
                 *(undefined8 *)((long)register0x00000008 + -800);
            *(undefined8 *)((long)register0x00000008 + -0x148) =
                 *(undefined8 *)((long)register0x00000008 + -0x308);
            *(undefined8 *)((long)register0x00000008 + -0x150) =
                 *(undefined8 *)((long)register0x00000008 + -0x310);
            func_0x046544b8((undefined1 *)((long)register0x00000008 + -0x340),100,0);
            *(undefined8 *)((long)register0x00000008 + -0x178) =
                 *(undefined8 *)((long)register0x00000008 + -0x338);
            *(undefined8 *)((long)register0x00000008 + -0x180) =
                 *(undefined8 *)((long)register0x00000008 + -0x340);
            *(undefined8 *)((long)register0x00000008 + -0x168) =
                 *(undefined8 *)((long)register0x00000008 + -0x328);
            *(undefined8 *)((long)register0x00000008 + -0x170) =
                 *(undefined8 *)((long)register0x00000008 + -0x330);
            func_0x046587e8((undefined1 *)((long)register0x00000008 + -0x360),
                            (undefined1 *)((long)register0x00000008 + -0x160),
                            (undefined1 *)((long)register0x00000008 + -0x180),0);
            lVar11 = *(long *)puVar3;
            iVar6 = *(int *)(lVar11 + 0xe4);
            *(undefined8 *)((long)register0x00000008 + -0xf8) =
                 *(undefined8 *)((long)register0x00000008 + -0x358);
            *(undefined8 *)((long)register0x00000008 + -0x100) =
                 *(undefined8 *)((long)register0x00000008 + -0x360);
            *(undefined8 *)((long)register0x00000008 + -0xe8) =
                 *(undefined8 *)((long)register0x00000008 + -0x348);
            *(undefined8 *)((long)register0x00000008 + -0xf0) =
                 *(undefined8 *)((long)register0x00000008 + -0x350);
            if (iVar6 == 0) {
              func_0x029f5bd0();
              lVar11 = *(long *)puVar3;
            }
            func_0x04658538((undefined1 *)((long)register0x00000008 + -0x380),
                            (undefined1 *)((long)register0x00000008 + -0x100),
                            *(undefined8 *)(lVar11 + 0xb8),0);
            *(undefined8 *)((long)register0x00000008 + -0x138) =
                 *(undefined8 *)((long)register0x00000008 + -0x378);
            *(undefined8 *)((long)register0x00000008 + -0x140) =
                 *(undefined8 *)((long)register0x00000008 + -0x380);
            *(undefined8 *)((long)register0x00000008 + -0x128) =
                 *(undefined8 *)((long)register0x00000008 + -0x368);
            *(undefined8 *)((long)register0x00000008 + -0x130) =
                 *(undefined8 *)((long)register0x00000008 + -0x370);
            func_0x046544b8((undefined1 *)((long)register0x00000008 + -0x3a0),100,0);
            *(undefined8 *)((long)register0x00000008 + -0x158) =
                 *(undefined8 *)((long)register0x00000008 + -0x398);
            *(undefined8 *)((long)register0x00000008 + -0x160) =
                 *(undefined8 *)((long)register0x00000008 + -0x3a0);
            *(undefined8 *)((long)register0x00000008 + -0x148) =
                 *(undefined8 *)((long)register0x00000008 + -0x388);
            *(undefined8 *)((long)register0x00000008 + -0x150) =
                 *(undefined8 *)((long)register0x00000008 + -0x390);
            func_0x046587e8((undefined1 *)((long)register0x00000008 + -0x3c0),
                            (undefined1 *)((long)register0x00000008 + -0x140),
                            (undefined1 *)((long)register0x00000008 + -0x160),0);
            *(undefined8 *)((long)register0x00000008 + -0x178) =
                 *(undefined8 *)((long)register0x00000008 + -0x3b8);
            *(undefined8 *)((long)register0x00000008 + -0x180) =
                 *(undefined8 *)((long)register0x00000008 + -0x3c0);
            *(undefined8 *)((long)register0x00000008 + -0x168) =
                 *(undefined8 *)((long)register0x00000008 + -0x3a8);
            *(undefined8 *)((long)register0x00000008 + -0x170) =
                 *(undefined8 *)((long)register0x00000008 + -0x3b0);
            func_0x0465a16c((undefined1 *)((long)register0x00000008 + -0x3e0),
                            (undefined1 *)((long)register0x00000008 + -0x180),0);
            lVar11 = *(long *)puVar2;
            iVar6 = *(int *)(lVar11 + 0xe4);
            *(undefined8 *)((long)register0x00000008 + -0xf8) =
                 *(undefined8 *)((long)register0x00000008 + -0x3d8);
            *(undefined8 *)((long)register0x00000008 + -0x100) =
                 *(undefined8 *)((long)register0x00000008 + -0x3e0);
            *(undefined8 *)((long)register0x00000008 + -0xe8) =
                 *(undefined8 *)((long)register0x00000008 + -0x3c8);
            *(undefined8 *)((long)register0x00000008 + -0xf0) =
                 *(undefined8 *)((long)register0x00000008 + -0x3d0);
            if (iVar6 == 0) {
              func_0x029f5bd0();
              lVar11 = *(long *)puVar2;
            }
            puVar2 = PTR_DAT_05e5e058;
            if (**(long **)(lVar11 + 0xb8) != 0) {
              uVar9 = func_0x02c376a8(**(long **)(lVar11 + 0xb8),1);
              func_0x046544b8((undefined1 *)((long)register0x00000008 + -0x400),uVar9,0);
              *(undefined8 *)((long)register0x00000008 + -0x138) =
                   *(undefined8 *)((long)register0x00000008 + -0x3f8);
              *(undefined8 *)((long)register0x00000008 + -0x140) =
                   *(undefined8 *)((long)register0x00000008 + -0x400);
              *(undefined8 *)((long)register0x00000008 + -0x128) =
                   *(undefined8 *)((long)register0x00000008 + -1000);
              *(undefined8 *)((long)register0x00000008 + -0x130) =
                   *(undefined8 *)((long)register0x00000008 + -0x3f0);
              func_0x04658538((undefined1 *)((long)register0x00000008 + -0x420),
                              (undefined1 *)((long)register0x00000008 + -0x100),
                              (undefined1 *)((long)register0x00000008 + -0x140),0);
              uVar8 = (ulong)*(uint *)(uVar8 + 0x268);
              iVar6 = *(int *)(*(long *)puVar2 + 0xe4);
              *(undefined8 *)((long)register0x00000008 + -0xf8) =
                   *(undefined8 *)((long)register0x00000008 + -0x418);
              *(undefined8 *)((long)register0x00000008 + -0x100) =
                   *(undefined8 *)((long)register0x00000008 + -0x420);
              *(undefined8 *)((long)register0x00000008 + -0xe8) =
                   *(undefined8 *)((long)register0x00000008 + -0x408);
              *(undefined8 *)((long)register0x00000008 + -0xf0) =
                   *(undefined8 *)((long)register0x00000008 + -0x410);
              *(undefined8 *)((long)register0x00000008 + -0x438) =
                   *(undefined8 *)((long)register0x00000008 + -0x418);
              *(undefined8 *)((long)register0x00000008 + -0x440) =
                   *(undefined8 *)((long)register0x00000008 + -0x420);
              *(undefined8 *)((long)register0x00000008 + -0x428) =
                   *(undefined8 *)((long)register0x00000008 + -0x408);
              *(undefined8 *)((long)register0x00000008 + -0x430) =
                   *(undefined8 *)((long)register0x00000008 + -0x410);
              if (iVar6 == 0) {
                func_0x029f5bd0();
              }
              *(undefined8 *)((long)register0x00000008 + -0x478) =
                   *(undefined8 *)((long)register0x00000008 + -0x438);
              *(undefined8 *)((long)register0x00000008 + -0x480) =
                   *(undefined8 *)((long)register0x00000008 + -0x440);
              *(undefined8 *)((long)register0x00000008 + -0x468) =
                   *(undefined8 *)((long)register0x00000008 + -0x428);
              *(undefined8 *)((long)register0x00000008 + -0x470) =
                   *(undefined8 *)((long)register0x00000008 + -0x430);
              func_0x02c6db38((undefined1 *)((long)register0x00000008 + -0x460),
                              (undefined1 *)((long)register0x00000008 + -0x480),uVar8,0);
              plVar13 = *(long **)(*(long *)puVar4 + 0xb8);
              *(undefined8 *)((long)register0x00000008 + -0xe8) =
                   *(undefined8 *)((long)register0x00000008 + -0x448);
              *(undefined8 *)((long)register0x00000008 + -0xf0) =
                   *(undefined8 *)((long)register0x00000008 + -0x450);
              *(undefined8 *)((long)register0x00000008 + -0xf8) =
                   *(undefined8 *)((long)register0x00000008 + -0x458);
              *(undefined8 *)((long)register0x00000008 + -0x100) =
                   *(undefined8 *)((long)register0x00000008 + -0x460);
              if (*plVar13 != 0) {
                iVar6 = func_0x02c5f2ec(*plVar13,0);
                func_0x046544b8((undefined1 *)((long)register0x00000008 + -0x4a0),iVar6 + 0x7d,0);
                *(undefined8 *)((long)register0x00000008 + -0x138) =
                     *(undefined8 *)((long)register0x00000008 + -0x498);
                *(undefined8 *)((long)register0x00000008 + -0x140) =
                     *(undefined8 *)((long)register0x00000008 + -0x4a0);
                *(undefined8 *)((long)register0x00000008 + -0x128) =
                     *(undefined8 *)((long)register0x00000008 + -0x488);
                *(undefined8 *)((long)register0x00000008 + -0x130) =
                     *(undefined8 *)((long)register0x00000008 + -0x490);
                func_0x04658538((undefined1 *)((long)register0x00000008 + -0x4c0),
                                (undefined1 *)((long)register0x00000008 + -0x100),
                                (undefined1 *)((long)register0x00000008 + -0x140),0);
                *(undefined8 *)((long)register0x00000008 + -0x158) =
                     *(undefined8 *)((long)register0x00000008 + -0x4b8);
                *(undefined8 *)((long)register0x00000008 + -0x160) =
                     *(undefined8 *)((long)register0x00000008 + -0x4c0);
                *(undefined8 *)((long)register0x00000008 + -0x148) =
                     *(undefined8 *)((long)register0x00000008 + -0x4a8);
                *(undefined8 *)((long)register0x00000008 + -0x150) =
                     *(undefined8 *)((long)register0x00000008 + -0x4b0);
                func_0x046544b8((undefined1 *)((long)register0x00000008 + -0x4e0),100,0);
                *(undefined8 *)((long)register0x00000008 + -0x178) =
                     *(undefined8 *)((long)register0x00000008 + -0x4d8);
                *(undefined8 *)((long)register0x00000008 + -0x180) =
                     *(undefined8 *)((long)register0x00000008 + -0x4e0);
                *(undefined8 *)((long)register0x00000008 + -0x168) =
                     *(undefined8 *)((long)register0x00000008 + -0x4c8);
                *(undefined8 *)((long)register0x00000008 + -0x170) =
                     *(undefined8 *)((long)register0x00000008 + -0x4d0);
                func_0x046587e8((undefined1 *)((long)register0x00000008 + -0x500),
                                (undefined1 *)((long)register0x00000008 + -0x160),
                                (undefined1 *)((long)register0x00000008 + -0x180),0);
                lVar11 = *(long *)(*(long *)puVar3 + 0xb8);
                *(undefined8 *)((long)register0x00000008 + -0x118) =
                     *(undefined8 *)((long)register0x00000008 + -0x4f8);
                *(undefined8 *)((long)register0x00000008 + -0x120) =
                     *(undefined8 *)((long)register0x00000008 + -0x500);
                *(undefined8 *)((long)register0x00000008 + -0x108) =
                     *(undefined8 *)((long)register0x00000008 + -0x4e8);
                *(undefined8 *)((long)register0x00000008 + -0x110) =
                     *(undefined8 *)((long)register0x00000008 + -0x4f0);
                func_0x04658538((undefined1 *)((long)register0x00000008 + -0x520),
                                (undefined1 *)((long)register0x00000008 + -0x120),lVar11 + 0x40,0);
                *(undefined8 *)((long)register0x00000008 + -0x138) =
                     *(undefined8 *)((long)register0x00000008 + -0x518);
                *(undefined8 *)((long)register0x00000008 + -0x140) =
                     *(undefined8 *)((long)register0x00000008 + -0x520);
                *(undefined8 *)((long)register0x00000008 + -0x128) =
                     *(undefined8 *)((long)register0x00000008 + -0x508);
                *(undefined8 *)((long)register0x00000008 + -0x130) =
                     *(undefined8 *)((long)register0x00000008 + -0x510);
                func_0x046544b8((undefined1 *)((long)register0x00000008 + -0x540),100,0);
                *(undefined8 *)((long)register0x00000008 + -0x158) =
                     *(undefined8 *)((long)register0x00000008 + -0x538);
                *(undefined8 *)((long)register0x00000008 + -0x160) =
                     *(undefined8 *)((long)register0x00000008 + -0x540);
                *(undefined8 *)((long)register0x00000008 + -0x148) =
                     *(undefined8 *)((long)register0x00000008 + -0x528);
                *(undefined8 *)((long)register0x00000008 + -0x150) =
                     *(undefined8 *)((long)register0x00000008 + -0x530);
                func_0x046587e8((undefined1 *)((long)register0x00000008 + -0x560),
                                (undefined1 *)((long)register0x00000008 + -0x140),
                                (undefined1 *)((long)register0x00000008 + -0x160),0);
                *(undefined8 *)((long)register0x00000008 + -0x178) =
                     *(undefined8 *)((long)register0x00000008 + -0x558);
                *(undefined8 *)((long)register0x00000008 + -0x180) =
                     *(undefined8 *)((long)register0x00000008 + -0x560);
                *(undefined8 *)((long)register0x00000008 + -0x168) =
                     *(undefined8 *)((long)register0x00000008 + -0x548);
                *(undefined8 *)((long)register0x00000008 + -0x170) =
                     *(undefined8 *)((long)register0x00000008 + -0x550);
                func_0x0465a16c((undefined1 *)((long)register0x00000008 + -0x580),
                                (undefined1 *)((long)register0x00000008 + -0x180),0);
                plVar13 = *(long **)(*(long *)puVar4 + 0xb8);
                *(undefined8 *)((long)register0x00000008 + -0x108) =
                     *(undefined8 *)((long)register0x00000008 + -0x568);
                *(undefined8 *)((long)register0x00000008 + -0x110) =
                     *(undefined8 *)((long)register0x00000008 + -0x570);
                *(undefined8 *)((long)register0x00000008 + -0x118) =
                     *(undefined8 *)((long)register0x00000008 + -0x578);
                *(undefined8 *)((long)register0x00000008 + -0x120) =
                     *(undefined8 *)((long)register0x00000008 + -0x580);
                if (*plVar13 != 0) {
                  uVar7 = func_0x02c5f2c8(*plVar13,0);
                  if (99 < (int)uVar7) {
                    uVar7 = 100;
                  }
                  uVar7 = uVar7 & ((int)uVar7 >> 0x1f ^ 0xffffffffU);
                  func_0x046544b8((undefined1 *)((long)register0x00000008 + -0x5a0),100 - uVar7,0);
                  *(undefined8 *)((long)register0x00000008 + -0x138) =
                       *(undefined8 *)((long)register0x00000008 + -0x598);
                  *(undefined8 *)((long)register0x00000008 + -0x140) =
                       *(undefined8 *)((long)register0x00000008 + -0x5a0);
                  *(undefined8 *)((long)register0x00000008 + -0x128) =
                       *(undefined8 *)((long)register0x00000008 + -0x588);
                  *(undefined8 *)((long)register0x00000008 + -0x130) =
                       *(undefined8 *)((long)register0x00000008 + -0x590);
                  func_0x04658538((undefined1 *)((long)register0x00000008 + -0x5c0),
                                  (undefined1 *)((long)register0x00000008 + -0x100),
                                  (undefined1 *)((long)register0x00000008 + -0x140),0);
                  *(undefined8 *)((long)register0x00000008 + -0x158) =
                       *(undefined8 *)((long)register0x00000008 + -0x5b8);
                  *(undefined8 *)((long)register0x00000008 + -0x160) =
                       *(undefined8 *)((long)register0x00000008 + -0x5c0);
                  *(undefined8 *)((long)register0x00000008 + -0x148) =
                       *(undefined8 *)((long)register0x00000008 + -0x5a8);
                  *(undefined8 *)((long)register0x00000008 + -0x150) =
                       *(undefined8 *)((long)register0x00000008 + -0x5b0);
                  func_0x046544b8((undefined1 *)((long)register0x00000008 + -0x5e0),uVar7,0);
                  *(undefined8 *)((long)register0x00000008 + -0x178) =
                       *(undefined8 *)((long)register0x00000008 + -0x5d8);
                  *(undefined8 *)((long)register0x00000008 + -0x180) =
                       *(undefined8 *)((long)register0x00000008 + -0x5e0);
                  *(undefined8 *)((long)register0x00000008 + -0x168) =
                       *(undefined8 *)((long)register0x00000008 + -0x5c8);
                  *(undefined8 *)((long)register0x00000008 + -0x170) =
                       *(undefined8 *)((long)register0x00000008 + -0x5d0);
                  func_0x04658538((undefined1 *)((long)register0x00000008 + -0x600),
                                  (undefined1 *)((long)register0x00000008 + -0x120),
                                  (undefined1 *)((long)register0x00000008 + -0x180),0);
                  *(undefined8 *)((long)register0x00000008 + -0x198) =
                       *(undefined8 *)((long)register0x00000008 + -0x5f8);
                  *(undefined8 *)((long)register0x00000008 + -0x1a0) =
                       *(undefined8 *)((long)register0x00000008 + -0x600);
                  *(undefined8 *)((long)register0x00000008 + -0x188) =
                       *(undefined8 *)((long)register0x00000008 + -0x5e8);
                  *(undefined8 *)((long)register0x00000008 + -400) =
                       *(undefined8 *)((long)register0x00000008 + -0x5f0);
                  func_0x04658020((undefined1 *)((long)register0x00000008 + -0x620),
                                  (undefined1 *)((long)register0x00000008 + -0x160),
                                  (undefined1 *)((long)register0x00000008 + -0x1a0),0);
                  *(undefined8 *)((long)register0x00000008 + -0x1b8) =
                       *(undefined8 *)((long)register0x00000008 + -0x618);
                  *(undefined8 *)((long)register0x00000008 + -0x1c0) =
                       *(undefined8 *)((long)register0x00000008 + -0x620);
                  *(undefined8 *)((long)register0x00000008 + -0x1a8) =
                       *(undefined8 *)((long)register0x00000008 + -0x608);
                  *(undefined8 *)((long)register0x00000008 + -0x1b0) =
                       *(undefined8 *)((long)register0x00000008 + -0x610);
                  func_0x046544b8((undefined1 *)((long)register0x00000008 + -0x640),100,0);
                  *(undefined8 *)((long)register0x00000008 + -0x1d8) =
                       *(undefined8 *)((long)register0x00000008 + -0x638);
                  *(undefined8 *)((long)register0x00000008 + -0x1e0) =
                       *(undefined8 *)((long)register0x00000008 + -0x640);
                  *(undefined8 *)((long)register0x00000008 + -0x1c8) =
                       *(undefined8 *)((long)register0x00000008 + -0x628);
                  *(undefined8 *)((long)register0x00000008 + -0x1d0) =
                       *(undefined8 *)((long)register0x00000008 + -0x630);
                  func_0x046587e8((undefined1 *)((long)register0x00000008 + -0x660),
                                  (undefined1 *)((long)register0x00000008 + -0x1c0),
                                  (undefined1 *)((long)register0x00000008 + -0x1e0),0);
                  uVar9 = *(undefined8 *)((long)register0x00000008 + -0x660);
                  auVar17 = *(undefined1 (*) [16])((long)register0x00000008 + -0x660);
                  uVar19 = *(undefined8 *)((long)register0x00000008 + -0x648);
                  uVar18 = *(undefined8 *)((long)register0x00000008 + -0x650);
                  extraout_x8[1] = *(undefined8 *)((long)register0x00000008 + -0x658);
                  *extraout_x8 = uVar9;
                  extraout_x8[3] = uVar19;
                  extraout_x8[2] = uVar18;
                  return auVar17;
                }
              }
            }
          }
        }
        lVar11 = func_0x029f5cfc();
        puVar2 = PTR_DAT_05e631d8;
        *(undefined **)((long)register0x00000008 + -0x680) = &UNK_02c3a200;
        *(undefined **)((long)register0x00000008 + -0x678) = puVar14;
        *(ulong *)((long)register0x00000008 + -0x670) = uVar8;
        *(undefined8 **)((long)register0x00000008 + -0x668) = extraout_x8;
        if ((bRam000000000625c08d & 1) == 0) {
          func_0x029f5a50(PTR_DAT_05e631d8);
          func_0x029f5a50(PTR_DAT_05e631e8);
          bRam000000000625c08d = 1;
        }
        lVar10 = *(long *)puVar2;
        uVar9 = *(undefined8 *)(lVar11 + 0xd8);
        *(undefined4 *)(lVar11 + 500) = 0x43020000;
        if (*(int *)(lVar10 + 0xe4) == 0) {
          func_0x029f5bd0();
        }
        puVar2 = PTR_DAT_05e631e8;
        func_0x02c3a370(0x43020000,uVar9);
        func_0x02c3a370(*(undefined4 *)(lVar11 + 500),*(undefined8 *)(lVar11 + 0xd0));
        if (*(char *)(lVar11 + 0x1b0) != '\0') {
          uVar9 = func_0x057e4ed0(lVar11,0);
          func_0x057d549c(uVar9,0);
          uVar16 = func_0x057d55d4(_UNK_0116c030,_UNK_0116bf44,0);
          *(undefined4 *)(lVar11 + 0x248) = uVar16;
          uVar16 = func_0x057d55d4(_UNK_0116be9c,_UNK_0116c098,0);
          *(undefined4 *)(lVar11 + 0x24c) = uVar16;
          uVar16 = func_0x057d55d4(_UNK_0116c07c,0x40600000,0);
          *(undefined4 *)(lVar11 + 0x254) = uVar16;
          uVar16 = func_0x057d55d4(0,_UNK_0116c21c,0);
          *(undefined4 *)(lVar11 + 0x264) = uVar16;
          cVar5 = cRam000000000625b26f;
          *(undefined4 *)(lVar11 + 0xac) = uVar16;
          *(undefined4 *)(lVar11 + 0x22c) = 0;
          if (cVar5 == '\0') {
            func_0x029f5a50(PTR_DAT_05e58bf8);
            cRam000000000625b26f = '\x01';
          }
          uVar16 = *(undefined4 *)(*(undefined8 **)(*(long *)PTR_DAT_05e58bf8 + 0xb8) + 1);
          *(undefined8 *)(lVar11 + 0x230) = **(undefined8 **)(*(long *)PTR_DAT_05e58bf8 + 0xb8);
          *(undefined4 *)(lVar11 + 0x238) = uVar16;
        }
        uVar9 = func_0x029f5b40(*(undefined8 *)puVar2,*(undefined4 *)(lVar11 + 0x19c));
        auVar17._8_8_ = extraout_var;
        auVar17._0_8_ = extraout_d0;
        *(undefined8 *)(lVar11 + 0x1a8) = uVar9;
        if (iRam0000000006484da8 != 0) {
          *(undefined8 *)((long)register0x00000008 + -0x670) =
               *(undefined8 *)((long)register0x00000008 + -0x680);
          auVar17 = func_0x02ae4790(1L << (lVar11 + 0x1a8U >> 0xc & 0x3f),
                                    (lVar11 + 0x1a8U >> 0x12 & 0x7fff) * 8 + 0x62b8d80);
        }
        return auVar17;
      }
      param_1 = *(float *)(*(long *)(lVar11 + 0x48) + 0x40);
      param_3 = 1;
      param_4 = 0;
      param_5 = 0;
      register0x00000008 = (BADSPACEBASE *)((long)register0x00000008 + -0x90);
    }
    else {
      param_1 = *(float *)(*(long *)(lVar11 + 0x48) + 0x40);
      param_3 = 0;
      param_4 = 0;
      param_5 = 0;
      register0x00000008 = (BADSPACEBASE *)((long)register0x00000008 + -0x80);
    }
  } while( true );
}

