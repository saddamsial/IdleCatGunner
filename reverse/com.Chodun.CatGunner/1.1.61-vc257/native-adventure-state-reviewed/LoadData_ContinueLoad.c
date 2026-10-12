/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b134d8, Ghidra VA 02c134d8. */

void LoadData_ContinueLoad(long param_1)

{
  int iVar1;
  undefined4 uVar2;
  int iVar3;
  int iVar4;
  undefined1 uVar5;
  undefined *puVar6;
  undefined *puVar7;
  long lVar8;
  long lVar9;
  ulong uVar10;
  undefined8 uVar11;
  long lVar12;
  undefined2 *puVar13;
  uint uVar14;
  ulong uVar15;
  uint uVar16;
  ulong uVar17;
  undefined4 *puVar18;
  long *plVar19;
  undefined1 *puVar20;
  long lVar21;
  undefined4 *puVar22;
  undefined1 *puVar23;
  undefined8 uVar24;
  long lVar25;
  long *plVar26;
  long *plVar27;
  long *plVar28;
  long lVar29;
  undefined8 uStack_68;
  
  puVar6 = PTR_DAT_05e5dc20;
  if ((bRam000000000625bee6 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e5dd28);
    func_0x029f5a50(PTR_DAT_05e5d540);
    func_0x029f5a50(PTR_DAT_05e5dd30);
    func_0x029f5a50(PTR_DAT_05e5d4c0);
    func_0x029f5a50(PTR_DAT_05e5d5b0);
    func_0x029f5a50(PTR_DAT_05e5e4f8);
    func_0x029f5a50(PTR_DAT_05e62660);
    func_0x029f5a50(PTR_DAT_05e597d0);
    func_0x029f5a50(PTR_DAT_05e62668);
    func_0x029f5a50(PTR_DAT_05e5dd38);
    func_0x029f5a50(PTR_DAT_05e5dfa0);
    func_0x029f5a50(PTR_DAT_05e5dd48);
    func_0x029f5a50(PTR_DAT_05e5dd50);
    func_0x029f5a50(PTR_DAT_05e5dd58);
    func_0x029f5a50(PTR_DAT_05e591c0);
    func_0x029f5a50(PTR_DAT_05e62650);
    func_0x029f5a50(PTR_DAT_05e5e0b8);
    func_0x029f5a50(PTR_DAT_05e5e068);
    func_0x029f5a50(PTR_DAT_05e5e070);
    func_0x029f5a50(PTR_DAT_05e5d498);
    func_0x029f5a50(PTR_DAT_05e625c8);
    func_0x029f5a50(PTR_DAT_05e5d6a8);
    func_0x029f5a50(PTR_DAT_05e62670);
    func_0x029f5a50(PTR_DAT_05e5d920);
    func_0x029f5a50(PTR_DAT_05e5dd68);
    func_0x029f5a50(PTR_DAT_05e5e3e0);
    func_0x029f5a50(PTR_DAT_05e5e4b8);
    func_0x029f5a50(PTR_DAT_05e5d3c0);
    func_0x029f5a50(PTR_DAT_05e5dc20);
    func_0x029f5a50(PTR_DAT_05e5e4d8);
    func_0x029f5a50(PTR_DAT_05e59050);
    bRam000000000625bee6 = 1;
  }
  lVar8 = *(long *)puVar6;
  uStack_68 = 0;
  if (*(int *)(lVar8 + 0xe4) == 0) {
    func_0x029f5bd0();
    lVar8 = *(long *)puVar6;
  }
  puVar6 = PTR_DAT_05e5dd68;
  lVar8 = *(long *)(*(long *)(lVar8 + 0xb8) + 0x10);
  if (lVar8 == 0) goto LAB_02c1449c;
  Tree_manager_Game_Start_0x6000eff(lVar8,0);
  Tree_manager_Contents_Lock_Reload_0x6000efe(lVar8,0);
  lVar8 = *(long *)puVar6;
  if (*(int *)(lVar8 + 0xe4) == 0) {
    func_0x029f5bd0();
    lVar8 = *(long *)puVar6;
  }
  puVar6 = PTR_DAT_05e5e4b8;
  plVar26 = (long *)PTR_DAT_05e591c0;
  if ((param_1 == 0) || (lVar8 = *(long *)(*(long *)(lVar8 + 0xb8) + 8), lVar8 == 0))
  goto LAB_02c1449c;
  lVar9 = *(long *)PTR_DAT_05e5e4b8;
  iVar1 = *(int *)(lVar9 + 0xe4);
  *(undefined4 *)(lVar8 + 0x30) = *(undefined4 *)(param_1 + 0x1e8);
  if (iVar1 == 0) {
    func_0x029f5bd0();
    lVar9 = *(long *)puVar6;
  }
  uVar24 = **(undefined8 **)(lVar9 + 0xb8);
  if (*(int *)(*plVar26 + 0xe4) == 0) {
    func_0x029f5bd0(*plVar26);
  }
  uVar10 = Object_op_Inequality_0x6000ded(uVar24,0,0);
  if ((uVar10 & 1) != 0) {
    lVar8 = *(long *)puVar6;
    if (*(int *)(lVar8 + 0xe4) == 0) {
      func_0x029f5bd0();
      lVar8 = *(long *)puVar6;
    }
    if (**(long **)(lVar8 + 0xb8) == 0) goto LAB_02c1449c;
    StepUp_LoadFromSaveData_0x6000e1a(**(long **)(lVar8 + 0xb8),param_1,0);
  }
  puVar6 = PTR_DAT_05e62660;
  lVar8 = *(long *)PTR_DAT_05e62660;
  if (*(int *)(lVar8 + 0xe4) == 0) {
    func_0x029f5bd0();
    lVar8 = *(long *)puVar6;
  }
  uVar24 = **(undefined8 **)(lVar8 + 0xb8);
  if (*(int *)(*plVar26 + 0xe4) == 0) {
    func_0x029f5bd0(*plVar26);
  }
  uVar10 = Object_op_Inequality_0x6000ded(uVar24,0,0);
  if ((uVar10 & 1) != 0) {
    lVar8 = *(long *)puVar6;
    if (*(int *)(lVar8 + 0xe4) == 0) {
      func_0x029f5bd0();
      lVar8 = *(long *)puVar6;
    }
    if (**(long **)(lVar8 + 0xb8) == 0) goto LAB_02c1449c;
    DailyGun_LoadFromSaveData_0x6000cd3(**(long **)(lVar8 + 0xb8),param_1,0);
  }
  puVar6 = PTR_DAT_05e5e0b8;
  lVar8 = *(long *)PTR_DAT_05e5e0b8;
  if (*(int *)(lVar8 + 0xe4) == 0) {
    func_0x029f5bd0();
    lVar8 = *(long *)puVar6;
  }
  uVar24 = **(undefined8 **)(lVar8 + 0xb8);
  if (*(int *)(*plVar26 + 0xe4) == 0) {
    func_0x029f5bd0(*plVar26);
  }
  uVar10 = Object_op_Inequality_0x6000ded(uVar24,0,0);
  if ((uVar10 & 1) != 0) {
    lVar8 = *(long *)puVar6;
    if (*(int *)(lVar8 + 0xe4) == 0) {
      func_0x029f5bd0();
      lVar8 = *(long *)puVar6;
    }
    if (**(long **)(lVar8 + 0xb8) == 0) goto LAB_02c1449c;
    PlusPack_LoadFromSaveData_0x6000d39(**(long **)(lVar8 + 0xb8),param_1,0);
  }
  plVar27 = (long *)PTR_DAT_05e5e070;
  lVar8 = *(long *)PTR_DAT_05e5e070;
  if (*(int *)(lVar8 + 0xe4) == 0) {
    func_0x029f5bd0();
    lVar8 = *plVar27;
  }
  lVar8 = **(long **)(lVar8 + 0xb8);
  if (*(int *)(*plVar26 + 0xe4) == 0) {
    func_0x029f5bd0(*plVar26);
  }
  plVar28 = (long *)PTR_DAT_05e5d3c0;
  uVar10 = Object_op_Inequality_0x6000ded(lVar8,0,0);
  if ((uVar10 & 1) != 0) {
    uVar24 = *(undefined8 *)(param_1 + 0x2a0);
    if (*(int *)(*plVar28 + 0xe4) == 0) {
      func_0x029f5bd0();
    }
    uVar11 = Time_manager_get_Now_0x6000579(0);
    uVar24 = LoadData_DateParseSafe_0x600047d(uVar24,uVar11,0);
    if (lVar8 == 0) goto LAB_02c1449c;
    *(undefined8 *)(lVar8 + 0x68) = uVar24;
    *(undefined4 *)(lVar8 + 0x70) = *(undefined4 *)(param_1 + 0x2a8);
    *(undefined2 *)(lVar8 + 0x74) = *(undefined2 *)(param_1 + 0x2ac);
    uVar24 = *(undefined8 *)(param_1 + 0x2c0);
    *(undefined8 *)(lVar8 + 0x78) = *(undefined8 *)(param_1 + 0x2b0);
    *(undefined4 *)(lVar8 + 0x80) = *(undefined4 *)(param_1 + 0x2b8);
    Raid_manager_LoadBest_0x600092e(lVar8,uVar24,0);
    *(undefined4 *)(lVar8 + 0x100) = *(undefined4 *)(param_1 + 0x424);
    Raid_manager_Season_Check_0x600090a(lVar8,0);
  }
  puVar6 = PTR_DAT_05e5e068;
  uVar24 = **(undefined8 **)(*(long *)PTR_DAT_05e5e068 + 0xb8);
  if (*(int *)(*plVar26 + 0xe4) == 0) {
    func_0x029f5bd0();
  }
  uVar10 = Object_op_Inequality_0x6000ded(uVar24,0,0);
  if ((uVar10 & 1) != 0) {
    if (**(long **)(*(long *)puVar6 + 0xb8) == 0) goto LAB_02c1449c;
    Raid_Mission_manager_LoadFromSaveData_0x60008cf(**(long **)(*(long *)puVar6 + 0xb8),param_1,0);
  }
  puVar6 = PTR_DAT_05e5e3e0;
  lVar8 = *(long *)PTR_DAT_05e5e3e0;
  if (*(int *)(lVar8 + 0xe4) == 0) {
    func_0x029f5bd0();
    lVar8 = *(long *)puVar6;
  }
  uVar24 = **(undefined8 **)(lVar8 + 0xb8);
  if (*(int *)(*plVar26 + 0xe4) == 0) {
    func_0x029f5bd0(*plVar26);
  }
  uVar10 = Object_op_Inequality_0x6000ded(uVar24,0,0);
  if ((uVar10 & 1) != 0) {
    lVar8 = *(long *)puVar6;
    if (*(int *)(lVar8 + 0xe4) == 0) {
      func_0x029f5bd0();
      lVar8 = *(long *)puVar6;
    }
    if (**(long **)(lVar8 + 0xb8) == 0) goto LAB_02c1449c;
    StarGem_Pig_LoadFromSaveData_0x6000dfa(**(long **)(lVar8 + 0xb8),param_1,0);
  }
  puVar6 = PTR_DAT_05e5d920;
  if (*(int *)(*(long *)PTR_DAT_05e5d920 + 0xe4) == 0) {
    func_0x029f5bd0();
  }
  if (cRam000000000625b960 == '\0') {
    func_0x029f5a50(PTR_DAT_05e5d920);
    cRam000000000625b960 = '\x01';
  }
  lVar8 = *(long *)puVar6;
  if (*(int *)(lVar8 + 0xe4) == 0) {
    func_0x029f5bd0();
    lVar8 = *(long *)puVar6;
  }
  puVar6 = PTR_DAT_05e5d4c0;
  if (**(long **)(lVar8 + 0xb8) == 0) goto LAB_02c1449c;
  Shop_manager_LoadFromSaveData_0x6000daf(**(long **)(lVar8 + 0xb8),param_1,0);
  lVar8 = *(long *)puVar6;
  if (*(int *)(lVar8 + 0xe4) == 0) {
    func_0x029f5bd0();
    lVar8 = *(long *)puVar6;
  }
  puVar6 = PTR_DAT_05e5dfa0;
  if (**(long **)(lVar8 + 0xb8) == 0) goto LAB_02c1449c;
  Buff_manager_LoadBuffTimes_0x600070f
            (*(undefined4 *)(param_1 + 0x328),*(undefined4 *)(param_1 + 0x32c),
             *(undefined4 *)(param_1 + 0x330),**(long **)(lVar8 + 0xb8),0);
  uVar24 = **(undefined8 **)(*(long *)puVar6 + 0xb8);
  if (*(int *)(*plVar26 + 0xe4) == 0) {
    func_0x029f5bd0();
  }
  uVar10 = Object_op_Inequality_0x6000ded(uVar24,0,0);
  if ((uVar10 & 1) != 0) {
    lVar8 = **(long **)(*(long *)puVar6 + 0xb8);
    if (lVar8 == 0) goto LAB_02c1449c;
    FreeCash_manager_LoadFromSaveData_0x600030d(lVar8,param_1,0);
  }
  puVar6 = PTR_DAT_05e62670;
  if (**(long **)(*(long *)PTR_DAT_05e62668 + 0xb8) == 0) goto LAB_02c1449c;
  DiaPig_Init_0x6000ce9
            (**(long **)(*(long *)PTR_DAT_05e62668 + 0xb8),*(undefined8 *)(param_1 + 0x220),0);
  lVar8 = *(long *)(*(long *)(*(long *)puVar6 + 0xb8) + 8);
  if (lVar8 == 0) goto LAB_02c1449c;
  *(undefined1 *)(lVar8 + 0x20) = *(undefined1 *)(param_1 + 0x228);
  puVar6 = PTR_DAT_05e5d498;
  *(undefined2 *)(lVar8 + 0x21) = *(undefined2 *)(param_1 + 0x229);
  Setting_UI_Reload_0x6000517(lVar8,0);
  lVar8 = **(long **)(*(long *)puVar6 + 0xb8);
  if (lVar8 == 0) goto LAB_02c1449c;
  *(undefined8 *)(lVar8 + 0x28) = *(undefined8 *)(param_1 + 0x238);
  Managed_WriteBarrier();
  *(undefined8 *)(lVar8 + 0x30) = *(undefined8 *)(param_1 + 0x240);
  Managed_WriteBarrier();
  *(undefined8 *)(lVar8 + 0x38) = *(undefined8 *)(param_1 + 0x248);
  Managed_WriteBarrier();
  Rank_manager_Login_0x6000412(lVar8);
  if (*(char *)(param_1 + 0x3c9) != '\0') {
    if (**(long **)(*(long *)PTR_DAT_05e5e4d8 + 0xb8) == 0) goto LAB_02c1449c;
    Tutorial_manager_SetCleared_0x6000f38(**(long **)(*(long *)PTR_DAT_05e5e4d8 + 0xb8),0);
  }
  plVar19 = (long *)PTR_DAT_05e597d0;
  uVar24 = *(undefined8 *)(param_1 + 0x260);
  lVar8 = **(long **)(*(long *)PTR_DAT_05e5e4f8 + 0xb8);
  if (*(int *)(*plVar28 + 0xe4) == 0) {
    func_0x029f5bd0();
  }
  uStack_68 = Time_manager_get_Now_0x6000579(0);
  if (*(int *)(*plVar19 + 0xe4) == 0) {
    func_0x029f5bd0(*plVar19);
  }
  uVar11 = DateTime_AddDays_0x60005fb(0xbff0000000000000,&uStack_68,0);
  uVar24 = LoadData_DateParseSafe_0x600047d(uVar24,uVar11,0);
  if (lVar8 == 0) goto LAB_02c1449c;
  *(undefined8 *)(lVar8 + 0x78) = uVar24;
  puVar6 = PTR_DAT_05e5dd38;
  uVar11 = *(undefined8 *)(param_1 + 0x250);
  uVar24 = Time_manager_get_Now_0x6000579(0);
  uVar24 = LoadData_DateParseSafe_0x600047d(uVar11,uVar24,0);
  DailyCheck_First_reload_0x60002c1
            (lVar8,uVar24,*(undefined4 *)(param_1 + 600),*(undefined4 *)(param_1 + 0x25c),0);
  lVar8 = **(long **)(*(long *)puVar6 + 0xb8);
  if (lVar8 == 0) goto LAB_02c1449c;
  uVar11 = *(undefined8 *)(param_1 + 0x270);
  *(undefined4 *)(lVar8 + 0x78) = *(undefined4 *)(param_1 + 0x278);
  uVar24 = Time_manager_get_Now_0x6000579(0);
  uVar24 = LoadData_DateParseSafe_0x600047d(uVar11,uVar24,0);
  *(undefined8 *)(lVar8 + 0x70) = uVar24;
  if (*(long *)(param_1 + 0x280) != 0) {
    if (**(long **)(*(long *)puVar6 + 0xb8) == 0) goto LAB_02c1449c;
    uVar24 = *(undefined8 *)(**(long **)(*(long *)puVar6 + 0xb8) + 0xa0);
    if (*(int *)(*plVar26 + 0xe4) == 0) {
      func_0x029f5bd0();
    }
    uVar10 = Object_op_Inequality_0x6000ded(uVar24,0,0);
    if ((uVar10 & 1) != 0) {
      if ((**(long **)(*(long *)puVar6 + 0xb8) == 0) ||
         (lVar8 = *(long *)(**(long **)(*(long *)puVar6 + 0xb8) + 0xa0), lVar8 == 0))
      goto LAB_02c1449c;
      Fish_Tank_ReloadAll_0x60009f8(lVar8,0);
    }
  }
  puVar6 = PTR_DAT_05e5dd48;
  uVar24 = *(undefined8 *)(param_1 + 0x290);
  lVar8 = **(long **)(*(long *)PTR_DAT_05e5dd48 + 0xb8);
  if (*(int *)(*plVar28 + 0xe4) == 0) {
    func_0x029f5bd0();
  }
  uVar11 = Time_manager_get_Now_0x6000579(0);
  uVar24 = LoadData_DateParseSafe_0x600047d(uVar24,uVar11,0);
  if (lVar8 == 0) goto LAB_02c1449c;
  lVar9 = *(long *)puVar6;
  *(undefined8 *)(lVar8 + 0x58) = uVar24;
  puVar6 = PTR_DAT_05e5dd30;
  lVar8 = **(long **)(lVar9 + 0xb8);
  if (lVar8 == 0) goto LAB_02c1449c;
  uVar2 = *(undefined4 *)(param_1 + 0x298);
  lVar9 = *(long *)PTR_DAT_05e5dd30;
  *(undefined4 *)(lVar8 + 0x50) = *(undefined4 *)(param_1 + 0x288);
  *(undefined4 *)(lVar8 + 0x60) = uVar2;
  if (*(int *)(lVar9 + 0xe4) == 0) {
    func_0x029f5bd0();
    lVar9 = *(long *)puVar6;
  }
  puVar6 = PTR_DAT_05e5dd58;
  lVar8 = *(long *)(*(long *)(lVar9 + 0xb8) + 8);
  if (lVar8 == 0) goto LAB_02c1449c;
  lVar9 = *(long *)PTR_DAT_05e5dd58;
  *(undefined4 *)(lVar8 + 0x20) = *(undefined4 *)(param_1 + 0x2c8);
  if (*(int *)(lVar9 + 0xe4) == 0) {
    func_0x029f5bd0();
    lVar9 = *(long *)puVar6;
  }
  puVar6 = PTR_DAT_05e5dd28;
  lVar8 = *(long *)(*(long *)(lVar9 + 0xb8) + 8);
  if (lVar8 == 0) goto LAB_02c1449c;
  lVar9 = *(long *)PTR_DAT_05e5dd28;
  *(undefined8 *)(lVar8 + 0x20) = *(undefined8 *)(param_1 + 0x2cc);
  if (*(int *)(lVar9 + 0xe4) == 0) {
    func_0x029f5bd0();
    lVar9 = *(long *)puVar6;
  }
  lVar8 = *(long *)(*(long *)(lVar9 + 0xb8) + 0x10);
  if (*(int *)(*plVar26 + 0xe4) == 0) {
    func_0x029f5bd0(*plVar26);
  }
  uVar10 = Object_op_Inequality_0x6000ded(lVar8,0,0);
  if ((uVar10 & 1) != 0) {
    if (*(long *)(param_1 + 0x338) == 0) {
      if (lVar8 == 0) goto LAB_02c1449c;
LAB_02c14078:
      lVar9 = *plVar28;
      *(undefined4 *)(lVar8 + 0x58) = 0x14;
      if (*(int *)(lVar9 + 0xe4) == 0) {
        func_0x029f5bd0();
      }
      uVar24 = Time_manager_get_Now_0x6000579(0);
      *(undefined8 *)(lVar8 + 0x60) = uVar24;
      if ((*(long *)(lVar8 + 0x38) == 0) || (*(long *)(*(long *)(lVar8 + 0x38) + 0x18) == 0)) {
        Adventure_manager_Exp_Balance_Reload_0x6000630(lVar8,0);
      }
    }
    else {
      if (lVar8 == 0) goto LAB_02c1449c;
      if (*(long *)(lVar8 + 0x20) == 0) goto LAB_02c14078;
      lVar9 = *(long *)(param_1 + 0x340);
      if (lVar9 != 0) {
        lVar21 = *(long *)(lVar8 + 0x28);
        if (lVar21 == 0) goto LAB_02c1449c;
        uVar14 = (uint)*(ulong *)(lVar9 + 0x18);
        uVar16 = (uint)*(ulong *)(lVar21 + 0x18);
        if ((int)uVar16 <= (int)uVar14) {
          uVar14 = uVar16;
        }
        uVar10 = (ulong)uVar14;
        if (0 < (int)uVar14) {
          uVar15 = *(ulong *)(lVar9 + 0x18) & 0xffffffff;
          uVar17 = *(ulong *)(lVar21 + 0x18) & 0xffffffff;
          puVar18 = (undefined4 *)(lVar9 + 0x20);
          puVar22 = (undefined4 *)(lVar21 + 0x20);
          do {
            if ((uVar15 == 0) || (uVar17 == 0)) goto LAB_02c144a0;
            uVar10 = uVar10 - 1;
            uVar17 = uVar17 - 1;
            uVar15 = uVar15 - 1;
            *puVar22 = *puVar18;
            puVar18 = puVar18 + 1;
            puVar22 = puVar22 + 1;
          } while (uVar10 != 0);
        }
      }
      lVar9 = *plVar28;
      uVar24 = *(undefined8 *)(param_1 + 0x358);
      *(undefined8 *)(lVar8 + 0x30) = *(undefined8 *)(param_1 + 0x348);
      iVar1 = *(int *)(lVar9 + 0xe4);
      *(undefined4 *)(lVar8 + 0x58) = *(undefined4 *)(param_1 + 0x350);
      if (iVar1 == 0) {
        func_0x029f5bd0();
      }
      uVar11 = Time_manager_get_Now_0x6000579(0);
      uVar24 = LoadData_DateParseSafe_0x600047d(uVar24,uVar11,0);
      *(undefined8 *)(lVar8 + 0x60) = uVar24;
      if ((*(long *)(param_1 + 0x338) == 0) || (*(long *)(lVar8 + 0x20) == 0)) goto LAB_02c1449c;
      uVar14 = *(uint *)(*(long *)(param_1 + 0x338) + 0x18);
      uVar16 = *(uint *)(*(long *)(lVar8 + 0x20) + 0x18);
      if ((int)uVar16 <= (int)uVar14) {
        uVar14 = uVar16;
      }
      if (0 < (int)uVar14) {
        uVar16 = 0;
        do {
          lVar9 = *(long *)(param_1 + 0x338);
          if (lVar9 == 0) goto LAB_02c1449c;
          if (*(uint *)(lVar9 + 0x18) <= uVar16) goto LAB_02c144a0;
          lVar9 = *(long *)(lVar9 + (ulong)uVar16 * 8 + 0x20);
          if (lVar9 == 0) {
            lVar9 = 0;
          }
          else {
            lVar9 = *(long *)(lVar9 + 0x10);
          }
          lVar21 = *(long *)(lVar8 + 0x20);
          if (lVar21 == 0) goto LAB_02c1449c;
          if (*(uint *)(lVar21 + 0x18) <= uVar16) goto LAB_02c144a0;
          lVar21 = *(long *)(lVar21 + (ulong)uVar16 * 8 + 0x20);
          if (lVar21 == 0) goto LAB_02c1449c;
          if ((lVar9 != 0) && (lVar21 = *(long *)(lVar21 + 0x18), lVar21 != 0)) {
            iVar3 = *(int *)(lVar9 + 0x18);
            iVar4 = *(int *)(lVar21 + 0x18);
            iVar1 = iVar3;
            if (iVar4 <= iVar3) {
              iVar1 = iVar4;
            }
            if (0 < iVar1) {
              lVar25 = 0;
              if (iVar3 <= iVar4) {
                iVar4 = iVar3;
              }
              do {
                if ((*(uint *)(lVar21 + 0x18) <= (uint)lVar25) ||
                   (*(uint *)(lVar9 + 0x18) <= (uint)lVar25)) goto LAB_02c144a0;
                lVar12 = *(long *)(lVar9 + 0x20 + lVar25 * 8);
                if ((lVar12 == 0) || (lVar29 = *(long *)(lVar21 + 0x20 + lVar25 * 8), lVar29 == 0))
                goto LAB_02c1449c;
                uVar24 = *(undefined8 *)(lVar12 + 0x18);
                uStack_68 = 0;
                *(undefined1 *)(lVar29 + 0x10) = *(undefined1 *)(lVar12 + 0x10);
                uVar24 = LoadData_DateParseSafe_0x600047d(uVar24,0,0);
                lVar25 = lVar25 + 1;
                *(undefined8 *)(lVar29 + 0x18) = uVar24;
              } while (iVar4 != (int)lVar25);
            }
          }
          uVar16 = uVar16 + 1;
        } while (uVar16 != uVar14);
      }
      if ((*(long *)(lVar8 + 0x38) == 0) || (*(long *)(*(long *)(lVar8 + 0x38) + 0x18) == 0)) {
        Adventure_manager_Exp_Balance_Reload_0x6000630(lVar8,0);
      }
      Adventure_manager_Ticket_Refresh_0x6000636(lVar8,0);
      uVar2 = *(undefined4 *)(param_1 + 0x360);
      lVar9 = *(long *)PTR_DAT_05e59050;
      if (*(long *)(param_1 + 0x368) != 0) {
        lVar9 = *(long *)(param_1 + 0x368);
      }
      *(long *)(lVar8 + 0x80) = lVar9;
      *(undefined4 *)(lVar8 + 0x78) = uVar2;
      Managed_WriteBarrier();
      plVar26 = (long *)PTR_DAT_05e591c0;
      plVar27 = (long *)PTR_DAT_05e5e070;
      plVar28 = (long *)PTR_DAT_05e5d3c0;
      plVar19 = (long *)PTR_DAT_05e597d0;
    }
    Adventure_manager_Alert_Reload_0x600062a(lVar8,0);
  }
  puVar6 = PTR_DAT_05e5dd50;
  lVar8 = *(long *)PTR_DAT_05e5dd50;
  if (*(int *)(lVar8 + 0xe4) == 0) {
    func_0x029f5bd0();
    lVar8 = *(long *)puVar6;
  }
  puVar13 = *(undefined2 **)(lVar8 + 0xb8);
  lVar8 = *(long *)(puVar13 + 4);
  if (lVar8 != 0) {
    uVar5 = *(undefined1 *)(param_1 + 0x2ec);
    *(undefined8 *)(lVar8 + 0x48) = *(undefined8 *)(param_1 + 0x2d4);
    uVar2 = *(undefined4 *)(param_1 + 800);
    *(undefined1 *)(lVar8 + 0x65) = uVar5;
    *(undefined4 *)(lVar8 + 0x60) = uVar2;
    uVar11 = *(undefined8 *)(param_1 + 0x2e4);
    uVar24 = *(undefined8 *)(param_1 + 0x2dc);
    *(undefined1 *)(lVar8 + 100) = *(undefined1 *)(param_1 + 0x324);
    *(undefined8 *)(lVar8 + 0x58) = uVar11;
    *(undefined8 *)(lVar8 + 0x50) = uVar24;
    *puVar13 = *(undefined2 *)(param_1 + 0x2ed);
    uVar24 = *(undefined8 *)(param_1 + 0x2f0);
    if (*(int *)(*plVar28 + 0xe4) == 0) {
      func_0x029f5bd0();
    }
    uStack_68 = Time_manager_get_Now_0x6000579(0);
    if (*(int *)(*plVar19 + 0xe4) == 0) {
      func_0x029f5bd0(*plVar19);
    }
    uVar11 = DateTime_AddMonths_0x60005ff(&uStack_68,1,0);
    uVar24 = LoadData_DateParseSafe_0x600047d(uVar24,uVar11,0);
    *(undefined8 *)(lVar8 + 0x68) = uVar24;
    uVar11 = *(undefined8 *)(param_1 + 0x2f8);
    uVar24 = Time_manager_get_Now_0x6000579(0);
    uVar24 = LoadData_DateParseSafe_0x600047d(uVar11,uVar24,0);
    *(undefined8 *)(lVar8 + 0x70) = uVar24;
    lVar9 = *(long *)(param_1 + 0x300);
    if ((lVar9 != 0) && (iVar1 = *(int *)(lVar9 + 0x18), 0 < iVar1)) {
      lVar21 = *(long *)(lVar8 + 0x20);
      if (lVar21 == 0) goto LAB_02c1449c;
      uVar16 = *(uint *)(lVar21 + 0x18);
      plVar19 = (long *)(lVar21 + 0x20);
      uVar14 = uVar16 & ((int)uVar16 >> 0x1f ^ 0xffffffffU);
      puVar20 = (undefined1 *)(lVar9 + 0x20);
      do {
        if (uVar14 == 0) break;
        if (uVar16 == 0) goto LAB_02c144a0;
        lVar9 = *plVar19;
        if (lVar9 == 0) goto LAB_02c1449c;
        iVar1 = iVar1 + -1;
        plVar19 = plVar19 + 1;
        uVar16 = uVar16 - 1;
        uVar14 = uVar14 - 1;
        *(undefined1 *)(lVar9 + 0x24) = *puVar20;
        puVar20 = puVar20 + 1;
      } while (iVar1 != 0);
    }
    lVar9 = *(long *)(param_1 + 0x308);
    if ((lVar9 != 0) && (iVar1 = *(int *)(lVar9 + 0x18), 0 < iVar1)) {
      lVar21 = *(long *)(lVar8 + 0x20);
      if (lVar21 == 0) goto LAB_02c1449c;
      uVar16 = *(uint *)(lVar21 + 0x18);
      plVar19 = (long *)(lVar21 + 0x20);
      uVar14 = uVar16 & ((int)uVar16 >> 0x1f ^ 0xffffffffU);
      puVar20 = (undefined1 *)(lVar9 + 0x20);
      do {
        if (uVar14 == 0) break;
        if (uVar16 == 0) goto LAB_02c144a0;
        lVar9 = *plVar19;
        if (lVar9 == 0) goto LAB_02c1449c;
        iVar1 = iVar1 + -1;
        plVar19 = plVar19 + 1;
        uVar16 = uVar16 - 1;
        uVar14 = uVar14 - 1;
        *(undefined1 *)(lVar9 + 0x25) = *puVar20;
        puVar20 = puVar20 + 1;
      } while (iVar1 != 0);
    }
    lVar9 = *(long *)(param_1 + 0x310);
    if ((lVar9 != 0) && (0 < (int)*(ulong *)(lVar9 + 0x18))) {
      lVar21 = *(long *)(lVar8 + 0x38);
      if (lVar21 == 0) goto LAB_02c1449c;
      uVar10 = *(ulong *)(lVar9 + 0x18) & 0xffffffff;
      uVar14 = (uint)*(ulong *)(lVar21 + 0x18);
      uVar15 = (ulong)(uVar14 & ((int)uVar14 >> 0x1f ^ 0xffffffffU));
      uVar17 = *(ulong *)(lVar21 + 0x18) & 0xffffffff;
      puVar20 = (undefined1 *)(lVar9 + 0x20);
      puVar23 = (undefined1 *)(lVar21 + 0x20);
      do {
        if (uVar15 == 0) break;
        if (uVar17 == 0) goto LAB_02c144a0;
        uVar10 = uVar10 - 1;
        uVar17 = uVar17 - 1;
        uVar15 = uVar15 - 1;
        *puVar23 = *puVar20;
        puVar20 = puVar20 + 1;
        puVar23 = puVar23 + 1;
      } while (uVar10 != 0);
    }
    lVar9 = *(long *)(param_1 + 0x318);
    if ((lVar9 != 0) && (0 < (int)*(ulong *)(lVar9 + 0x18))) {
      lVar21 = *(long *)(lVar8 + 0x40);
      if (lVar21 == 0) goto LAB_02c1449c;
      uVar10 = *(ulong *)(lVar9 + 0x18) & 0xffffffff;
      uVar14 = (uint)*(ulong *)(lVar21 + 0x18);
      uVar15 = (ulong)(uVar14 & ((int)uVar14 >> 0x1f ^ 0xffffffffU));
      uVar17 = *(ulong *)(lVar21 + 0x18) & 0xffffffff;
      puVar20 = (undefined1 *)(lVar9 + 0x20);
      puVar23 = (undefined1 *)(lVar21 + 0x20);
      do {
        if (uVar15 == 0) break;
        if (uVar17 == 0) {
LAB_02c144a0:
                    /* WARNING: Subroutine does not return */
          Throw_Index_Wrapper();
        }
        uVar10 = uVar10 - 1;
        uVar17 = uVar17 - 1;
        uVar15 = uVar15 - 1;
        *puVar23 = *puVar20;
        puVar20 = puVar20 + 1;
        puVar23 = puVar23 + 1;
      } while (uVar10 != 0);
    }
    puVar6 = PTR_DAT_05e625c8;
    if (*(int *)(*plVar28 + 0xe4) == 0) {
      func_0x029f5bd0();
    }
    Time_manager_MarkSaveLoaded_0x6000554(0);
    Mission_manager_Reload_0x600033d(lVar8,0);
    puVar7 = PTR_DAT_05e5d5b0;
    if (**(long **)(*(long *)puVar6 + 0xb8) != 0) {
      lVar8 = *(long *)PTR_DAT_05e5d5b0;
      *(undefined1 *)(**(long **)(*(long *)puVar6 + 0xb8) + 0x20) = *(undefined1 *)(param_1 + 0x3c8)
      ;
      lVar8 = *(long *)(*(long *)(lVar8 + 0xb8) + 8);
      if (lVar8 != 0) {
        Cat_manager_Skin_Reload_0x600077d(lVar8,0);
        puVar6 = PTR_DAT_05e62650;
        lVar8 = *(long *)(*(long *)(*(long *)puVar7 + 0xb8) + 8);
        if (lVar8 != 0) {
          Cat_manager_Balance_Reload_0x6000779(lVar8,0);
          SaveSystem_AllowSave_0x6000487();
          uVar24 = **(undefined8 **)(*(long *)puVar6 + 0xb8);
          if (*(int *)(*plVar26 + 0xe4) == 0) {
            func_0x029f5bd0();
          }
          uVar10 = Object_op_Inequality_0x6000ded(uVar24,0,0);
          if ((uVar10 & 1) != 0) {
            lVar8 = **(long **)(*(long *)puVar6 + 0xb8);
            if (lVar8 == 0) goto LAB_02c1449c;
            OfferWall_manager_OnSaveLoaded_0x6000d1c(lVar8,0);
          }
          puVar6 = PTR_DAT_05e5d6a8;
          lVar8 = *(long *)PTR_DAT_05e5d6a8;
          if (*(int *)(lVar8 + 0xe4) == 0) {
            func_0x029f5bd0();
            lVar8 = *(long *)puVar6;
          }
          if (**(long **)(lVar8 + 0xb8) != 0) {
            ServerConfig_manager_OnSaveLoaded_0x60004cb(**(long **)(lVar8 + 0xb8),0);
          }
          lVar8 = *plVar27;
          if (*(int *)(lVar8 + 0xe4) == 0) {
            func_0x029f5bd0();
            lVar8 = *plVar27;
          }
          uVar24 = **(undefined8 **)(lVar8 + 0xb8);
          if (*(int *)(*plVar26 + 0xe4) == 0) {
            func_0x029f5bd0(*plVar26);
          }
          uVar10 = Object_op_Inequality_0x6000ded(uVar24,0,0);
          if ((uVar10 & 1) != 0) {
            lVar8 = *plVar27;
            if (*(int *)(lVar8 + 0xe4) == 0) {
              func_0x029f5bd0();
              lVar8 = *plVar27;
            }
            if (**(long **)(lVar8 + 0xb8) == 0) goto LAB_02c1449c;
            Raid_manager_OnSaveLoaded_0x6000907(**(long **)(lVar8 + 0xb8),0);
          }
          if (*(int *)(*(long *)PTR_DAT_05e5d540 + 0xe4) == 0) {
            func_0x029f5bd0();
          }
          AppsFlyerInit_SendLog_Launch_0x6000211(0);
          return;
        }
      }
    }
  }
LAB_02c1449c:
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

