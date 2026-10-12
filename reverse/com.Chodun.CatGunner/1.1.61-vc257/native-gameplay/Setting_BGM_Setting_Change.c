/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b20374, Ghidra VA 02c20374. */

/* WARNING: Possible PIC construction at 0x02c203c8: Changing call to branch */
/* WARNING: Possible PIC construction at 0x02c200fc: Changing call to branch */
/* WARNING: Possible PIC construction at 0x02c2012c: Changing call to branch */
/* WARNING: Possible PIC construction at 0x02c2015c: Changing call to branch */
/* WARNING: Possible PIC construction at 0x02c201b8: Changing call to branch */
/* WARNING: Possible PIC construction at 0x02c201e4: Changing call to branch */
/* WARNING: Possible PIC construction at 0x02c20228: Changing call to branch */
/* WARNING: Possible PIC construction at 0x02c20260: Changing call to branch */
/* WARNING: Removing unreachable block (ram,0x02c2022c) */
/* WARNING: Removing unreachable block (ram,0x02c20234) */
/* WARNING: Removing unreachable block (ram,0x02c20250) */
/* WARNING: Removing unreachable block (ram,0x02c20258) */
/* WARNING: Removing unreachable block (ram,0x02c201e8) */
/* WARNING: Removing unreachable block (ram,0x02c201f0) */
/* WARNING: Removing unreachable block (ram,0x02c20218) */
/* WARNING: Removing unreachable block (ram,0x02c201bc) */
/* WARNING: Removing unreachable block (ram,0x02c201c8) */
/* WARNING: Removing unreachable block (ram,0x02c201cc) */
/* WARNING: Removing unreachable block (ram,0x02c20160) */
/* WARNING: Removing unreachable block (ram,0x02c20168) */
/* WARNING: Removing unreachable block (ram,0x02c20180) */
/* WARNING: Removing unreachable block (ram,0x02c20194) */
/* WARNING: Removing unreachable block (ram,0x02c201ac) */
/* WARNING: Removing unreachable block (ram,0x02c20130) */
/* WARNING: Removing unreachable block (ram,0x02c20138) */
/* WARNING: Removing unreachable block (ram,0x02c2014c) */
/* WARNING: Removing unreachable block (ram,0x02c20100) */
/* WARNING: Removing unreachable block (ram,0x02c20108) */
/* WARNING: Removing unreachable block (ram,0x02c2011c) */
/* WARNING: Removing unreachable block (ram,0x02c203cc) */
/* WARNING: Removing unreachable block (ram,0x02c20264) */
/* WARNING: Removing unreachable block (ram,0x02c2026c) */
/* WARNING: Removing unreachable block (ram,0x02c20280) */

ulong Setting_BGM_Setting_Change(long param_1)

