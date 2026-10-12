/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b55b48, Ghidra VA 02c55b48. */

/* WARNING: Possible PIC construction at 0x02c55d08: Changing call to branch */
/* WARNING: Removing unreachable block (ram,0x02c55d0c) */
/* WARNING: Removing unreachable block (ram,0x02c55d14) */
/* WARNING: Removing unreachable block (ram,0x02c55d24) */
/* WARNING: Removing unreachable block (ram,0x02c55d30) */
/* WARNING: Removing unreachable block (ram,0x02c55d38) */
/* WARNING: Removing unreachable block (ram,0x02c55d48) */
/* WARNING: Removing unreachable block (ram,0x02c55d5c) */
/* WARNING: Removing unreachable block (ram,0x02c55d60) */
/* WARNING: Removing unreachable block (ram,0x02c55d74) */
/* WARNING: Removing unreachable block (ram,0x02c55d78) */
/* WARNING: Removing unreachable block (ram,0x02c55d88) */
/* WARNING: Removing unreachable block (ram,0x02c55d94) */
/* WARNING: Removing unreachable block (ram,0x02c55da0) */
/* WARNING: Removing unreachable block (ram,0x0353891c) */

void Raid_Mission_UI_Sort_Items(long param_1,long param_2)

{
  undefined *puVar1;
  undefined *puVar2;
  undefined *puVar3;
  undefined1 *puVar4;
  undefined1 *puVar5;
  undefined4 uVar6;
  long lVar7;
  undefined8 uVar8;
  long lVar9;
  long lVar10;
  undefined8 uVar11;
  undefined *puVar12;
  undefined8 uVar13;
  ulong uVar14;
  long lVar15;
  ulong uVar16;
  int *piVar17;
  long unaff_x19;
  uint uVar18;
  long unaff_x20;
  long unaff_x21;
  undefined8 uVar19;
  long unaff_x22;
  long *plVar20;
  ulong unaff_x23;
  ulong uVar21;
  long *unaff_x24;
  long *plVar22;
  ulong unaff_x25;
  long lVar23;
  undefined8 unaff_x30;
  undefined1 auVar24 [16];
  undefined1 auVar25 [16];
  
  puVar12 = PTR_DAT_05e63638;
  if ((bRam000000000625c18e & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e5e750);
    func_0x029f5a50(PTR_DAT_05e5e758);
    func_0x029f5a50(PTR_DAT_05e5d790);
    func_0x029f5a50(PTR_DAT_05e63640);
    func_0x029f5a50(PTR_DAT_05e591c0);
    func_0x029f5a50(PTR_DAT_05e63648);
    func_0x029f5a50(PTR_DAT_05e63638);
    bRam000000000625c18e = 1;
  }
  lVar7 = func_0x029f5cec(*(undefined8 *)puVar12);
  Object__ctor_0x600100e(lVar7,0);
  if (lVar7 == 0) {
LAB_02c55e00:
                    /* WARNING: Subroutine does not return */
    Throw_NullReference_Wrapper();
  }
  plVar20 = (long *)(lVar7 + 0x20);
  *plVar20 = param_2;
  Managed_WriteBarrier(plVar20,param_2);
  puVar3 = PTR_DAT_05e63648;
  puVar2 = PTR_DAT_05e5e758;
  puVar1 = PTR_DAT_05e5e750;
  puVar12 = PTR_DAT_05e5d790;
  if ((*(long *)(param_1 + 0x20) == 0) || (*plVar20 == 0)) goto LAB_02c55e00;
  uVar21 = *(ulong *)(*(long *)(param_1 + 0x20) + 0x18);
  uVar8 = *(undefined8 *)PTR_DAT_05e63640;
  *(undefined1 *)(lVar7 + 0x10) = *(undefined1 *)(*plVar20 + 0x48);
  lVar9 = func_0x029f5b40(uVar8,uVar21 & 0xffffffff);
  plVar22 = (long *)(lVar7 + 0x18);
  *plVar22 = lVar9;
  Managed_WriteBarrier(plVar22,lVar9);
  lVar9 = func_0x029f5b40(*(undefined8 *)puVar12,uVar21 & 0xffffffff);
  if ((int)uVar21 < 1) {
    lVar10 = func_0x029f5cec(*(undefined8 *)puVar2);
    lVar15 = 0;
    func_0x03cf77bc(lVar10,lVar7,*(undefined8 *)puVar3);
    lVar23 = *(long *)puVar1;
  }
  else {
    if (lVar9 == 0) goto LAB_02c55e00;
    unaff_x25 = 0;
    do {
      if (*(uint *)(lVar9 + 0x18) <= unaff_x25) {
LAB_02c55e04:
                    /* WARNING: Subroutine does not return */
        Throw_Index_Wrapper();
      }
      lVar10 = *plVar20;
      *(int *)(lVar9 + unaff_x25 * 4 + 0x20) = (int)unaff_x25;
      if (lVar10 == 0) goto LAB_02c55e00;
      lVar23 = *plVar22;
      uVar6 = Raid_Mission_manager_State_return(lVar10,unaff_x25 & 0xffffffff);
      if (lVar23 == 0) goto LAB_02c55e00;
      if (*(uint *)(lVar23 + 0x18) <= unaff_x25) goto LAB_02c55e04;
      lVar10 = unaff_x25 * 4;
      unaff_x25 = unaff_x25 + 1;
      *(undefined4 *)(lVar23 + lVar10 + 0x20) = uVar6;
    } while ((uVar21 & 0xffffffff) != unaff_x25);
    lVar10 = func_0x029f5cec(*(undefined8 *)puVar2);
    lVar15 = 0;
    func_0x03cf77bc(lVar10,lVar7,*(undefined8 *)puVar3);
    lVar23 = *(long *)PTR_DAT_05e5e750;
    unaff_x30 = 0x2c55d0c;
    register0x00000008 = (BADSPACEBASE *)&stack0xffffffffffffffa0;
    unaff_x19 = param_1;
    unaff_x20 = lVar9;
    unaff_x21 = lVar7;
    unaff_x22 = lVar10;
    unaff_x23 = uVar21;
    unaff_x24 = plVar22;
  }
  *(undefined8 *)((long)register0x00000008 + -0x20) = unaff_x30;
  *(long *)((long)register0x00000008 + -0x18) = unaff_x21;
  *(long *)((long)register0x00000008 + -0x10) = unaff_x20;
  *(long *)((long)register0x00000008 + -8) = unaff_x19;
  if (*(long *)(lVar23 + 0x38) == 0) {
    func_0x02a2ea54(lVar23);
  }
  if (lVar9 == 0) {
    func_0x029f5a64(PTR_DAT_05e598c0);
    uVar8 = func_0x029f5cec();
    puVar12 = PTR_DAT_05e68520;
  }
  else {
    if (lVar10 != 0) {
      lVar7 = *(long *)(*(long *)(lVar23 + 0x38) + 0x18);
      if ((*(ushort *)(lVar7 + 0x135) & 1) == 0) {
        lVar7 = func_0x02a2e9f8();
      }
      if (*(int *)(lVar7 + 0xe4) == 0) {
        func_0x029f5bd0();
      }
      uVar6 = *(undefined4 *)(lVar9 + 0x18);
      lVar23 = *(long *)(*(long *)(lVar23 + 0x38) + 0x10);
      *(undefined8 *)((long)register0x00000008 + -0x30) =
           *(undefined8 *)((long)register0x00000008 + -0x20);
      *(ulong *)((long)register0x00000008 + -0x28) = unaff_x23;
      *(long *)((long)register0x00000008 + -0x20) = unaff_x22;
      *(undefined8 *)((long)register0x00000008 + -0x18) =
           *(undefined8 *)((long)register0x00000008 + -0x18);
      *(undefined8 *)((long)register0x00000008 + -0x10) =
           *(undefined8 *)((long)register0x00000008 + -0x10);
      *(undefined8 *)((long)register0x00000008 + -8) =
           *(undefined8 *)((long)register0x00000008 + -8);
      lVar7 = *(long *)(lVar23 + 0x20);
      if ((*(ushort *)(lVar7 + 0x135) & 1) == 0) {
        lVar7 = func_0x02a2e9f8(lVar7,0,uVar6);
      }
      lVar7 = *(long *)(*(long *)(lVar7 + 0xc0) + 0x48);
      if ((*(ushort *)(lVar7 + 0x135) & 1) == 0) {
        lVar7 = func_0x02a2e9f8();
      }
      if (*(int *)(lVar7 + 0xe4) == 0) {
        func_0x029f5bd0();
      }
      lVar7 = *(long *)(lVar23 + 0x20);
      if ((*(ushort *)(lVar7 + 0x135) & 1) == 0) {
        lVar7 = func_0x02a2e9f8();
      }
      func_0x04148918(lVar9,0,uVar6,lVar10,*(undefined8 *)(*(long *)(lVar7 + 0xc0) + 0x40));
      return;
    }
    func_0x029f5a64(PTR_DAT_05e598c0);
    uVar8 = func_0x029f5cec();
    puVar12 = PTR_DAT_05e6a220;
  }
  uVar11 = func_0x029f5a64(puVar12);
  lVar7 = 0;
  ArgumentNullException__ctor_0x60003ec(uVar8,uVar11);
  auVar24 = func_0x029f5bc0(uVar8,lVar23);
  *(undefined **)((long)register0x00000008 + -0x40) = &UNK_02f4980c;
  *(long *)((long)register0x00000008 + -0x38) = lVar9;
  *(undefined8 *)((long)register0x00000008 + -0x30) = uVar8;
  *(long *)((long)register0x00000008 + -0x28) = lVar23;
  if (*(long *)(lVar7 + 0x38) == 0) {
    func_0x02a2ea54(lVar7);
  }
  if (auVar24._0_8_ == 0) {
    func_0x029f5a64(PTR_DAT_05e598c0);
    uVar8 = func_0x029f5cec();
    uVar11 = func_0x029f5a64(PTR_DAT_05e68520);
    lVar10 = 0;
    ArgumentNullException__ctor_0x60003ec(uVar8,uVar11);
    auVar24 = func_0x029f5bc0(uVar8,lVar7);
    lVar9 = auVar24._0_8_;
    *(undefined **)((long)register0x00000008 + -0x60) = &UNK_02f49894;
    *(undefined8 *)((long)register0x00000008 + -0x58) = 0;
    *(undefined8 *)((long)register0x00000008 + -0x50) = uVar8;
    *(long *)((long)register0x00000008 + -0x48) = lVar7;
    if (*(long *)(lVar10 + 0x38) == 0) {
      func_0x02a2ea54(lVar10);
    }
    if (lVar9 == 0) {
      func_0x029f5a64(PTR_DAT_05e598c0);
      uVar8 = func_0x029f5cec();
      puVar12 = PTR_DAT_05e68520;
    }
    else {
      if (auVar24._8_8_ != 0) {
        lVar7 = *(long *)(*(long *)(lVar10 + 0x38) + 0x18);
        if ((*(ushort *)(lVar7 + 0x135) & 1) == 0) {
          lVar7 = func_0x02a2e9f8();
        }
        if (*(int *)(lVar7 + 0xe4) == 0) {
          func_0x029f5bd0();
        }
        uVar6 = *(undefined4 *)(lVar9 + 0x18);
        lVar10 = *(long *)(*(long *)(lVar10 + 0x38) + 0x10);
        *(undefined8 *)((long)register0x00000008 + -0x70) =
             *(undefined8 *)((long)register0x00000008 + -0x60);
        *(ulong *)((long)register0x00000008 + -0x68) = unaff_x23;
        *(long *)((long)register0x00000008 + -0x60) = unaff_x22;
        *(undefined8 *)((long)register0x00000008 + -0x58) =
             *(undefined8 *)((long)register0x00000008 + -0x58);
        *(undefined8 *)((long)register0x00000008 + -0x50) =
             *(undefined8 *)((long)register0x00000008 + -0x50);
        *(undefined8 *)((long)register0x00000008 + -0x48) =
             *(undefined8 *)((long)register0x00000008 + -0x48);
        lVar7 = *(long *)(lVar10 + 0x20);
        if ((*(ushort *)(lVar7 + 0x135) & 1) == 0) {
          lVar7 = func_0x02a2e9f8(lVar7,0,uVar6);
        }
        lVar7 = *(long *)(*(long *)(lVar7 + 0xc0) + 0x48);
        if ((*(ushort *)(lVar7 + 0x135) & 1) == 0) {
          lVar7 = func_0x02a2e9f8();
        }
        if (*(int *)(lVar7 + 0xe4) == 0) {
          func_0x029f5bd0();
        }
        lVar7 = *(long *)(lVar10 + 0x20);
        if ((*(ushort *)(lVar7 + 0x135) & 1) == 0) {
          lVar7 = func_0x02a2e9f8();
        }
        func_0x0429d610(lVar9,0,uVar6,auVar24._8_8_,*(undefined8 *)(*(long *)(lVar7 + 0xc0) + 0x40))
        ;
        return;
      }
      func_0x029f5a64(PTR_DAT_05e598c0);
      uVar8 = func_0x029f5cec();
      puVar12 = PTR_DAT_05e6a220;
    }
    uVar11 = func_0x029f5a64(puVar12);
    lVar7 = 0;
    ArgumentNullException__ctor_0x60003ec(uVar8,uVar11);
    auVar25 = func_0x029f5bc0(uVar8,lVar10);
    *(undefined **)((long)register0x00000008 + -0x80) = &UNK_02f49964;
    *(long *)((long)register0x00000008 + -0x78) = lVar9;
    *(undefined8 *)((long)register0x00000008 + -0x70) = uVar8;
    *(long *)((long)register0x00000008 + -0x68) = lVar10;
    if (*(long *)(lVar7 + 0x38) == 0) {
      func_0x02a2ea54(lVar7);
    }
    if (auVar25._0_8_ == 0) {
      func_0x029f5a64(PTR_DAT_05e598c0);
      uVar8 = func_0x029f5cec();
      uVar11 = func_0x029f5a64(PTR_DAT_05e68520);
      lVar10 = 0;
      ArgumentNullException__ctor_0x60003ec(uVar8,uVar11);
      auVar24 = func_0x029f5bc0(uVar8,lVar7);
      lVar9 = auVar24._0_8_;
      *(undefined **)((long)register0x00000008 + -0xa0) = &UNK_02f499ec;
      *(undefined8 *)((long)register0x00000008 + -0x98) = 0;
      *(undefined8 *)((long)register0x00000008 + -0x90) = uVar8;
      *(long *)((long)register0x00000008 + -0x88) = lVar7;
      if (*(long *)(lVar10 + 0x38) == 0) {
        func_0x02a2ea54(lVar10);
      }
      if (lVar9 == 0) {
        func_0x029f5a64(PTR_DAT_05e598c0);
        uVar8 = func_0x029f5cec();
        puVar12 = PTR_DAT_05e68520;
      }
      else {
        if (auVar24._8_8_ != 0) {
          lVar7 = *(long *)(*(long *)(lVar10 + 0x38) + 0x18);
          if ((*(ushort *)(lVar7 + 0x135) & 1) == 0) {
            lVar7 = func_0x02a2e9f8();
          }
          if (*(int *)(lVar7 + 0xe4) == 0) {
            func_0x029f5bd0();
          }
          uVar6 = *(undefined4 *)(lVar9 + 0x18);
          lVar10 = *(long *)(*(long *)(lVar10 + 0x38) + 0x10);
          *(undefined8 *)((long)register0x00000008 + -0xb0) =
               *(undefined8 *)((long)register0x00000008 + -0xa0);
          *(ulong *)((long)register0x00000008 + -0xa8) = unaff_x23;
          *(long *)((long)register0x00000008 + -0xa0) = unaff_x22;
          *(undefined8 *)((long)register0x00000008 + -0x98) =
               *(undefined8 *)((long)register0x00000008 + -0x98);
          *(undefined8 *)((long)register0x00000008 + -0x90) =
               *(undefined8 *)((long)register0x00000008 + -0x90);
          *(undefined8 *)((long)register0x00000008 + -0x88) =
               *(undefined8 *)((long)register0x00000008 + -0x88);
          lVar7 = *(long *)(lVar10 + 0x20);
          if ((*(ushort *)(lVar7 + 0x135) & 1) == 0) {
            lVar7 = func_0x02a2e9f8(lVar7,0,uVar6);
          }
          lVar7 = *(long *)(*(long *)(lVar7 + 0xc0) + 0x48);
          if ((*(ushort *)(lVar7 + 0x135) & 1) == 0) {
            lVar7 = func_0x02a2e9f8();
          }
          if (*(int *)(lVar7 + 0xe4) == 0) {
            func_0x029f5bd0();
          }
          lVar7 = *(long *)(lVar10 + 0x20);
          if ((*(ushort *)(lVar7 + 0x135) & 1) == 0) {
            lVar7 = func_0x02a2e9f8();
          }
          func_0x043acb28(lVar9,0,uVar6,auVar24._8_8_,
                          *(undefined8 *)(*(long *)(lVar7 + 0xc0) + 0x40));
          return;
        }
        func_0x029f5a64(PTR_DAT_05e598c0);
        uVar8 = func_0x029f5cec();
        puVar12 = PTR_DAT_05e6a220;
      }
      uVar11 = func_0x029f5a64(puVar12);
      lVar23 = 0;
      ArgumentNullException__ctor_0x60003ec(uVar8,uVar11);
      auVar24 = func_0x029f5bc0(uVar8,lVar10);
      lVar7 = auVar24._0_8_;
      *(undefined **)((long)register0x00000008 + -0xc0) = &UNK_02f49abc;
      *(long *)((long)register0x00000008 + -0xb8) = lVar9;
      *(undefined8 *)((long)register0x00000008 + -0xb0) = uVar8;
      *(long *)((long)register0x00000008 + -0xa8) = lVar10;
      if (*(long *)(lVar23 + 0x38) == 0) {
        func_0x02a2ea54(lVar23);
      }
      if (lVar7 == 0) {
        func_0x029f5a64(PTR_DAT_05e598c0);
        uVar8 = func_0x029f5cec();
        puVar12 = PTR_DAT_05e68520;
      }
      else {
        if (auVar24._8_8_ != 0) {
          lVar9 = *(long *)(*(long *)(lVar23 + 0x38) + 0x18);
          if ((*(ushort *)(lVar9 + 0x135) & 1) == 0) {
            lVar9 = func_0x02a2e9f8();
          }
          if (*(int *)(lVar9 + 0xe4) == 0) {
            func_0x029f5bd0();
          }
          uVar6 = *(undefined4 *)(lVar7 + 0x18);
          lVar10 = *(long *)(*(long *)(lVar23 + 0x38) + 0x10);
          *(undefined8 *)((long)register0x00000008 + -0xd0) =
               *(undefined8 *)((long)register0x00000008 + -0xc0);
          *(ulong *)((long)register0x00000008 + -200) = unaff_x23;
          *(long *)((long)register0x00000008 + -0xc0) = unaff_x22;
          *(undefined8 *)((long)register0x00000008 + -0xb8) =
               *(undefined8 *)((long)register0x00000008 + -0xb8);
          *(undefined8 *)((long)register0x00000008 + -0xb0) =
               *(undefined8 *)((long)register0x00000008 + -0xb0);
          *(undefined8 *)((long)register0x00000008 + -0xa8) =
               *(undefined8 *)((long)register0x00000008 + -0xa8);
          lVar9 = *(long *)(lVar10 + 0x20);
          if ((*(ushort *)(lVar9 + 0x135) & 1) == 0) {
            lVar9 = func_0x02a2e9f8(lVar9,0,uVar6);
          }
          lVar9 = *(long *)(*(long *)(lVar9 + 0xc0) + 0x48);
          if ((*(ushort *)(lVar9 + 0x135) & 1) == 0) {
            lVar9 = func_0x02a2e9f8();
          }
          if (*(int *)(lVar9 + 0xe4) == 0) {
            func_0x029f5bd0();
          }
          lVar9 = *(long *)(lVar10 + 0x20);
          if ((*(ushort *)(lVar9 + 0x135) & 1) == 0) {
            lVar9 = func_0x02a2e9f8();
          }
          func_0x043b82f8(lVar7,0,uVar6,auVar24._8_8_,
                          *(undefined8 *)(*(long *)(lVar9 + 0xc0) + 0x40));
          return;
        }
        func_0x029f5a64(PTR_DAT_05e598c0);
        uVar8 = func_0x029f5cec();
        puVar12 = PTR_DAT_05e6a220;
      }
      uVar11 = func_0x029f5a64(puVar12);
      lVar10 = 0;
      ArgumentNullException__ctor_0x60003ec(uVar8,uVar11);
      auVar24 = func_0x029f5bc0(uVar8,lVar23);
      lVar9 = auVar24._0_8_;
      *(undefined **)((long)register0x00000008 + -0xe0) = &UNK_02f49b8c;
      *(long *)((long)register0x00000008 + -0xd8) = lVar7;
      *(undefined8 *)((long)register0x00000008 + -0xd0) = uVar8;
      *(long *)((long)register0x00000008 + -200) = lVar23;
      if (*(long *)(lVar10 + 0x38) == 0) {
        func_0x02a2ea54(lVar10);
      }
      if (lVar9 == 0) {
        func_0x029f5a64(PTR_DAT_05e598c0);
        uVar8 = func_0x029f5cec();
        puVar12 = PTR_DAT_05e68520;
      }
      else {
        if (auVar24._8_8_ != 0) {
          lVar7 = *(long *)(*(long *)(lVar10 + 0x38) + 0x18);
          if ((*(ushort *)(lVar7 + 0x135) & 1) == 0) {
            lVar7 = func_0x02a2e9f8();
          }
          if (*(int *)(lVar7 + 0xe4) == 0) {
            func_0x029f5bd0();
          }
          uVar6 = *(undefined4 *)(lVar9 + 0x18);
          lVar10 = *(long *)(*(long *)(lVar10 + 0x38) + 0x10);
          *(undefined8 *)((long)register0x00000008 + -0xf0) =
               *(undefined8 *)((long)register0x00000008 + -0xe0);
          *(ulong *)((long)register0x00000008 + -0xe8) = unaff_x23;
          *(long *)((long)register0x00000008 + -0xe0) = unaff_x22;
          *(undefined8 *)((long)register0x00000008 + -0xd8) =
               *(undefined8 *)((long)register0x00000008 + -0xd8);
          *(undefined8 *)((long)register0x00000008 + -0xd0) =
               *(undefined8 *)((long)register0x00000008 + -0xd0);
          *(undefined8 *)((long)register0x00000008 + -200) =
               *(undefined8 *)((long)register0x00000008 + -200);
          lVar7 = *(long *)(lVar10 + 0x20);
          if ((*(ushort *)(lVar7 + 0x135) & 1) == 0) {
            lVar7 = func_0x02a2e9f8(lVar7,0,uVar6);
          }
          lVar7 = *(long *)(*(long *)(lVar7 + 0xc0) + 0x48);
          if ((*(ushort *)(lVar7 + 0x135) & 1) == 0) {
            lVar7 = func_0x02a2e9f8();
          }
          if (*(int *)(lVar7 + 0xe4) == 0) {
            func_0x029f5bd0();
          }
          lVar7 = *(long *)(lVar10 + 0x20);
          if ((*(ushort *)(lVar7 + 0x135) & 1) == 0) {
            lVar7 = func_0x02a2e9f8();
          }
          func_0x043c9768(lVar9,0,uVar6,auVar24._8_8_,
                          *(undefined8 *)(*(long *)(lVar7 + 0xc0) + 0x40));
          return;
        }
        func_0x029f5a64(PTR_DAT_05e598c0);
        uVar8 = func_0x029f5cec();
        puVar12 = PTR_DAT_05e6a220;
      }
      uVar11 = func_0x029f5a64(puVar12);
      lVar23 = 0;
      ArgumentNullException__ctor_0x60003ec(uVar8,uVar11);
      auVar24 = func_0x029f5bc0(uVar8,lVar10);
      lVar7 = auVar24._0_8_;
      *(undefined **)((long)register0x00000008 + -0x100) = &UNK_02f49c5c;
      *(long *)((long)register0x00000008 + -0xf8) = lVar9;
      *(undefined8 *)((long)register0x00000008 + -0xf0) = uVar8;
      *(long *)((long)register0x00000008 + -0xe8) = lVar10;
      if (*(long *)(lVar23 + 0x38) == 0) {
        func_0x02a2ea54(lVar23);
      }
      if (lVar7 == 0) {
        func_0x029f5a64(PTR_DAT_05e598c0);
        uVar8 = func_0x029f5cec();
        puVar12 = PTR_DAT_05e68520;
      }
      else {
        if (auVar24._8_8_ != 0) {
          lVar9 = *(long *)(*(long *)(lVar23 + 0x38) + 0x18);
          if ((*(ushort *)(lVar9 + 0x135) & 1) == 0) {
            lVar9 = func_0x02a2e9f8();
          }
          if (*(int *)(lVar9 + 0xe4) == 0) {
            func_0x029f5bd0();
          }
          uVar6 = *(undefined4 *)(lVar7 + 0x18);
          lVar10 = *(long *)(*(long *)(lVar23 + 0x38) + 0x10);
          *(undefined8 *)((long)register0x00000008 + -0x110) =
               *(undefined8 *)((long)register0x00000008 + -0x100);
          *(ulong *)((long)register0x00000008 + -0x108) = unaff_x23;
          *(long *)((long)register0x00000008 + -0x100) = unaff_x22;
          *(undefined8 *)((long)register0x00000008 + -0xf8) =
               *(undefined8 *)((long)register0x00000008 + -0xf8);
          *(undefined8 *)((long)register0x00000008 + -0xf0) =
               *(undefined8 *)((long)register0x00000008 + -0xf0);
          *(undefined8 *)((long)register0x00000008 + -0xe8) =
               *(undefined8 *)((long)register0x00000008 + -0xe8);
          lVar9 = *(long *)(lVar10 + 0x20);
          if ((*(ushort *)(lVar9 + 0x135) & 1) == 0) {
            lVar9 = func_0x02a2e9f8(lVar9,0,uVar6);
          }
          lVar9 = *(long *)(*(long *)(lVar9 + 0xc0) + 0x48);
          if ((*(ushort *)(lVar9 + 0x135) & 1) == 0) {
            lVar9 = func_0x02a2e9f8();
          }
          if (*(int *)(lVar9 + 0xe4) == 0) {
            func_0x029f5bd0();
          }
          lVar9 = *(long *)(lVar10 + 0x20);
          if ((*(ushort *)(lVar9 + 0x135) & 1) == 0) {
            lVar9 = func_0x02a2e9f8();
          }
          func_0x044c39f8(lVar7,0,uVar6,auVar24._8_8_,
                          *(undefined8 *)(*(long *)(lVar9 + 0xc0) + 0x40));
          return;
        }
        func_0x029f5a64(PTR_DAT_05e598c0);
        uVar8 = func_0x029f5cec();
        puVar12 = PTR_DAT_05e6a220;
      }
      uVar11 = func_0x029f5a64(puVar12);
      lVar10 = 0;
      ArgumentNullException__ctor_0x60003ec(uVar8,uVar11);
      auVar24 = func_0x029f5bc0(uVar8,lVar23);
      lVar9 = auVar24._0_8_;
      *(undefined **)((long)register0x00000008 + -0x120) = &UNK_02f49d2c;
      *(long *)((long)register0x00000008 + -0x118) = lVar7;
      *(undefined8 *)((long)register0x00000008 + -0x110) = uVar8;
      *(long *)((long)register0x00000008 + -0x108) = lVar23;
      if (*(long *)(lVar10 + 0x38) == 0) {
        func_0x02a2ea54(lVar10);
      }
      if (lVar9 == 0) {
        func_0x029f5a64(PTR_DAT_05e598c0);
        uVar8 = func_0x029f5cec();
        puVar12 = PTR_DAT_05e68520;
      }
      else {
        if (auVar24._8_8_ != 0) {
          lVar7 = *(long *)(*(long *)(lVar10 + 0x38) + 0x18);
          if ((*(ushort *)(lVar7 + 0x135) & 1) == 0) {
            lVar7 = func_0x02a2e9f8();
          }
          if (*(int *)(lVar7 + 0xe4) == 0) {
            func_0x029f5bd0();
          }
                    /* WARNING: Could not recover jumptable at 0x02f49da0. Too many branches */
                    /* WARNING: Treating indirect jump as call */
          (*(code *)**(undefined8 **)(*(long *)(lVar10 + 0x38) + 0x10))
                    (lVar9,0,*(undefined4 *)(lVar9 + 0x18),auVar24._8_8_);
          return;
        }
        func_0x029f5a64(PTR_DAT_05e598c0);
        uVar8 = func_0x029f5cec();
        puVar12 = PTR_DAT_05e6a220;
      }
      uVar11 = func_0x029f5a64(puVar12);
      lVar23 = 0;
      ArgumentNullException__ctor_0x60003ec(uVar8,uVar11);
      auVar24 = func_0x029f5bc0(uVar8,lVar10);
      lVar7 = auVar24._0_8_;
      *(undefined **)((long)register0x00000008 + -0x140) = &UNK_02f49e00;
      *(long *)((long)register0x00000008 + -0x138) = lVar9;
      *(undefined8 *)((long)register0x00000008 + -0x130) = uVar8;
      *(long *)((long)register0x00000008 + -0x128) = lVar10;
      if (*(long *)(lVar23 + 0x38) == 0) {
        func_0x02a2ea54(lVar23);
      }
      if (lVar7 != 0) {
                    /* WARNING: Could not recover jumptable at 0x02f49e4c. Too many branches */
                    /* WARNING: Treating indirect jump as call */
        (*(code *)**(undefined8 **)(*(long *)(lVar23 + 0x38) + 0x10))
                  (lVar7,0,*(undefined4 *)(lVar7 + 0x18),auVar24._8_8_);
        return;
      }
      func_0x029f5a64(PTR_DAT_05e598c0);
      uVar8 = func_0x029f5cec();
      uVar11 = func_0x029f5a64(PTR_DAT_05e68520);
      lVar9 = 0;
      ArgumentNullException__ctor_0x60003ec(uVar8,uVar11);
      auVar24 = func_0x029f5bc0(uVar8,lVar23);
      lVar7 = auVar24._8_8_;
      uVar21 = auVar24._0_8_;
      *(undefined **)((long)register0x00000008 + -0x160) = &UNK_02f49e8c;
      *(undefined8 *)((long)register0x00000008 + -0x158) = 0;
      *(undefined8 *)((long)register0x00000008 + -0x150) = uVar8;
      *(long *)((long)register0x00000008 + -0x148) = lVar23;
      if (*(long *)(lVar9 + 0x38) == 0) {
        func_0x02a2ea54(lVar9);
      }
      if (uVar21 != 0) {
        uVar18 = *(uint *)(uVar21 + 0x18);
        lVar9 = *(long *)(*(long *)(lVar9 + 0x38) + 0x10);
        *(undefined8 *)((long)register0x00000008 + -0x180) =
             *(undefined8 *)((long)register0x00000008 + -0x160);
        *(ulong *)((long)register0x00000008 + -0x178) = unaff_x25;
        *(long **)((long)register0x00000008 + -0x170) = unaff_x24;
        *(ulong *)((long)register0x00000008 + -0x168) = unaff_x23;
        *(long *)((long)register0x00000008 + -0x160) = unaff_x22;
        *(undefined8 *)((long)register0x00000008 + -0x158) =
             *(undefined8 *)((long)register0x00000008 + -0x158);
        *(undefined8 *)((long)register0x00000008 + -0x150) =
             *(undefined8 *)((long)register0x00000008 + -0x150);
        *(undefined8 *)((long)register0x00000008 + -0x148) =
             *(undefined8 *)((long)register0x00000008 + -0x148);
        if (*(long *)(lVar9 + 0x38) == 0) {
          func_0x02a2ea54(lVar9);
        }
        if (uVar21 == 0) {
          func_0x029f5a64(PTR_DAT_05e598c0);
          uVar11 = func_0x029f5cec();
          uVar8 = func_0x029f5a64(PTR_DAT_05e6a228);
          ArgumentNullException__ctor_0x60003ec(uVar11,uVar8,0);
        }
        else if ((int)uVar18 < 0) {
          puVar12 = PTR_DAT_05e6a210;
          if (-1 < (int)uVar18) {
            puVar12 = PTR_DAT_05e66b90;
          }
          uVar8 = func_0x029f5a64(puVar12);
          func_0x029f5a64(PTR_DAT_05e59ae0);
          uVar11 = func_0x029f5cec();
          uVar13 = func_0x029f5a64(PTR_DAT_05e6a208);
          ArgumentOutOfRangeException__ctor_0x60003f1(uVar11,uVar8,uVar13,0);
        }
        else {
          if ((int)uVar18 <= *(int *)(uVar21 + 0x18)) {
            if (lVar7 == 0) {
              if (uVar18 < 2) {
                return;
              }
              auVar24._8_8_ = 0;
              auVar24._0_8_ = uVar21;
              uVar8 = *(undefined8 *)((long)register0x00000008 + -0x150);
              uVar13 = *(undefined8 *)((long)register0x00000008 + -0x148);
              lVar7 = *(long *)(*(long *)(lVar9 + 0x38) + 0x18);
              unaff_x22 = *(long *)((long)register0x00000008 + -0x160);
              uVar19 = *(undefined8 *)((long)register0x00000008 + -0x158);
              unaff_x24 = *(long **)((long)register0x00000008 + -0x170);
              unaff_x23 = *(ulong *)((long)register0x00000008 + -0x168);
              puVar4 = (undefined1 *)((long)register0x00000008 + -0x140);
              uVar11 = *(undefined8 *)((long)register0x00000008 + -0x180);
              goto code_r0x02f51708;
            }
            if (-1 < (int)(*(int *)(lVar7 + 0x18) - uVar18)) {
              if (uVar18 < 2) {
                return;
              }
              lVar10 = *(long *)(*(long *)(lVar9 + 0x38) + 0x28);
              if ((*(ushort *)(lVar10 + 0x135) & 1) == 0) {
                lVar10 = func_0x02a2e9f8();
              }
              if (*(int *)(lVar10 + 0xe4) == 0) {
                func_0x029f5bd0();
              }
              lVar23 = *(long *)(*(long *)(lVar9 + 0x38) + 0x20);
              lVar10 = *(long *)(lVar23 + 0x20);
              if ((*(ushort *)(lVar10 + 0x135) & 1) == 0) {
                lVar10 = func_0x02a2e9f8();
              }
              lVar10 = *(long *)(*(long *)(lVar10 + 0xc0) + 0x38);
              if ((*(ushort *)(lVar10 + 0x135) & 1) == 0) {
                lVar10 = func_0x02a2e9f8();
              }
              if (*(int *)(lVar10 + 0xe4) == 0) {
                func_0x029f5bd0();
              }
              lVar10 = *(long *)(lVar23 + 0x20);
              if ((*(ushort *)(lVar10 + 0x135) & 1) == 0) {
                lVar10 = func_0x02a2e9f8();
              }
              lVar10 = *(long *)(*(long *)(lVar10 + 0xc0) + 0x38);
              if ((*(ushort *)(lVar10 + 0x135) & 1) == 0) {
                lVar10 = func_0x02a2e9f8();
              }
              if (**(long **)(lVar10 + 0xb8) != 0) {
                lVar10 = *(long *)(*(long *)(lVar9 + 0x38) + 0x38);
                *(undefined8 *)((long)register0x00000008 + -0x180) =
                     *(undefined8 *)((long)register0x00000008 + -0x180);
                *(undefined8 *)((long)register0x00000008 + -0x170) =
                     *(undefined8 *)((long)register0x00000008 + -0x170);
                *(undefined8 *)((long)register0x00000008 + -0x168) =
                     *(undefined8 *)((long)register0x00000008 + -0x168);
                *(undefined8 *)((long)register0x00000008 + -0x160) =
                     *(undefined8 *)((long)register0x00000008 + -0x160);
                *(undefined8 *)((long)register0x00000008 + -0x158) =
                     *(undefined8 *)((long)register0x00000008 + -0x158);
                *(undefined8 *)((long)register0x00000008 + -0x150) =
                     *(undefined8 *)((long)register0x00000008 + -0x150);
                *(undefined8 *)((long)register0x00000008 + -0x148) =
                     *(undefined8 *)((long)register0x00000008 + -0x148);
                uVar8 = func_0x03bed574(*(undefined8 *)
                                         (*(long *)(*(long *)(lVar10 + 0x20) + 0xc0) + 8));
                lVar9 = *(long *)(*(long *)(*(long *)(lVar10 + 0x20) + 0xc0) + 0x38);
                if ((*(ushort *)(lVar9 + 0x135) & 1) == 0) {
                  lVar9 = func_0x02a2e9f8();
                }
                if (*(int *)(lVar9 + 0xe4) == 0) {
                  func_0x029f5bd0();
                }
                func_0x03538cb0(uVar21,lVar7,0,uVar18,uVar8,
                                *(undefined8 *)(*(long *)(*(long *)(lVar10 + 0x20) + 0xc0) + 0x30));
                return;
              }
              goto code_r0x02f6439c;
            }
          }
          func_0x029f5a64(PTR_DAT_05e65dc8);
          uVar11 = func_0x029f5cec();
          uVar8 = func_0x029f5a64(PTR_DAT_05e6a218);
          ArgumentException__ctor_0x60003e4(uVar11,uVar8,0);
        }
        func_0x029f5bc0(uVar11,lVar9);
code_r0x02f6439c:
                    /* WARNING: Subroutine does not return */
        Throw_NullReference_Wrapper();
      }
      func_0x029f5a64(PTR_DAT_05e598c0);
      uVar8 = func_0x029f5cec();
      uVar11 = func_0x029f5a64(PTR_DAT_05e6a228);
      lVar10 = 0;
      ArgumentNullException__ctor_0x60003ec(uVar8,uVar11);
      auVar24 = func_0x029f5bc0(uVar8,lVar9);
      lVar7 = auVar24._0_8_;
      *(undefined **)((long)register0x00000008 + -0x180) = &UNK_02f49f18;
      *(undefined8 *)((long)register0x00000008 + -0x178) = 0;
      *(undefined8 *)((long)register0x00000008 + -0x170) = uVar8;
      *(long *)((long)register0x00000008 + -0x168) = lVar9;
      if (*(long *)(lVar10 + 0x38) == 0) {
        func_0x02a2ea54(lVar10);
      }
      if (lVar7 != 0) {
                    /* WARNING: Could not recover jumptable at 0x02f49f68. Too many branches */
                    /* WARNING: Treating indirect jump as call */
        (*(code *)**(undefined8 **)(*(long *)(lVar10 + 0x38) + 0x10))
                  (lVar7,auVar24._8_8_,0,*(undefined4 *)(lVar7 + 0x18),0);
        return;
      }
      func_0x029f5a64(PTR_DAT_05e598c0);
      uVar8 = func_0x029f5cec();
      uVar11 = func_0x029f5a64(PTR_DAT_05e6a228);
      uVar14 = 0;
      ArgumentNullException__ctor_0x60003ec(uVar8,uVar11);
      auVar24 = func_0x029f5bc0(uVar8,lVar10);
      *(undefined **)((long)register0x00000008 + -0x1b0) = &UNK_02f49fa8;
      *(long *)((long)register0x00000008 + -0x1a0) = unaff_x22;
      *(undefined8 *)((long)register0x00000008 + -0x198) = 0;
      *(undefined8 *)((long)register0x00000008 + -400) = uVar8;
      *(long *)((long)register0x00000008 + -0x188) = lVar10;
      lVar7 = *(long *)(lVar15 + 0x38);
      uVar14 = uVar14 & 0xffffffff;
      uVar21 = auVar24._8_8_ & 0xffffffff;
      if (lVar7 == 0) {
        func_0x02a2ea54(lVar15);
        lVar7 = *(long *)(lVar15 + 0x38);
      }
      uVar8 = *(undefined8 *)((long)register0x00000008 + -400);
      uVar13 = *(undefined8 *)((long)register0x00000008 + -0x188);
      lVar7 = *(long *)(lVar7 + 8);
      unaff_x22 = *(long *)((long)register0x00000008 + -0x1a0);
      uVar19 = *(undefined8 *)((long)register0x00000008 + -0x198);
      auVar25._8_8_ = 0;
      auVar25._0_8_ = auVar24._0_8_;
      puVar5 = (undefined1 *)((long)register0x00000008 + -0x180);
      uVar11 = *(undefined8 *)((long)register0x00000008 + -0x1b0);
    }
    else {
      uVar14 = (ulong)*(uint *)(auVar25._0_8_ + 0x18);
      uVar8 = *(undefined8 *)((long)register0x00000008 + -0x70);
      uVar13 = *(undefined8 *)((long)register0x00000008 + -0x68);
      lVar7 = *(long *)(*(long *)(lVar7 + 0x38) + 0x10);
      uVar21 = 0;
      puVar5 = (undefined1 *)((long)register0x00000008 + -0x60);
      uVar11 = *(undefined8 *)((long)register0x00000008 + -0x80);
      uVar19 = *(undefined8 *)((long)register0x00000008 + -0x78);
    }
    plVar20 = auVar25._8_8_;
    lVar9 = auVar25._0_8_;
    *(undefined8 *)(puVar5 + -0x40) = uVar11;
    *(long **)(puVar5 + -0x30) = unaff_x24;
    *(ulong *)(puVar5 + -0x28) = unaff_x23;
    *(long *)(puVar5 + -0x20) = unaff_x22;
    *(undefined8 *)(puVar5 + -0x18) = uVar19;
    *(undefined8 *)(puVar5 + -0x10) = uVar8;
    *(undefined8 *)(puVar5 + -8) = uVar13;
    if (*(long *)(lVar7 + 0x38) == 0) {
      func_0x02a2ea54(lVar7);
    }
    if (lVar9 == 0) {
      func_0x029f5a64(PTR_DAT_05e598c0);
      uVar11 = func_0x029f5cec();
      uVar8 = func_0x029f5a64(PTR_DAT_05e68520);
      ArgumentNullException__ctor_0x60003ec(uVar11,uVar8,0);
    }
    else {
      uVar18 = (uint)uVar14;
      if ((int)(uVar18 | (uint)uVar21) < 0) {
        puVar12 = PTR_DAT_05e6a210;
        if (-1 < (int)uVar18) {
          puVar12 = PTR_DAT_05e66b90;
        }
        uVar8 = func_0x029f5a64(puVar12);
        func_0x029f5a64(PTR_DAT_05e59ae0);
        uVar11 = func_0x029f5cec();
        uVar13 = func_0x029f5a64(PTR_DAT_05e6a208);
        ArgumentOutOfRangeException__ctor_0x60003f1(uVar11,uVar8,uVar13,0);
      }
      else {
        if ((int)uVar18 <= (int)(*(int *)(lVar9 + 0x18) - (uint)uVar21)) {
          if (uVar18 < 2) {
            return;
          }
          lVar10 = *(long *)(*(long *)(lVar7 + 0x38) + 0x10);
          if ((*(ushort *)(lVar10 + 0x135) & 1) == 0) {
            lVar10 = func_0x02a2e9f8();
          }
          if (*(int *)(lVar10 + 0xe4) == 0) {
            func_0x029f5bd0();
          }
          lVar23 = *(long *)(*(long *)(lVar7 + 0x38) + 8);
          lVar10 = *(long *)(lVar23 + 0x20);
          if ((*(ushort *)(lVar10 + 0x135) & 1) == 0) {
            lVar10 = func_0x02a2e9f8();
          }
          lVar10 = *(long *)(*(long *)(lVar10 + 0xc0) + 0x48);
          if ((*(ushort *)(lVar10 + 0x135) & 1) == 0) {
            lVar10 = func_0x02a2e9f8();
          }
          if (*(int *)(lVar10 + 0xe4) == 0) {
            func_0x029f5bd0();
          }
          lVar10 = *(long *)(lVar23 + 0x20);
          if ((*(ushort *)(lVar10 + 0x135) & 1) == 0) {
            lVar10 = func_0x02a2e9f8();
          }
          lVar10 = *(long *)(*(long *)(lVar10 + 0xc0) + 0x48);
          if ((*(ushort *)(lVar10 + 0x135) & 1) == 0) {
            lVar10 = func_0x02a2e9f8();
          }
          if (**(long **)(lVar10 + 0xb8) != 0) {
            lVar7 = *(long *)(*(long *)(lVar7 + 0x38) + 0x28);
            *(undefined8 *)(puVar5 + -0x40) = *(undefined8 *)(puVar5 + -0x40);
            *(undefined8 *)(puVar5 + -0x30) = *(undefined8 *)(puVar5 + -0x30);
            *(undefined8 *)(puVar5 + -0x28) = *(undefined8 *)(puVar5 + -0x28);
            *(undefined8 *)(puVar5 + -0x20) = *(undefined8 *)(puVar5 + -0x20);
            *(undefined8 *)(puVar5 + -0x18) = *(undefined8 *)(puVar5 + -0x18);
            *(undefined8 *)(puVar5 + -0x10) = *(undefined8 *)(puVar5 + -0x10);
            *(undefined8 *)(puVar5 + -8) = *(undefined8 *)(puVar5 + -8);
            if (plVar20 == (long *)0x0) {
              plVar20 = (long *)func_0x03bf5e5c(*(undefined8 *)
                                                 (*(long *)(*(long *)(lVar7 + 0x20) + 0xc0) + 8),
                                                lVar9,uVar21,uVar14);
            }
            if ((*(ushort *)(*(long *)(*(long *)(*(long *)(lVar7 + 0x20) + 0xc0) + 0x30) + 0x135) &
                1) == 0) {
              func_0x02a2e9f8();
            }
            uVar8 = func_0x029f5cec();
            lVar10 = **(long **)(*(long *)(lVar7 + 0x20) + 0xc0);
            if ((*(ushort *)(lVar10 + 0x135) & 1) == 0) {
              lVar10 = func_0x02a2e9f8(lVar10);
            }
            if (plVar20 == (long *)0x0) {
                    /* WARNING: Subroutine does not return */
              Throw_NullReference_Wrapper();
            }
            lVar23 = *plVar20;
            uVar16 = (ulong)*(ushort *)(lVar23 + 0x12e);
            if (uVar16 != 0) {
              piVar17 = (int *)(*(long *)(lVar23 + 0xb0) + 8);
              do {
                if (*(long *)(piVar17 + -2) == lVar10) {
                  lVar10 = lVar23 + (long)*piVar17 * 0x10 + 0x138;
                  goto code_r0x0429ce4c;
                }
                uVar16 = uVar16 - 1;
                piVar17 = piVar17 + 4;
              } while (uVar16 != 0);
            }
            lVar10 = func_0x02a2ed2c(plVar20,lVar10,0);
code_r0x0429ce4c:
            func_0x03cf8804(uVar8,plVar20,*(undefined8 *)(lVar10 + 8),
                            *(undefined8 *)(*(long *)(*(long *)(lVar7 + 0x20) + 0xc0) + 0x38));
            lVar10 = *(long *)(*(long *)(*(long *)(lVar7 + 0x20) + 0xc0) + 0x48);
            if ((*(ushort *)(lVar10 + 0x135) & 1) == 0) {
              lVar10 = func_0x02a2e9f8();
            }
            if (*(int *)(lVar10 + 0xe4) == 0) {
              func_0x029f5bd0();
            }
            func_0x0429d610(lVar9,uVar21,uVar14,uVar8,
                            *(undefined8 *)(*(long *)(*(long *)(lVar7 + 0x20) + 0xc0) + 0x40));
            return;
          }
          goto code_r0x02f54158;
        }
        func_0x029f5a64(PTR_DAT_05e65dc8);
        uVar11 = func_0x029f5cec();
        uVar8 = func_0x029f5a64(PTR_DAT_05e6a218);
        ArgumentException__ctor_0x60003e4(uVar11,uVar8,0);
      }
    }
    func_0x029f5bc0(uVar11,lVar7);
code_r0x02f54158:
                    /* WARNING: Subroutine does not return */
    Throw_NullReference_Wrapper();
  }
  uVar18 = *(uint *)(auVar24._0_8_ + 0x18);
  uVar8 = *(undefined8 *)((long)register0x00000008 + -0x30);
  uVar13 = *(undefined8 *)((long)register0x00000008 + -0x28);
  lVar7 = *(long *)(*(long *)(lVar7 + 0x38) + 0x10);
  puVar4 = (undefined1 *)((long)register0x00000008 + -0x20);
  uVar11 = *(undefined8 *)((long)register0x00000008 + -0x40);
  uVar19 = *(undefined8 *)((long)register0x00000008 + -0x38);
code_r0x02f51708:
  plVar20 = auVar24._8_8_;
  lVar9 = auVar24._0_8_;
  *(undefined8 *)(puVar4 + -0x40) = uVar11;
  *(long **)(puVar4 + -0x30) = unaff_x24;
  *(ulong *)(puVar4 + -0x28) = unaff_x23;
  *(long *)(puVar4 + -0x20) = unaff_x22;
  *(undefined8 *)(puVar4 + -0x18) = uVar19;
  *(undefined8 *)(puVar4 + -0x10) = uVar8;
  *(undefined8 *)(puVar4 + -8) = uVar13;
  if (*(long *)(lVar7 + 0x38) == 0) {
    func_0x02a2ea54(lVar7);
  }
  if (lVar9 == 0) {
    func_0x029f5a64(PTR_DAT_05e598c0);
    uVar11 = func_0x029f5cec();
    uVar8 = func_0x029f5a64(PTR_DAT_05e68520);
    ArgumentNullException__ctor_0x60003ec(uVar11,uVar8,0);
  }
  else if ((int)uVar18 < 0) {
    puVar12 = PTR_DAT_05e6a210;
    if (-1 < (int)uVar18) {
      puVar12 = PTR_DAT_05e66b90;
    }
    uVar8 = func_0x029f5a64(puVar12);
    func_0x029f5a64(PTR_DAT_05e59ae0);
    uVar11 = func_0x029f5cec();
    uVar13 = func_0x029f5a64(PTR_DAT_05e6a208);
    ArgumentOutOfRangeException__ctor_0x60003f1(uVar11,uVar8,uVar13,0);
  }
  else {
    if ((int)uVar18 <= *(int *)(lVar9 + 0x18)) {
      if (uVar18 < 2) {
        return;
      }
      lVar10 = *(long *)(*(long *)(lVar7 + 0x38) + 0x10);
      if ((*(ushort *)(lVar10 + 0x135) & 1) == 0) {
        lVar10 = func_0x02a2e9f8();
      }
      if (*(int *)(lVar10 + 0xe4) == 0) {
        func_0x029f5bd0();
      }
      lVar23 = *(long *)(*(long *)(lVar7 + 0x38) + 8);
      lVar10 = *(long *)(lVar23 + 0x20);
      if ((*(ushort *)(lVar10 + 0x135) & 1) == 0) {
        lVar10 = func_0x02a2e9f8();
      }
      lVar10 = *(long *)(*(long *)(lVar10 + 0xc0) + 0x48);
      if ((*(ushort *)(lVar10 + 0x135) & 1) == 0) {
        lVar10 = func_0x02a2e9f8();
      }
      if (*(int *)(lVar10 + 0xe4) == 0) {
        func_0x029f5bd0();
      }
      lVar10 = *(long *)(lVar23 + 0x20);
      if ((*(ushort *)(lVar10 + 0x135) & 1) == 0) {
        lVar10 = func_0x02a2e9f8();
      }
      lVar10 = *(long *)(*(long *)(lVar10 + 0xc0) + 0x48);
      if ((*(ushort *)(lVar10 + 0x135) & 1) == 0) {
        lVar10 = func_0x02a2e9f8();
      }
      if (**(long **)(lVar10 + 0xb8) != 0) {
        lVar7 = *(long *)(*(long *)(lVar7 + 0x38) + 0x28);
        *(undefined8 *)(puVar4 + -0x40) = *(undefined8 *)(puVar4 + -0x40);
        *(undefined8 *)(puVar4 + -0x30) = *(undefined8 *)(puVar4 + -0x30);
        *(undefined8 *)(puVar4 + -0x28) = *(undefined8 *)(puVar4 + -0x28);
        *(undefined8 *)(puVar4 + -0x20) = *(undefined8 *)(puVar4 + -0x20);
        *(undefined8 *)(puVar4 + -0x18) = *(undefined8 *)(puVar4 + -0x18);
        *(undefined8 *)(puVar4 + -0x10) = *(undefined8 *)(puVar4 + -0x10);
        *(undefined8 *)(puVar4 + -8) = *(undefined8 *)(puVar4 + -8);
        if (plVar20 == (long *)0x0) {
          plVar20 = (long *)func_0x03bed574(*(undefined8 *)
                                             (*(long *)(*(long *)(lVar7 + 0x20) + 0xc0) + 8),lVar9,0
                                            ,uVar18);
        }
        if ((*(ushort *)(*(long *)(*(long *)(*(long *)(lVar7 + 0x20) + 0xc0) + 0x30) + 0x135) & 1)
            == 0) {
          func_0x02a2e9f8();
        }
        uVar8 = func_0x029f5cec();
        lVar10 = **(long **)(*(long *)(lVar7 + 0x20) + 0xc0);
        if ((*(ushort *)(lVar10 + 0x135) & 1) == 0) {
          lVar10 = func_0x02a2e9f8(lVar10);
        }
        if (plVar20 == (long *)0x0) {
                    /* WARNING: Subroutine does not return */
          Throw_NullReference_Wrapper();
        }
        lVar23 = *plVar20;
        uVar21 = (ulong)*(ushort *)(lVar23 + 0x12e);
        if (uVar21 != 0) {
          piVar17 = (int *)(*(long *)(lVar23 + 0xb0) + 8);
          do {
            if (*(long *)(piVar17 + -2) == lVar10) {
              lVar10 = lVar23 + (long)*piVar17 * 0x10 + 0x138;
              goto code_r0x041481f4;
            }
            uVar21 = uVar21 - 1;
            piVar17 = piVar17 + 4;
          } while (uVar21 != 0);
        }
        lVar10 = func_0x02a2ed2c(plVar20,lVar10,0);
code_r0x041481f4:
        func_0x03cf77bc(uVar8,plVar20,*(undefined8 *)(lVar10 + 8),
                        *(undefined8 *)(*(long *)(*(long *)(lVar7 + 0x20) + 0xc0) + 0x38));
        lVar10 = *(long *)(*(long *)(*(long *)(lVar7 + 0x20) + 0xc0) + 0x48);
        if ((*(ushort *)(lVar10 + 0x135) & 1) == 0) {
          lVar10 = func_0x02a2e9f8();
        }
        if (*(int *)(lVar10 + 0xe4) == 0) {
          func_0x029f5bd0();
        }
        func_0x04148918(lVar9,0,uVar18,uVar8,
                        *(undefined8 *)(*(long *)(*(long *)(lVar7 + 0x20) + 0xc0) + 0x40));
        return;
      }
      goto code_r0x02f51908;
    }
    func_0x029f5a64(PTR_DAT_05e65dc8);
    uVar11 = func_0x029f5cec();
    uVar8 = func_0x029f5a64(PTR_DAT_05e6a218);
    ArgumentException__ctor_0x60003e4(uVar11,uVar8,0);
  }
  func_0x029f5bc0(uVar11,lVar7);
code_r0x02f51908:
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

