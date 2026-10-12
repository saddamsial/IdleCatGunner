/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b6de5c, Ghidra VA 02c6de5c. */

ulong StarUpgrade_manager_Upgrade(long param_1,uint param_2)

{
  int iVar1;
  undefined *puVar2;
  undefined *puVar3;
  uint uVar4;
  uint uVar5;
  int iVar6;
  ulong uVar7;
  undefined8 uVar8;
  long *plVar9;
  long lVar10;
  ulong uVar11;
  undefined8 *puVar12;
  undefined8 *puVar13;
  uint uVar14;
  undefined8 uVar15;
  long lVar16;
  undefined4 uVar17;
  int iVar18;
  undefined1 auVar19 [12];
  undefined1 auVar20 [16];
  int iStack_84;
  undefined4 uStack_80;
  undefined4 uStack_7c;
  uint uStack_78;
  uint uStack_74;
  undefined8 uStack_70;
  int iStack_68;
  
  if ((bRam000000000625c2af & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e5d540);
    func_0x029f5a50(PTR_DAT_05e5d5b0);
    func_0x029f5a50(PTR_DAT_05e58f08);
    func_0x029f5a50(PTR_DAT_05e5d338);
    func_0x029f5a50(PTR_DAT_05e5dd40);
    func_0x029f5a50(PTR_DAT_05e59768);
    func_0x029f5a50(PTR_DAT_05e591c0);
    func_0x029f5a50(PTR_DAT_05e5e058);
    func_0x029f5a50(PTR_DAT_05e63b10);
    func_0x029f5a50(PTR_DAT_05e63b18);
    func_0x029f5a50(PTR_DAT_05e63b20);
    func_0x029f5a50(PTR_DAT_05e63b28);
    bRam000000000625c2af = 1;
  }
  iStack_68 = 0;
  if ((int)param_2 < 0) {
    return 4;
  }
  if (*(long *)(param_1 + 0x30) == 0) {
    return 4;
  }
  if (*(int *)(*(long *)(param_1 + 0x30) + 0x18) <= (int)param_2) {
    return 4;
  }
  uVar7 = StarUpgrade_manager_IsUnlocked(4);
  if ((uVar7 & 1) == 0) {
    return 4;
  }
  lVar16 = *(long *)(param_1 + 0x30);
  if (((lVar16 != 0) && ((int)param_2 < *(int *)(lVar16 + 0x18))) &&
     (0x13 < *(int *)(lVar16 + (ulong)param_2 * 4 + 0x20))) {
    return 2;
  }
  uVar4 = StarUpgrade_manager_Cost_return(param_1,param_2);
  puVar2 = PTR_DAT_05e5d338;
  lVar16 = *(long *)PTR_DAT_05e5d338;
  if (*(int *)(lVar16 + 0xe4) == 0) {
    func_0x029f5bd0(lVar16);
    lVar16 = *(long *)puVar2;
  }
  if (*(int *)(*(long *)(lVar16 + 0xb8) + 0xc4) < (int)uVar4) {
    return 3;
  }
  uVar5 = StarUpgrade_manager_SuccessRate_return(param_1,param_2);
  lVar16 = *(long *)(param_1 + 0x30);
  if ((lVar16 == 0) || (*(int *)(lVar16 + 0x18) <= (int)param_2)) {
    iVar18 = 0;
  }
  else {
    iVar18 = *(int *)(lVar16 + (ulong)param_2 * 4 + 0x20);
  }
  lVar16 = *(long *)(param_1 + 0x38);
  if (lVar16 == 0) goto LAB_02c6e49c;
  if (*(uint *)(lVar16 + 0x18) <= param_2) goto LAB_02c6e498;
  uVar7 = (ulong)param_2;
  iVar1 = *(int *)(lVar16 + uVar7 * 4 + 0x20);
  if (*(int *)(*(long *)puVar2 + 0xe4) == 0) {
    func_0x029f5bd0();
  }
  Gamemanager_Lose_StarGem(uVar4,0);
  iVar6 = Random_Range_0x6000ba7(0,100,0);
  puVar12 = (undefined8 *)PTR_DAT_05e63b18;
  if (iVar6 < (int)uVar5) {
    lVar16 = *(long *)(param_1 + 0x30);
    if (lVar16 == 0) goto LAB_02c6e49c;
    if (*(uint *)(lVar16 + 0x18) <= param_2) goto LAB_02c6e498;
    lVar16 = lVar16 + uVar7 * 4;
    *(int *)(lVar16 + 0x20) = *(int *)(lVar16 + 0x20) + 1;
    puVar12 = (undefined8 *)PTR_DAT_05e63b28;
    lVar16 = *(long *)(param_1 + 0x38);
    if (lVar16 == 0) goto LAB_02c6e49c;
    if (*(uint *)(lVar16 + 0x18) <= param_2) goto LAB_02c6e498;
    *(undefined4 *)(lVar16 + uVar7 * 4 + 0x20) = 0;
  }
  else {
    lVar16 = *(long *)(param_1 + 0x38);
    if (lVar16 == 0) goto LAB_02c6e49c;
    if (*(uint *)(lVar16 + 0x18) <= param_2) goto LAB_02c6e498;
    lVar16 = lVar16 + uVar7 * 4;
    *(int *)(lVar16 + 0x20) = *(int *)(lVar16 + 0x20) + 1;
  }
  puVar2 = PTR_DAT_05e58a10;
  uStack_74 = param_2;
  uVar8 = func_0x029f5bd8(*(undefined8 *)(PTR_DAT_05e58a10 + 0x48),&uStack_74);
  uVar15 = *puVar12;
  uVar8 = String_Format_0x600029d(*(undefined8 *)PTR_DAT_05e63b20,uVar8,uVar15,0);
  uVar14 = (uint)uVar15;
  plVar9 = (long *)func_0x029f5b40(*(undefined8 *)PTR_DAT_05e59768,5);
  uStack_74 = uVar5;
  lVar16 = func_0x029f5bd8(*(undefined8 *)(puVar2 + 0x48),&uStack_74);
  if (plVar9 == (long *)0x0) goto LAB_02c6e49c;
  if ((lVar16 == 0) ||
     (lVar10 = func_0x029f5bd4(lVar16,*(undefined8 *)(*plVar9 + 0x40)), lVar10 != 0)) {
    if ((int)plVar9[3] == 0) goto LAB_02c6e498;
    plVar9[4] = lVar16;
    Managed_WriteBarrier(plVar9 + 4,lVar16);
    uStack_78 = uVar4;
    lVar16 = func_0x029f5bd8(*(undefined8 *)(puVar2 + 0x48),&uStack_78);
    if ((lVar16 != 0) &&
       (lVar10 = func_0x029f5bd4(lVar16,*(undefined8 *)(*plVar9 + 0x40)), lVar10 == 0))
    goto LAB_02c6e4a0;
    if ((*(uint *)(plVar9 + 3) & 0xfffffffe) == 0) goto LAB_02c6e498;
    plVar9[5] = lVar16;
    Managed_WriteBarrier(plVar9 + 5,lVar16);
    lVar16 = *(long *)(param_1 + 0x30);
    if (lVar16 == 0) goto LAB_02c6e49c;
    if (*(uint *)(lVar16 + 0x18) <= param_2) goto LAB_02c6e498;
    uStack_7c = *(undefined4 *)(lVar16 + uVar7 * 4 + 0x20);
    lVar16 = func_0x029f5bd8(*(undefined8 *)(puVar2 + 0x48),&uStack_7c);
    if ((lVar16 != 0) &&
       (lVar10 = func_0x029f5bd4(lVar16,*(undefined8 *)(*plVar9 + 0x40)), lVar10 == 0))
    goto LAB_02c6e4a0;
    if (*(uint *)(plVar9 + 3) < 3) goto LAB_02c6e498;
    plVar9[6] = lVar16;
    Managed_WriteBarrier(plVar9 + 6,lVar16);
    lVar16 = *(long *)(param_1 + 0x38);
    if (lVar16 == 0) goto LAB_02c6e49c;
    if (*(uint *)(lVar16 + 0x18) <= param_2) goto LAB_02c6e498;
    uStack_80 = *(undefined4 *)(lVar16 + uVar7 * 4 + 0x20);
    lVar16 = func_0x029f5bd8(*(undefined8 *)(puVar2 + 0x48),&uStack_80);
    if ((lVar16 != 0) &&
       (lVar10 = func_0x029f5bd4(lVar16,*(undefined8 *)(*plVar9 + 0x40)), lVar10 == 0))
    goto LAB_02c6e4a0;
    if ((*(uint *)(plVar9 + 3) & 0xfffffffc) == 0) goto LAB_02c6e498;
    iVar1 = iVar1 + 1;
    plVar9[7] = lVar16;
    Managed_WriteBarrier(plVar9 + 7,lVar16);
    iStack_84 = iVar1;
    lVar16 = func_0x029f5bd8(*(undefined8 *)(puVar2 + 0x48),&iStack_84);
    if ((lVar16 != 0) &&
       (lVar10 = func_0x029f5bd4(lVar16,*(undefined8 *)(*plVar9 + 0x40)), lVar10 == 0))
    goto LAB_02c6e4a0;
    if (*(uint *)(plVar9 + 3) < 5) goto LAB_02c6e498;
    plVar9[8] = lVar16;
    Managed_WriteBarrier(plVar9 + 8,lVar16);
    uVar15 = String_Format_0x600029f(*(undefined8 *)PTR_DAT_05e63b10,plVar9,0);
    uVar8 = String_Concat_0x6000298(uVar8,uVar15,0);
    if (*(int *)(*(long *)PTR_DAT_05e58f08 + 0xe4) == 0) {
      func_0x029f5bd0(*(long *)PTR_DAT_05e58f08);
    }
    Debug_Log_0x600033c(uVar8,0);
    SaveSystem_Save_0x600048a(0);
    uVar17 = 1;
    if ((int)uVar5 <= iVar6) {
      uVar17 = 2;
    }
    if (*(int *)(*(long *)PTR_DAT_05e5d540 + 0xe4) == 0) {
      func_0x029f5bd0();
    }
    AppsFlyerInit_SendLog_SlotUpResult_0x6000227(param_2 + 1,iVar18 + 1,uVar17,iVar1,0);
  }
  else {
LAB_02c6e4a0:
    uVar8 = func_0x029f5d20();
    auVar19 = func_0x029f5bc0(uVar8,0);
    uVar8 = auVar19._0_8_;
    if (auVar19._8_4_ != 1) {
LAB_02c6e56c:
      func_0x02ae4a1c(uVar8);
      auVar20 = func_0x02629f70();
      puVar2 = PTR_DAT_05e591c0;
      if ((bRam000000000625c2b0 & 1) == 0) {
        func_0x029f5a50(PTR_DAT_05e58f08);
        func_0x029f5a50(PTR_DAT_05e591c0);
        func_0x029f5a50(PTR_DAT_05e63b38);
        bRam000000000625c2b0 = 1;
      }
      uVar8 = *(undefined8 *)(auVar20._0_8_ + 0x28);
      if (*(int *)(*(long *)puVar2 + 0xe4) == 0) {
        func_0x029f5bd0();
      }
      uVar7 = Object_op_Equality_0x6000dec(uVar8,0,0);
      puVar2 = PTR_DAT_05e63b38;
      if ((uVar7 & 1) == 0) {
        lVar16 = *(long *)(auVar20._0_8_ + 0x28);
        if (lVar16 == 0) {
                    /* WARNING: Subroutine does not return */
          Throw_NullReference_Wrapper();
        }
        uVar7 = StarUpgrade_popup_Open(lVar16,auVar20._8_8_ & 0xffffffff,uVar14 & 1);
        return uVar7;
      }
      if (*(int *)(*(long *)PTR_DAT_05e58f08 + 0xe4) == 0) {
        func_0x029f5bd0();
      }
      uVar7 = Debug_LogWarning_0x6000346(*(undefined8 *)puVar2,0);
      return uVar7;
    }
    puVar12 = (undefined8 *)func_0x05afb1e0(uVar8);
    uVar8 = func_0x029f5a64(PTR_DAT_05e58b30);
    uVar11 = func_0x029f6104(uVar8,*(undefined8 *)*puVar12);
    iVar18 = iStack_68;
    if ((uVar11 & 1) == 0) {
      puVar13 = (undefined8 *)func_0x05afb210(8);
      *puVar13 = *puVar12;
      uVar14 = 0;
      uVar8 = func_0x05afb220(puVar13,&PTR__ZTVN10__cxxabiv117__class_type_infoE_16__05b01708,0);
      func_0x05afb1f0();
      goto LAB_02c6e56c;
    }
    uVar15 = *puVar12;
    (&uStack_70)[iStack_68] = uVar15;
    iStack_68 = iStack_68 + 1;
    func_0x05afb1f0();
    uVar8 = func_0x029f5a64(PTR_DAT_05e63b30);
    uVar8 = String_Format_0x600029c(uVar8,uVar15,0);
    lVar16 = func_0x029f5a64(PTR_DAT_05e58f08);
    if (*(int *)(lVar16 + 0xe4) == 0) {
      func_0x029f5bd0();
    }
    Debug_LogWarning_0x6000346(uVar8,0);
    iStack_68 = iVar18;
  }
  puVar3 = PTR_DAT_05e5d5b0;
  puVar2 = PTR_DAT_05e591c0;
  if (iVar6 < (int)uVar5) {
    uVar8 = *(undefined8 *)(*(long *)(*(long *)PTR_DAT_05e5d5b0 + 0xb8) + 8);
    if (*(int *)(*(long *)PTR_DAT_05e591c0 + 0xe4) == 0) {
      func_0x029f5bd0();
    }
    uVar11 = Object_op_Inequality_0x6000ded(uVar8,0,0);
    if ((uVar11 & 1) != 0) {
      lVar16 = *(long *)(*(long *)(*(long *)puVar3 + 0xb8) + 8);
      if (lVar16 == 0) goto LAB_02c6e49c;
      Cat_manager_Balance_Reload(lVar16,0);
    }
    puVar3 = PTR_DAT_05e5dd40;
    uVar8 = **(undefined8 **)(*(long *)PTR_DAT_05e5dd40 + 0xb8);
    if (*(int *)(*(long *)puVar2 + 0xe4) == 0) {
      func_0x029f5bd0();
    }
    uVar11 = Object_op_Inequality_0x6000ded(uVar8,0,0);
    if ((uVar11 & 1) != 0) {
      if (**(long **)(*(long *)puVar3 + 0xb8) == 0) goto LAB_02c6e49c;
      Gun_manager_ReloadAllSlots(**(long **)(*(long *)puVar3 + 0xb8),0);
    }
    puVar2 = PTR_DAT_05e5e058;
    lVar16 = *(long *)PTR_DAT_05e5e058;
    if (*(int *)(lVar16 + 0xe4) == 0) {
      func_0x029f5bd0();
      lVar16 = *(long *)puVar2;
    }
    lVar16 = *(long *)(*(long *)(lVar16 + 0xb8) + 8);
    if (lVar16 != 0) {
      lVar10 = *(long *)(param_1 + 0x30);
      if (lVar10 == 0) {
LAB_02c6e49c:
                    /* WARNING: Subroutine does not return */
        Throw_NullReference_Wrapper();
      }
      if (*(uint *)(lVar10 + 0x18) <= param_2) {
LAB_02c6e498:
                    /* WARNING: Subroutine does not return */
        Throw_Index_Wrapper();
      }
      (**(code **)(lVar16 + 0x18))
                (*(undefined8 *)(lVar16 + 0x40),param_2,*(undefined4 *)(lVar10 + uVar7 * 4 + 0x20),
                 *(undefined8 *)(lVar16 + 0x28));
    }
  }
  return (ulong)((int)uVar5 <= iVar6);
}

