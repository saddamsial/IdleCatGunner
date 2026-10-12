/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b581f4, Ghidra VA 02c581f4. */

long Raid_manager_Sorted_Index_List(void)

{
  undefined4 uVar1;
  uint uVar2;
  undefined *puVar3;
  undefined *puVar4;
  undefined *puVar5;
  undefined *puVar6;
  undefined *puVar7;
  undefined *puVar8;
  undefined *puVar9;
  undefined *puVar10;
  undefined *puVar11;
  int iVar12;
  long lVar13;
  long *plVar14;
  long lVar15;
  undefined8 *puVar16;
  long lVar17;
  long lVar18;
  int iVar19;
  undefined8 uVar20;
  ulong uStack_110;
  undefined8 uStack_108;
  undefined8 uStack_100;
  undefined8 uStack_f8;
  ulong uStack_f0;
  undefined8 uStack_e8;
  undefined8 uStack_e0;
  undefined8 uStack_d8;
  undefined8 uStack_d0;
  ulong uStack_c0;
  undefined8 uStack_b8;
  undefined8 uStack_b0;
  undefined8 uStack_a8;
  undefined8 uStack_a0;
  ulong uStack_90;
  undefined8 uStack_88;
  undefined8 uStack_80;
  undefined8 uStack_78;
  undefined8 uStack_70;
  
  puVar6 = PTR_DAT_05e636b8;
  puVar5 = PTR_DAT_05e636b0;
  if ((bRam000000000625c1ab & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e636c0);
    func_0x029f5a50(PTR_DAT_05e63108);
    func_0x029f5a50(PTR_DAT_05e636c8);
    func_0x029f5a50(PTR_DAT_05e636d0);
    func_0x029f5a50(PTR_DAT_05e636d8);
    func_0x029f5a50(PTR_DAT_05e636b8);
    func_0x029f5a50(PTR_DAT_05e636e0);
    func_0x029f5a50(PTR_DAT_05e636e8);
    func_0x029f5a50(PTR_DAT_05e62628);
    func_0x029f5a50(PTR_DAT_05e636b0);
    func_0x029f5a50(PTR_DAT_05e5e070);
    func_0x029f5a50(PTR_DAT_05e636f0);
    func_0x029f5a50(PTR_DAT_05e636f8);
    func_0x029f5a50(PTR_DAT_05e63700);
    bRam000000000625c1ab = 1;
  }
  puVar11 = PTR_DAT_05e63700;
  puVar10 = PTR_DAT_05e636f8;
  puVar9 = PTR_DAT_05e636e8;
  puVar8 = PTR_DAT_05e636d0;
  puVar7 = PTR_DAT_05e636c8;
  puVar4 = PTR_DAT_05e63108;
  puVar3 = PTR_DAT_05e5e070;
  lVar13 = func_0x029f5cec(*(undefined8 *)puVar5);
  func_0x04463a80(lVar13,*(undefined8 *)puVar6);
  iVar19 = 0;
  while( true ) {
    if (*(int *)(*(long *)puVar3 + 0xe4) == 0) {
      func_0x029f5bd0();
    }
    iVar12 = Raid_manager_get_Index_Count();
    if (iVar12 <= iVar19) break;
    if (*(int *)(*(long *)puVar3 + 0xe4) == 0) {
      func_0x029f5bd0();
    }
    iVar12 = Raid_manager_GunNum_By_Index(iVar19);
    if (iVar12 != -1) {
      if (*(int *)(*(long *)puVar3 + 0xe4) == 0) {
        func_0x029f5bd0();
      }
      Raid_manager_Raid_Damage_return(&uStack_110,iVar12);
      uStack_d0 = 0;
      uStack_e8 = 0;
      uStack_f0 = 0;
      uStack_d8 = 0;
      uStack_e0 = 0;
      uStack_88 = uStack_108;
      uStack_90 = uStack_110;
      uStack_78 = uStack_f8;
      uStack_80 = uStack_100;
      func_0x03b82d48(&uStack_f0,iVar19,&uStack_90,*(undefined8 *)puVar11);
      if (lVar13 == 0) goto LAB_02c585b4;
      lVar15 = *(long *)(lVar13 + 0x10);
      uStack_a0 = uStack_d0;
      lVar17 = *(long *)puVar7;
      uStack_b8 = uStack_e8;
      uStack_c0 = uStack_f0;
      uStack_a8 = uStack_d8;
      uStack_b0 = uStack_e0;
      *(int *)(lVar13 + 0x1c) = *(int *)(lVar13 + 0x1c) + 1;
      if (lVar15 == 0) goto LAB_02c585b4;
      uVar2 = *(uint *)(lVar13 + 0x18);
      if (uVar2 < *(uint *)(lVar15 + 0x18)) {
        lVar15 = lVar15 + (long)(int)uVar2 * 0x28;
        *(uint *)(lVar13 + 0x18) = uVar2 + 1;
        *(undefined8 *)(lVar15 + 0x28) = uStack_e8;
        *(ulong *)(lVar15 + 0x20) = uStack_f0;
        *(undefined8 *)(lVar15 + 0x38) = uStack_d8;
        *(undefined8 *)(lVar15 + 0x30) = uStack_e0;
        *(undefined8 *)(lVar15 + 0x40) = uStack_d0;
        Managed_WriteBarrier(lVar15 + 0x28,0);
      }
      else {
        uStack_88 = uStack_e8;
        uStack_90 = uStack_f0;
        uStack_78 = uStack_d8;
        uStack_80 = uStack_e0;
        uStack_70 = uStack_d0;
        func_0x044643a8(lVar13,&uStack_90,
                        *(undefined8 *)(*(long *)(*(long *)(lVar17 + 0x20) + 0xc0) + 0x70));
      }
    }
    iVar19 = iVar19 + 1;
  }
  lVar15 = *(long *)puVar10;
  if (*(int *)(lVar15 + 0xe4) == 0) {
    func_0x029f5bd0();
    lVar15 = *(long *)puVar10;
  }
  puVar16 = *(undefined8 **)(lVar15 + 0xb8);
  lVar17 = puVar16[1];
  if (lVar17 == 0) {
    if (*(int *)(lVar15 + 0xe4) == 0) {
      func_0x029f5bd0();
      puVar16 = *(undefined8 **)(*(long *)puVar10 + 0xb8);
    }
    uVar20 = *puVar16;
    lVar17 = func_0x029f5cec(*(undefined8 *)PTR_DAT_05e636c0);
    func_0x03cf5874(lVar17,uVar20,*(undefined8 *)PTR_DAT_05e636f0,0);
    plVar14 = (long *)(*(long *)(*(long *)puVar10 + 0xb8) + 8);
    *plVar14 = lVar17;
    Managed_WriteBarrier(plVar14,lVar17);
  }
  if (lVar13 != 0) {
    func_0x044661a8(lVar13,lVar17,*(undefined8 *)puVar8);
    uVar1 = *(undefined4 *)(lVar13 + 0x18);
    lVar15 = func_0x029f5cec(*(undefined8 *)PTR_DAT_05e62628);
    func_0x044f71f8(lVar15,uVar1,*(undefined8 *)PTR_DAT_05e636d8);
    if (0 < *(int *)(lVar13 + 0x18)) {
      iVar19 = 0;
      do {
        func_0x04464018(&uStack_90,lVar13,iVar19,*(undefined8 *)puVar9);
        if (lVar15 == 0) goto LAB_02c585b4;
        lVar17 = *(long *)(lVar15 + 0x10);
        lVar18 = *(long *)puVar4;
        *(int *)(lVar15 + 0x1c) = *(int *)(lVar15 + 0x1c) + 1;
        if (lVar17 == 0) goto LAB_02c585b4;
        uVar2 = *(uint *)(lVar15 + 0x18);
        if (uVar2 < *(uint *)(lVar17 + 0x18)) {
          *(uint *)(lVar15 + 0x18) = uVar2 + 1;
          *(undefined4 *)(lVar17 + (long)(int)uVar2 * 4 + 0x20) = (undefined4)uStack_90;
        }
        else {
          func_0x044f7a10(lVar15,uStack_90 & 0xffffffff,
                          *(undefined8 *)(*(long *)(*(long *)(lVar18 + 0x20) + 0xc0) + 0x70));
        }
        iVar19 = iVar19 + 1;
      } while (iVar19 < *(int *)(lVar13 + 0x18));
    }
    return lVar15;
  }
LAB_02c585b4:
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

