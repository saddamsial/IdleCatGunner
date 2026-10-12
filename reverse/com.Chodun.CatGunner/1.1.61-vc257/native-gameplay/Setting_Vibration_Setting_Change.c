/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b203f0, Ghidra VA 02c203f0. */

/* WARNING: Possible PIC construction at 0x02c200fc: Changing call to branch */
/* WARNING: Possible PIC construction at 0x02c2012c: Changing call to branch */
/* WARNING: Possible PIC construction at 0x02c2015c: Changing call to branch */
/* WARNING: Possible PIC construction at 0x02c201b8: Changing call to branch */
/* WARNING: Possible PIC construction at 0x02c201e4: Changing call to branch */
/* WARNING: Possible PIC construction at 0x02c20228: Changing call to branch */
/* WARNING: Possible PIC construction at 0x02c20260: Changing call to branch */
/* WARNING: Possible PIC construction at 0x02c203c8: Changing call to branch */
/* WARNING: Removing unreachable block (ram,0x02c20264) */
/* WARNING: Removing unreachable block (ram,0x02c2026c) */
/* WARNING: Removing unreachable block (ram,0x02c20280) */
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

ulong Setting_Vibration_Setting_Change(long param_1)

{
  undefined *puVar1;
  char cVar2;
  undefined1 *puVar3;
  long lVar4;
  ulong uVar5;
  undefined8 *puVar6;
  undefined8 uVar7;
  ulong uVar8;
  int *piVar9;
  long unaff_x19;
  long *plVar10;
  undefined8 unaff_x20;
  long lVar11;
  undefined8 unaff_x21;
  undefined8 unaff_x22;
  undefined8 unaff_x23;
  undefined *puVar12;
  code *unaff_x30;
  uint uVar13;
  undefined4 extraout_s0;
  undefined8 unaff_d8;
  undefined1 auVar14 [16];
  undefined1 auVar15 [12];
  
  *(byte *)(param_1 + 0x22) = *(byte *)(param_1 + 0x22) ^ 1;
  do {
    *(code **)((long)register0x00000008 + -0x30) = unaff_x30;
    *(undefined8 *)((long)register0x00000008 + -0x28) = unaff_x23;
    *(undefined8 *)((long)register0x00000008 + -0x20) = unaff_x22;
    *(undefined8 *)((long)register0x00000008 + -0x18) = unaff_x21;
    *(undefined8 *)((long)register0x00000008 + -0x10) = unaff_x20;
    *(long *)((long)register0x00000008 + -8) = unaff_x19;
    if ((bRam000000000625bf53 & 1) == 0) {
      func_0x029f5a50(PTR_DAT_05e58a78);
      bRam000000000625bf53 = 1;
    }
    lVar4 = *(long *)(param_1 + 0x28);
    if (lVar4 != 0) {
      uVar8 = (ulong)(*(char *)(param_1 + 0x20) == '\0');
      *(undefined **)((long)register0x00000008 + -0x50) = &UNK_02c20100;
      *(undefined8 *)((long)register0x00000008 + -0x48) = unaff_x21;
      *(undefined8 *)((long)register0x00000008 + -0x40) = 0x625b000;
      *(long *)((long)register0x00000008 + -0x38) = param_1;
      if ((bRam000000000626c55f & 1) == 0) {
        func_0x029f5a50(PTR_DAT_05ed56d8,uVar8,0);
        bRam000000000626c55f = 1;
      }
      if (lVar4 != 0) {
        lVar11 = *(long *)(lVar4 + 0x10);
        if (lVar11 == 0) {
          func_0x057f539c(lVar4,0);
        }
        if (pcRam000000000626c5d0 == (code *)0x0) {
          pcRam000000000626c5d0 = (code *)func_0x029f5a0c(&UNK_011a70e7);
        }
                    /* WARNING: Could not recover jumptable at 0x057dffb4. Too many branches */
                    /* WARNING: Treating indirect jump as call */
        uVar8 = (*pcRam000000000626c5d0)(lVar11,uVar8);
        return uVar8;
      }
      auVar15 = func_0x029f5cfc();
      *(undefined **)((long)register0x00000008 + -0x70) = &UNK_057dffbc;
      *(undefined8 *)((long)register0x00000008 + -0x68) = 0;
      *(undefined8 *)((long)register0x00000008 + -0x60) = 0x626c000;
      *(ulong *)((long)register0x00000008 + -0x58) = uVar8;
      if (pcRam000000000626c5d0 == (code *)0x0) {
        pcRam000000000626c5d0 = (code *)func_0x029f5a0c(&UNK_011a70e7);
      }
                    /* WARNING: Could not recover jumptable at 0x057dfffc. Too many branches */
                    /* WARNING: Treating indirect jump as call */
      uVar8 = (*pcRam000000000626c5d0)(auVar15._0_8_,auVar15._8_4_ & 1);
      return uVar8;
    }
    puVar12 = &SUB_02c2029c;
    auVar14 = func_0x029f5cfc();
    puVar3 = (undefined1 *)((long)register0x00000008 + -0x30);
    unaff_x19 = param_1;
    while( true ) {
      puVar1 = PTR_DAT_05e591c0;
      lVar4 = auVar14._0_8_;
      *(undefined **)(puVar3 + -0x30) = puVar12;
      *(undefined8 *)(puVar3 + -0x20) = unaff_x22;
      *(undefined8 *)(puVar3 + -0x18) = unaff_x21;
      *(undefined8 *)(puVar3 + -0x10) = 0x625b000;
      *(long *)(puVar3 + -8) = unaff_x19;
      unaff_x22 = 0x625b000;
      uVar8 = auVar14._8_8_ & 0xffffffff;
      if ((bRam000000000625bf6f & 1) == 0) {
        func_0x029f5a50(PTR_DAT_05e591c0);
        bRam000000000625bf6f = 1;
      }
      unaff_x21 = *(undefined8 *)(lVar4 + 0x28);
      if (*(int *)(*(long *)puVar1 + 0xe4) == 0) {
        func_0x029f5bd0();
      }
      uVar5 = func_0x057e14b4(unaff_x21,0,0);
      if ((uVar5 & 1) != 0) {
        return uVar5;
      }
      lVar11 = *(long *)(lVar4 + 0x28);
      if (lVar11 != 0) {
        uVar13 = 0;
        if ((auVar14._8_8_ & 1) == 0) {
          uVar13 = 0x3f800000;
        }
        *(undefined8 *)(puVar3 + -0x20) = unaff_d8;
        *(undefined8 *)(puVar3 + -0x18) = *(undefined8 *)(puVar3 + -0x30);
        *(undefined8 *)(puVar3 + -0x10) = *(undefined8 *)(puVar3 + -0x10);
        *(undefined8 *)(puVar3 + -8) = *(undefined8 *)(puVar3 + -8);
        if ((bRam000000000626a665 & 1) == 0) {
          func_0x029f5a50(PTR_DAT_05ed5860,0);
          bRam000000000626a665 = 1;
        }
        if (lVar11 != 0) {
          lVar4 = *(long *)(lVar11 + 0x10);
          if (lVar4 == 0) {
            func_0x057f539c(lVar11,0);
          }
          if (pcRam000000000626a698 == (code *)0x0) {
            pcRam000000000626a698 = (code *)func_0x029f5a0c(&UNK_0118bd7e);
          }
                    /* WARNING: Could not recover jumptable at 0x0578888c. Too many branches */
                    /* WARNING: Treating indirect jump as call */
          uVar8 = (*pcRam000000000626a698)(uVar13,lVar4);
          return uVar8;
        }
        uVar7 = func_0x029f5cfc();
        *(ulong *)(puVar3 + -0x40) = (ulong)uVar13;
        *(undefined **)(puVar3 + -0x38) = &UNK_05788894;
        *(undefined8 *)(puVar3 + -0x30) = 0;
        *(undefined8 *)(puVar3 + -0x28) = 0x626a000;
        if (pcRam000000000626a698 == (code *)0x0) {
          pcRam000000000626a698 = (code *)func_0x029f5a0c(&UNK_0118bd7e);
        }
                    /* WARNING: Could not recover jumptable at 0x057888dc. Too many branches */
                    /* WARNING: Treating indirect jump as call */
        uVar8 = (*pcRam000000000626a698)(extraout_s0,uVar7);
        return uVar8;
      }
      func_0x029f5cfc();
      *(undefined **)(puVar3 + -0x40) = &UNK_02c20340;
      lVar11 = func_0x045e3780(0);
      if (lVar11 == 0) {
        return 0;
      }
      lVar11 = func_0x045e3780(0);
      if (lVar11 != 0) {
        *(undefined8 *)(puVar3 + -0x50) = *(undefined8 *)(puVar3 + -0x40);
        *(long *)(puVar3 + -0x40) = lVar4;
        *(ulong *)(puVar3 + -0x38) = uVar8;
        if ((bRam000000000626045d & 1) == 0) {
          func_0x029f5a50(PTR_DAT_05e6ea58,0);
          bRam000000000626045d = 1;
        }
        plVar10 = *(long **)(lVar11 + 0x18);
        if (plVar10 == (long *)0x0) {
          return 0;
        }
        lVar4 = *plVar10;
        uVar8 = (ulong)*(ushort *)(lVar4 + 0x12e);
        if (uVar8 == 0) goto code_r0x045e4fac;
        piVar9 = (int *)(*(long *)(lVar4 + 0xb0) + 8);
        goto code_r0x045e4f94;
      }
      unaff_x19 = func_0x029f5cfc();
      cVar2 = cRam000000000625ba57;
      register0x00000008 = (BADSPACEBASE *)(puVar3 + -0x60);
      *(code **)(puVar3 + -0x60) = Setting_BGM_Setting_Change;
      *(long *)(puVar3 + -0x50) = lVar4;
      *(ulong *)(puVar3 + -0x48) = uVar8;
      unaff_x20 = 0x625b000;
      *(byte *)(unaff_x19 + 0x20) = *(byte *)(unaff_x19 + 0x20) ^ 1;
      if (cVar2 == '\0') {
        func_0x029f5a50(PTR_DAT_05e5dd70);
        cRam000000000625ba57 = '\x01';
      }
      if (**(long **)(*(long *)PTR_DAT_05e5dd70 + 0xb8) == 0) break;
      auVar14[8] = *(undefined1 *)(unaff_x19 + 0x20);
      auVar14._0_8_ = **(long **)(*(long *)PTR_DAT_05e5dd70 + 0xb8);
      auVar14._9_7_ = 0;
      puVar12 = (undefined *)0x2c203cc;
      puVar3 = puVar3 + -0x60;
    }
    unaff_x30 = Setting_SFX_Setting_Change;
    param_1 = func_0x029f5cfc();
    *(byte *)(param_1 + 0x21) = *(byte *)(param_1 + 0x21) ^ 1;
  } while( true );
  while( true ) {
    uVar8 = uVar8 - 1;
    piVar9 = piVar9 + 4;
    if (uVar8 == 0) break;
code_r0x045e4f94:
    if (*(long *)(piVar9 + -2) == *(long *)PTR_DAT_05e6ea58) {
      puVar6 = (undefined8 *)(lVar4 + (long)(*piVar9 + 2) * 0x10 + 0x138);
      goto code_r0x045e4fdc;
    }
  }
code_r0x045e4fac:
  puVar6 = (undefined8 *)func_0x02a2ed2c(plVar10,*(long *)PTR_DAT_05e6ea58,2);
code_r0x045e4fdc:
                    /* WARNING: Could not recover jumptable at 0x045e4fec. Too many branches */
                    /* WARNING: Treating indirect jump as call */
  uVar8 = (*(code *)*puVar6)(plVar10,puVar6[1]);
  return uVar8;
}