{
  undefined *puVar1;
  char cVar2;
  undefined1 *puVar3;
  long lVar4;
  undefined8 *puVar5;
  undefined8 uVar6;
  ulong uVar7;
  int *piVar8;
  ulong unaff_x19;
  long *plVar9;
  long unaff_x20;
  long lVar10;
  undefined8 unaff_x21;
  undefined8 unaff_x22;
  undefined8 unaff_x23;
  code *unaff_x30;
  undefined *puVar11;
  uint uVar12;
  undefined4 extraout_s0;
  undefined8 unaff_d8;
  undefined1 auVar13 [16];
  undefined1 auVar14 [12];
  
  while( true ) {
    cVar2 = cRam000000000625ba57;
    puVar3 = (undefined1 *)((long)register0x00000008 + -0x20);
    *(code **)((long)register0x00000008 + -0x20) = unaff_x30;
    *(long *)((long)register0x00000008 + -0x10) = unaff_x20;
    *(ulong *)((long)register0x00000008 + -8) = unaff_x19;
    *(byte *)(param_1 + 0x20) = *(byte *)(param_1 + 0x20) ^ 1;
    if (cVar2 == '\0') {
      func_0x029f5a50(PTR_DAT_05e5dd70);
      cRam000000000625ba57 = '\x01';
    }
    if (**(long **)(*(long *)PTR_DAT_05e5dd70 + 0xb8) == 0) {
      lVar10 = func_0x029f5cfc();
      *(byte *)(lVar10 + 0x21) = *(byte *)(lVar10 + 0x21) ^ 1;
      puVar3 = (undefined1 *)((long)register0x00000008 + -0x50);
      *(code **)((long)register0x00000008 + -0x50) = Setting_SFX_Setting_Change;
      *(undefined8 *)((long)register0x00000008 + -0x48) = unaff_x23;
      *(undefined8 *)((long)register0x00000008 + -0x40) = unaff_x22;
      *(undefined8 *)((long)register0x00000008 + -0x38) = unaff_x21;
      *(undefined8 *)((long)register0x00000008 + -0x30) = 0x625b000;
      *(long *)((long)register0x00000008 + -0x28) = param_1;
      if ((bRam000000000625bf53 & 1) == 0) {
        func_0x029f5a50(PTR_DAT_05e58a78);
        bRam000000000625bf53 = 1;
      }
      lVar4 = *(long *)(lVar10 + 0x28);
      if (lVar4 != 0) {
        uVar7 = (ulong)(*(char *)(lVar10 + 0x20) == '\0');
        *(undefined **)((long)register0x00000008 + -0x70) = &UNK_02c20100;
        *(undefined8 *)((long)register0x00000008 + -0x68) = unaff_x21;
        *(undefined8 *)((long)register0x00000008 + -0x60) = 0x625b000;
        *(long *)((long)register0x00000008 + -0x58) = lVar10;
        if ((bRam000000000626c55f & 1) == 0) {
          func_0x029f5a50(PTR_DAT_05ed56d8,uVar7,0);
          bRam000000000626c55f = 1;
        }
        if (lVar4 != 0) {
          lVar10 = *(long *)(lVar4 + 0x10);
          if (lVar10 == 0) {
            func_0x057f539c(lVar4,0);
          }
          if (pcRam000000000626c5d0 == (code *)0x0) {
            pcRam000000000626c5d0 = (code *)func_0x029f5a0c(&UNK_011a70e7);
          }
                    /* WARNING: Could not recover jumptable at 0x057dffb4. Too many branches */
                    /* WARNING: Treating indirect jump as call */
          uVar7 = (*pcRam000000000626c5d0)(lVar10,uVar7);
          return uVar7;
        }
        auVar14 = func_0x029f5cfc();
        *(undefined **)((long)register0x00000008 + -0x90) = &UNK_057dffbc;
        *(undefined8 *)((long)register0x00000008 + -0x88) = 0;
        *(undefined8 *)((long)register0x00000008 + -0x80) = 0x626c000;
        *(ulong *)((long)register0x00000008 + -0x78) = uVar7;
        if (pcRam000000000626c5d0 == (code *)0x0) {
          pcRam000000000626c5d0 = (code *)func_0x029f5a0c(&UNK_011a70e7);
        }
                    /* WARNING: Could not recover jumptable at 0x057dfffc. Too many branches */
                    /* WARNING: Treating indirect jump as call */
        uVar7 = (*pcRam000000000626c5d0)(auVar14._0_8_,auVar14._8_4_ & 1);
        return uVar7;
      }
      puVar11 = &SUB_02c2029c;
      auVar13 = func_0x029f5cfc();
    }
    else {
      auVar13[8] = *(undefined1 *)(param_1 + 0x20);
      auVar13._0_8_ = **(long **)(*(long *)PTR_DAT_05e5dd70 + 0xb8);
      auVar13._9_7_ = 0;
      puVar11 = (undefined *)0x2c203cc;
      lVar10 = param_1;
    }
    puVar1 = PTR_DAT_05e591c0;
    unaff_x20 = auVar13._0_8_;
    *(undefined **)(puVar3 + -0x30) = puVar11;
    *(undefined8 *)(puVar3 + -0x20) = unaff_x22;
    *(undefined8 *)(puVar3 + -0x18) = unaff_x21;
    *(undefined8 *)(puVar3 + -0x10) = 0x625b000;
    *(long *)(puVar3 + -8) = lVar10;
    unaff_x22 = 0x625b000;
    unaff_x19 = auVar13._8_8_ & 0xffffffff;
    if ((bRam000000000625bf6f & 1) == 0) {
      func_0x029f5a50(PTR_DAT_05e591c0);
      bRam000000000625bf6f = 1;
    }
    unaff_x21 = *(undefined8 *)(unaff_x20 + 0x28);
    if (*(int *)(*(long *)puVar1 + 0xe4) == 0) {
      func_0x029f5bd0();
    }
    uVar7 = func_0x057e14b4(unaff_x21,0,0);
    if ((uVar7 & 1) != 0) {
      return uVar7;
    }
    lVar10 = *(long *)(unaff_x20 + 0x28);
    if (lVar10 != 0) {
      uVar12 = 0;
      if ((auVar13._8_8_ & 1) == 0) {
        uVar12 = 0x3f800000;
      }
      *(undefined8 *)(puVar3 + -0x20) = unaff_d8;
      *(undefined8 *)(puVar3 + -0x18) = *(undefined8 *)(puVar3 + -0x30);
      *(undefined8 *)(puVar3 + -0x10) = *(undefined8 *)(puVar3 + -0x10);
      *(undefined8 *)(puVar3 + -8) = *(undefined8 *)(puVar3 + -8);
      if ((bRam000000000626a665 & 1) == 0) {
        func_0x029f5a50(PTR_DAT_05ed5860,0);
        bRam000000000626a665 = 1;
      }
      if (lVar10 != 0) {
        lVar4 = *(long *)(lVar10 + 0x10);
        if (lVar4 == 0) {
          func_0x057f539c(lVar10,0);
        }
        if (pcRam000000000626a698 == (code *)0x0) {
          pcRam000000000626a698 = (code *)func_0x029f5a0c(&UNK_0118bd7e);
        }
                    /* WARNING: Could not recover jumptable at 0x0578888c. Too many branches */
                    /* WARNING: Treating indirect jump as call */
        uVar7 = (*pcRam000000000626a698)(uVar12,lVar4);
        return uVar7;
      }
      uVar6 = func_0x029f5cfc();
      *(ulong *)(puVar3 + -0x40) = (ulong)uVar12;
      *(undefined **)(puVar3 + -0x38) = &UNK_05788894;
      *(undefined8 *)(puVar3 + -0x30) = 0;
      *(undefined8 *)(puVar3 + -0x28) = 0x626a000;
      if (pcRam000000000626a698 == (code *)0x0) {
        pcRam000000000626a698 = (code *)func_0x029f5a0c(&UNK_0118bd7e);
      }
                    /* WARNING: Could not recover jumptable at 0x057888dc. Too many branches */
                    /* WARNING: Treating indirect jump as call */
      uVar7 = (*pcRam000000000626a698)(extraout_s0,uVar6);
      return uVar7;
    }
    func_0x029f5cfc();
    register0x00000008 = (BADSPACEBASE *)(puVar3 + -0x40);
    *(undefined **)(puVar3 + -0x40) = &UNK_02c20340;
    lVar10 = func_0x045e3780(0);
    if (lVar10 == 0) {
      return 0;
    }
    lVar10 = func_0x045e3780(0);
    if (lVar10 != 0) break;
    unaff_x30 = Setting_BGM_Setting_Change;
    param_1 = func_0x029f5cfc();
  }
  *(undefined8 *)(puVar3 + -0x50) = *(undefined8 *)(puVar3 + -0x40);
  *(long *)(puVar3 + -0x40) = unaff_x20;
  *(ulong *)(puVar3 + -0x38) = unaff_x19;
  if ((bRam000000000626045d & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e6ea58,0);
    bRam000000000626045d = 1;
  }
  plVar9 = *(long **)(lVar10 + 0x18);
  if (plVar9 == (long *)0x0) {
    return 0;
  }
  lVar10 = *plVar9;
  uVar7 = (ulong)*(ushort *)(lVar10 + 0x12e);
  if (uVar7 != 0) {
    piVar8 = (int *)(*(long *)(lVar10 + 0xb0) + 8);
    do {
      if (*(long *)(piVar8 + -2) == *(long *)PTR_DAT_05e6ea58) {
        puVar5 = (undefined8 *)(lVar10 + (long)(*piVar8 + 2) * 0x10 + 0x138);
        goto code_r0x045e4fdc;
      }
      uVar7 = uVar7 - 1;
      piVar8 = piVar8 + 4;
    } while (uVar7 != 0);
  }
  puVar5 = (undefined8 *)func_0x02a2ed2c(plVar9,*(long *)PTR_DAT_05e6ea58,2);
code_r0x045e4fdc:
                    /* WARNING: Could not recover jumptable at 0x045e4fec. Too many branches */
                    /* WARNING: Treating indirect jump as call */
  uVar7 = (*(code *)*puVar5)(plVar9,puVar5[1]);
  return uVar7;
}

