/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b33604, Ghidra VA 02c33604. */

void Adventure_Enter_popup_Reload(long param_1)

{
  int iVar1;
  uint uVar2;
  undefined *puVar3;
  undefined *puVar4;
  undefined *puVar5;
  undefined *puVar6;
  undefined *puVar7;
  undefined *puVar8;
  undefined *puVar9;
  undefined *puVar10;
  undefined4 uVar11;
  int iVar12;
  long lVar13;
  undefined8 uVar14;
  long lVar15;
  undefined4 *puVar16;
  long lVar17;
  undefined4 *puVar18;
  undefined4 *puVar19;
  undefined4 *puVar20;
  ulong uVar21;
  long *plVar22;
  undefined8 uStack_a0;
  undefined8 *puStack_98;
  undefined8 uStack_90;
  int iStack_84;
  undefined8 uStack_80;
  undefined8 *puStack_78;
  undefined8 uStack_70;
  undefined4 uStack_64;
  
  if ((bRam000000000625c04c & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e5dd28);
    func_0x029f5a50(PTR_DAT_05e62fa0);
    func_0x029f5a50(PTR_DAT_05e62fa8);
    func_0x029f5a50(PTR_DAT_05e62fb0);
    func_0x029f5a50(PTR_DAT_05e63108);
    func_0x029f5a50(PTR_DAT_05e62fc0);
    func_0x029f5a50(PTR_DAT_05e62680);
    func_0x029f5a50(PTR_DAT_05e62fd0);
    func_0x029f5a50(PTR_DAT_05e63100);
    func_0x029f5a50(PTR_DAT_05e62628);
    func_0x029f5a50(PTR_DAT_05e63110);
    bRam000000000625c04c = 1;
  }
  puVar10 = PTR_DAT_05e63108;
  puVar9 = PTR_DAT_05e63100;
  puVar8 = PTR_DAT_05e62fc0;
  puVar7 = PTR_DAT_05e62fa8;
  puVar6 = PTR_DAT_05e62fa0;
  puVar5 = PTR_DAT_05e62680;
  puVar4 = PTR_DAT_05e62628;
  puVar3 = PTR_DAT_05e5dd28;
  lVar15 = *(long *)(param_1 + 0xc0);
  uStack_64 = 0;
  uStack_80 = 0;
  puStack_78 = (undefined8 *)0x0;
  uStack_70 = 0;
  iStack_84 = 0;
  if (lVar15 != 0) {
    uVar21 = 0;
    do {
      if ((long)(int)*(uint *)(lVar15 + 0x18) <= (long)uVar21) {
        lVar15 = func_0x029f5cec(*(undefined8 *)puVar4);
        func_0x044f7180(lVar15,*(undefined8 *)puVar5);
        if (*(long *)(param_1 + 200) != 0) {
          func_0x045c2058(&uStack_a0,*(long *)(param_1 + 200),*(undefined8 *)puVar8);
          uStack_70 = uStack_90;
          puStack_78 = puStack_98;
          uStack_80 = uStack_a0;
          uStack_a0 = 0;
          puStack_98 = &uStack_80;
          goto LAB_02c337f0;
        }
        break;
      }
      if (*(uint *)(lVar15 + 0x18) <= uVar21) {
                    /* WARNING: Subroutine does not return */
        Throw_Index_Wrapper();
      }
      lVar15 = *(long *)(lVar15 + uVar21 * 8 + 0x20);
      if ((long)uVar21 < (long)*(int *)(param_1 + 0xd0)) {
        lVar13 = *(long *)(param_1 + 200);
        if (lVar13 == 0) break;
        if ((long)*(int *)(lVar13 + 0x18) <= (long)uVar21) {
          if (lVar15 != 0) {
            uVar14 = 1;
            goto LAB_02c33798;
          }
          break;
        }
        uVar14 = func_0x045c12a4(lVar13,uVar21 & 0xffffffff,*(undefined8 *)puVar9);
        uVar11 = Adventure_Enter_popup_GradeOf(uVar14,uVar14);
        if (lVar15 == 0) break;
        uVar14 = 0;
      }
      else {
        if (lVar15 == 0) break;
        uVar14 = 2;
LAB_02c33798:
        uVar11 = 0xffffffff;
      }
      Adventure_Pet_Slot_Reload(lVar15,uVar14,uVar11);
      lVar15 = *(long *)(param_1 + 0xc0);
      uVar21 = uVar21 + 1;
    } while (lVar15 != 0);
  }
  goto LAB_02c337ac;
LAB_02c337f0:
  uVar21 = func_0x03fd486c(&uStack_80,*(undefined8 *)puVar7);
  if ((uVar21 & 1) != 0) {
    uVar11 = Adventure_Enter_popup_GradeOf(uVar21,uStack_70);
    if (lVar15 == 0) {
LAB_02c33a7c:
                    /* WARNING: Subroutine does not return */
      Throw_NullReference_Wrapper();
    }
    lVar13 = *(long *)(lVar15 + 0x10);
    lVar17 = *(long *)puVar10;
    *(int *)(lVar15 + 0x1c) = *(int *)(lVar15 + 0x1c) + 1;
    if (lVar13 == 0) goto LAB_02c33a7c;
    uVar2 = *(uint *)(lVar15 + 0x18);
    if (uVar2 < *(uint *)(lVar13 + 0x18)) {
      *(uint *)(lVar15 + 0x18) = uVar2 + 1;
      *(undefined4 *)(lVar13 + (long)(int)uVar2 * 4 + 0x20) = uVar11;
    }
    else {
      func_0x044f7a10(lVar15,uVar11,
                      *(undefined8 *)(*(long *)(*(long *)(lVar17 + 0x20) + 0xc0) + 0x70));
    }
    goto LAB_02c337f0;
  }
  func_0x03fd4868(&uStack_80,*(undefined8 *)puVar6);
  lVar13 = *(long *)puVar3;
  if (*(int *)(lVar13 + 0xe4) == 0) {
    func_0x029f5bd0();
    lVar13 = *(long *)puVar3;
  }
  lVar13 = *(long *)(*(long *)(lVar13 + 0xb8) + 0x10);
  if (lVar13 == 0) goto LAB_02c337ac;
  uStack_64 = Adventure_manager_Adventure_Reward_Core_return
                        (lVar13,lVar15,*(undefined4 *)(param_1 + 0x24),0);
  plVar22 = *(long **)(param_1 + 0x48);
  uVar14 = Int32_ToString_0x600080e(&uStack_64,0);
  if (plVar22 == (long *)0x0) goto LAB_02c337ac;
  (**(code **)(*plVar22 + 0x558))(plVar22,uVar14,*(undefined8 *)(*plVar22 + 0x560));
  lVar15 = *(long *)(*(long *)(*(long *)puVar3 + 0xb8) + 0x10);
  if (lVar15 == 0) goto LAB_02c337ac;
  plVar22 = *(long **)(param_1 + 0x40);
  iVar12 = Adventure_manager_Adventure_Reward_Exp_return(lVar15,*(undefined4 *)(param_1 + 0x24),0);
  if (*(long *)(param_1 + 200) == 0) goto LAB_02c337ac;
  iStack_84 = *(int *)(*(long *)(param_1 + 200) + 0x18) * iVar12;
  uVar14 = Int32_ToString_0x600080e(&iStack_84,0);
  if (plVar22 == (long *)0x0) goto LAB_02c337ac;
  (**(code **)(*plVar22 + 0x558))(plVar22,uVar14,*(undefined8 *)(*plVar22 + 0x560));
  lVar15 = *(long *)(*(long *)(*(long *)puVar3 + 0xb8) + 0x10);
  if ((lVar15 == 0) || (*(long *)(param_1 + 200) == 0)) goto LAB_02c337ac;
  iVar12 = *(int *)(*(long *)(param_1 + 200) + 0x18);
  iVar1 = *(int *)(lVar15 + 0x58);
  plVar22 = *(long **)(param_1 + 0x68);
  uStack_a0 = CONCAT44(uStack_a0._4_4_,iVar12);
  uVar14 = func_0x029f5bd8(*(undefined8 *)(PTR_DAT_05e58a10 + 0x48),&uStack_a0);
  uVar14 = String_Format_0x600029c(*(undefined8 *)PTR_DAT_05e63110,uVar14,0);
  if (plVar22 == (long *)0x0) goto LAB_02c337ac;
  (**(code **)(*plVar22 + 0x558))(plVar22,uVar14,*(undefined8 *)(*plVar22 + 0x560));
  plVar22 = *(long **)(param_1 + 0x68);
  if (iVar1 < iVar12) {
    puVar16 = (undefined4 *)(param_1 + 0x90);
    puVar18 = (undefined4 *)(param_1 + 0x94);
    puVar19 = (undefined4 *)(param_1 + 0x98);
    puVar20 = (undefined4 *)(param_1 + 0x9c);
  }
  else {
    puVar16 = (undefined4 *)(param_1 + 0x80);
    puVar18 = (undefined4 *)(param_1 + 0x84);
    puVar19 = (undefined4 *)(param_1 + 0x88);
    puVar20 = (undefined4 *)(param_1 + 0x8c);
  }
  if (plVar22 == (long *)0x0) goto LAB_02c337ac;
  (**(code **)(*plVar22 + 0x2a8))
            (*puVar16,*puVar18,*puVar19,*puVar20,plVar22,*(undefined8 *)(*plVar22 + 0x2b0));
  plVar22 = *(long **)(param_1 + 0x70);
  if (iVar1 < iVar12) {
LAB_02c33a28:
    puVar16 = (undefined4 *)(param_1 + 0xb0);
    puVar18 = (undefined4 *)(param_1 + 0xb4);
    puVar19 = (undefined4 *)(param_1 + 0xb8);
    puVar20 = (undefined4 *)(param_1 + 0xbc);
  }
  else {
    if (*(long *)(param_1 + 200) == 0) goto LAB_02c337ac;
    if (*(int *)(*(long *)(param_1 + 200) + 0x18) < 1) goto LAB_02c33a28;
    puVar16 = (undefined4 *)(param_1 + 0xa0);
    puVar18 = (undefined4 *)(param_1 + 0xa4);
    puVar19 = (undefined4 *)(param_1 + 0xa8);
    puVar20 = (undefined4 *)(param_1 + 0xac);
  }
  if (plVar22 != (long *)0x0) {
    (**(code **)(*plVar22 + 0x2a8))
              (*puVar16,*puVar18,*puVar19,*puVar20,plVar22,*(undefined8 *)(*plVar22 + 0x2b0));
    return;
  }
LAB_02c337ac:
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

