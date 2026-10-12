/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b12318, Ghidra VA 02c12318. */

void LoadData_Load(long param_1)

{
  undefined4 uVar1;
  int iVar2;
  undefined1 uVar3;
  undefined2 uVar4;
  undefined *puVar5;
  undefined *puVar6;
  undefined *puVar7;
  undefined *puVar8;
  long lVar9;
  long *plVar10;
  uint uVar11;
  long lVar12;
  ulong uVar13;
  int iVar14;
  uint uVar15;
  int iVar16;
  long lVar17;
  ulong uVar18;
  ulong uVar19;
  undefined1 *puVar20;
  undefined4 *puVar21;
  undefined1 *puVar22;
  undefined4 *puVar23;
  long *plVar24;
  undefined8 *puVar25;
  undefined4 uVar26;
  undefined8 uVar27;
  undefined8 uVar28;
  undefined8 uVar29;
  undefined8 uVar30;
  undefined1 auVar31 [16];
  
  puVar5 = PTR_DAT_05e62608;
  if ((bRam000000000625bee5 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e62610);
    func_0x029f5a50(PTR_DAT_05e5dd38);
    func_0x029f5a50(PTR_DAT_05e5d338);
    func_0x029f5a50(PTR_DAT_05e5dd40);
    func_0x029f5a50(PTR_DAT_05e62618);
    func_0x029f5a50(PTR_DAT_05e62620);
    func_0x029f5a50(PTR_DAT_05e62628);
    func_0x029f5a50(PTR_DAT_05e62630);
    func_0x029f5a50(PTR_DAT_05e62638);
    func_0x029f5a50(PTR_DAT_05e591c0);
    func_0x029f5a50(PTR_DAT_05e61f78);
    func_0x029f5a50(PTR_DAT_05e5d4d0);
    func_0x029f5a50(PTR_DAT_05e5dd60);
    func_0x029f5a50(PTR_DAT_05e62640);
    func_0x029f5a50(PTR_DAT_05e5d4d8);
    func_0x029f5a50(PTR_DAT_05e62648);
    func_0x029f5a50(PTR_DAT_05e5d6a8);
    func_0x029f5a50(PTR_DAT_05e5d4e0);
    func_0x029f5a50(PTR_DAT_05e5e058);
    func_0x029f5a50(PTR_DAT_05e5d3c0);
    func_0x029f5a50(PTR_DAT_05e5dc20);
    func_0x029f5a50(PTR_DAT_05e62608);
    func_0x029f5a50(PTR_DAT_05e5d4e8);
    func_0x029f5a50(PTR_DAT_05e59050);
    bRam000000000625bee5 = 1;
  }
  if (**(long **)(*(long *)puVar5 + 0xb8) == 0) goto LAB_02c12ff0;
  UpdateManager_CheckForUpdate_0x6000606(**(long **)(*(long *)puVar5 + 0xb8),0);
  puVar7 = PTR_DAT_05e5d338;
  puVar5 = PTR_DAT_05e59050;
  if (param_1 == 0) {
    LoadData_InitNewGame_0x600047c();
    return;
  }
  uVar27 = *(undefined8 *)(param_1 + 0x20);
  uVar30 = *(undefined8 *)(param_1 + 0x18);
  uVar29 = *(undefined8 *)(param_1 + 0x30);
  uVar28 = *(undefined8 *)(param_1 + 0x28);
  lVar9 = *(long *)PTR_DAT_05e5d338;
  if (*(int *)(lVar9 + 0xe4) == 0) {
    func_0x029f5bd0();
    lVar9 = *(long *)puVar7;
  }
  lVar12 = *(long *)(lVar9 + 0xb8);
  *(undefined8 *)(lVar12 + 0x38) = uVar27;
  *(undefined8 *)(lVar12 + 0x30) = uVar30;
  *(undefined8 *)(lVar12 + 0x48) = uVar29;
  *(undefined8 *)(lVar12 + 0x40) = uVar28;
  puVar6 = PTR_DAT_05e5d3c0;
  Managed_WriteBarrier(*(long *)(lVar9 + 0xb8) + 0x30,0);
  lVar9 = *(long *)puVar7;
  uVar30 = *(undefined8 *)(param_1 + 0x38);
  uVar28 = *(undefined8 *)(param_1 + 0x50);
  uVar27 = *(undefined8 *)(param_1 + 0x48);
  lVar12 = *(long *)(lVar9 + 0xb8);
  *(undefined8 *)(lVar12 + 0x58) = *(undefined8 *)(param_1 + 0x40);
  *(undefined8 *)(lVar12 + 0x50) = uVar30;
  *(undefined8 *)(lVar12 + 0x68) = uVar28;
  *(undefined8 *)(lVar12 + 0x60) = uVar27;
  Managed_WriteBarrier(*(long *)(lVar9 + 0xb8) + 0x50,0);
  lVar9 = *(long *)puVar7;
  uVar30 = *(undefined8 *)(param_1 + 0x58);
  uVar28 = *(undefined8 *)(param_1 + 0x70);
  uVar27 = *(undefined8 *)(param_1 + 0x68);
  lVar12 = *(long *)(lVar9 + 0xb8);
  *(undefined8 *)(lVar12 + 0x78) = *(undefined8 *)(param_1 + 0x60);
  *(undefined8 *)(lVar12 + 0x70) = uVar30;
  *(undefined8 *)(lVar12 + 0x88) = uVar28;
  *(undefined8 *)(lVar12 + 0x80) = uVar27;
  Managed_WriteBarrier(*(long *)(lVar9 + 0xb8) + 0x70,0);
  auVar31 = ObscuredInt_op_Implicit_0x6000411(*(undefined4 *)(param_1 + 0x78),0);
  *(undefined1 (*) [16])(*(long *)(*(long *)puVar7 + 0xb8) + 0x90) = auVar31;
  auVar31 = ObscuredInt_op_Implicit_0x6000411(*(undefined4 *)(param_1 + 0x7c),0);
  *(undefined1 (*) [16])(*(long *)(*(long *)puVar7 + 0xb8) + 0xa0) = auVar31;
  auVar31 = ObscuredInt_op_Implicit_0x6000411(*(undefined4 *)(param_1 + 0x80),0);
  lVar9 = *(long *)puVar7;
  *(undefined1 (*) [16])(*(long *)(lVar9 + 0xb8) + 0xb0) = auVar31;
  lVar9 = *(long *)(lVar9 + 0xb8);
  uVar26 = *(undefined4 *)(param_1 + 0x8c);
  uVar3 = *(undefined1 *)(param_1 + 0x90);
  uVar1 = *(undefined4 *)(param_1 + 0x94);
  *(undefined4 *)(lVar9 + 0xc0) = *(undefined4 *)(param_1 + 0x84);
  *(undefined4 *)(lVar9 + 0x15c) = uVar26;
  *(undefined1 *)(lVar9 + 0xd0) = uVar3;
  auVar31 = ObscuredInt_op_Implicit_0x6000411(uVar1,0);
  lVar12 = *(long *)puVar7;
  *(undefined1 (*) [16])(*(long *)(lVar12 + 0xb8) + 0xf0) = auVar31;
  lVar9 = *(long *)puVar5;
  if (*(long *)(param_1 + 0x98) != 0) {
    lVar9 = *(long *)(param_1 + 0x98);
  }
  if (*(int *)(lVar12 + 0xe4) == 0) {
    func_0x029f5bd0();
    lVar12 = *(long *)puVar7;
  }
  lVar12 = *(long *)(lVar12 + 0xb8);
  *(long *)(lVar12 + 0x100) = lVar9;
  Managed_WriteBarrier(lVar12 + 0x100,lVar9);
  lVar9 = *(long *)puVar6;
  uVar30 = *(undefined8 *)(param_1 + 0xb8);
  iVar16 = *(int *)(lVar9 + 0xe4);
  if (iVar16 == 0) {
    func_0x029f5bd0();
    lVar9 = *(long *)puVar6;
    iVar16 = *(int *)(lVar9 + 0xe4);
  }
  lVar17 = *(long *)(param_1 + 200);
  lVar12 = *(long *)puVar5;
  lVar9 = *(long *)(lVar9 + 0xb8);
  uVar3 = *(undefined1 *)(param_1 + 0xc0);
  *(undefined8 *)(lVar9 + 0x10) = uVar30;
  if (lVar17 != 0) {
    lVar12 = lVar17;
  }
  *(undefined1 *)(lVar9 + 0x18) = uVar3;
  if (iVar16 == 0) {
    func_0x029f5bd0();
  }
  Time_manager_set_LastTrustedUtc_0x6000551(lVar12,0);
  lVar9 = *(long *)(param_1 + 0xd0);
  if (lVar9 == 0) {
    lVar9 = func_0x029f5cec(*(undefined8 *)PTR_DAT_05e62630);
    func_0x0452c340(lVar9,*(undefined8 *)PTR_DAT_05e62618);
  }
  lVar12 = *(long *)puVar6;
  if (*(int *)(lVar12 + 0xe4) == 0) {
    func_0x029f5bd0();
    lVar12 = *(long *)puVar6;
  }
  plVar10 = (long *)(*(long *)(lVar12 + 0xb8) + 0x20);
  *plVar10 = lVar9;
  Managed_WriteBarrier(plVar10,lVar9);
  auVar31 = ObscuredInt_op_Implicit_0x6000411(*(undefined4 *)(param_1 + 0xd8),0);
  lVar9 = *(long *)puVar7;
  if (*(int *)(lVar9 + 0xe4) == 0) {
    func_0x029f5bd0();
    lVar9 = *(long *)puVar7;
  }
  lVar12 = *(long *)puVar5;
  *(undefined1 (*) [16])(*(long *)(lVar9 + 0xb8) + 0x128) = auVar31;
  if (*(long *)(param_1 + 0xe0) != 0) {
    lVar12 = *(long *)(param_1 + 0xe0);
  }
  if (*(int *)(lVar9 + 0xe4) == 0) {
    func_0x029f5bd0();
    lVar9 = *(long *)puVar7;
  }
  puVar8 = PTR_DAT_05e62640;
  lVar9 = *(long *)(lVar9 + 0xb8);
  *(long *)(lVar9 + 0x138) = lVar12;
  Managed_WriteBarrier(lVar9 + 0x138,lVar12);
  lVar12 = *(long *)puVar7;
  lVar9 = *(long *)puVar5;
  if (*(long *)(param_1 + 0xe8) != 0) {
    lVar9 = *(long *)(param_1 + 0xe8);
  }
  if (*(int *)(lVar12 + 0xe4) == 0) {
    func_0x029f5bd0();
    lVar12 = *(long *)puVar7;
  }
  lVar12 = *(long *)(lVar12 + 0xb8);
  *(long *)(lVar12 + 0x140) = lVar9;
  Managed_WriteBarrier(lVar12 + 0x140,lVar9);
  lVar12 = *(long *)puVar8;
  lVar9 = *(long *)puVar5;
  if (*(long *)(param_1 + 0xf0) != 0) {
    lVar9 = *(long *)(param_1 + 0xf0);
  }
  if (*(int *)(lVar12 + 0xe4) == 0) {
    func_0x029f5bd0();
    lVar12 = *(long *)puVar8;
  }
  puVar8 = PTR_DAT_05e5d6a8;
  plVar10 = (long *)(*(long *)(lVar12 + 0xb8) + 8);
  *plVar10 = lVar9;
  Managed_WriteBarrier(plVar10,lVar9);
  if (*(int *)(*(long *)puVar6 + 0xe4) == 0) {
    func_0x029f5bd0();
  }
  Time_manager_Init_0x6000568(0);
  if (*(int *)(*(long *)puVar8 + 0xe4) == 0) {
    func_0x029f5bd0();
  }
  ServerConfig_manager_LoadFromSaveData_0x60004c3(param_1,0);
  lVar12 = *(long *)puVar7;
  lVar9 = *(long *)puVar5;
  if (*(long *)(param_1 + 0xa0) != 0) {
    lVar9 = *(long *)(param_1 + 0xa0);
  }
  if (*(int *)(lVar12 + 0xe4) == 0) {
    func_0x029f5bd0();
    lVar12 = *(long *)puVar7;
  }
  plVar10 = (long *)(*(long *)(lVar12 + 0xb8) + 0xd8);
  *plVar10 = lVar9;
  Managed_WriteBarrier(plVar10,lVar9);
  lVar12 = *(long *)puVar7;
  lVar9 = *(long *)puVar5;
  if (*(long *)(param_1 + 0xa8) != 0) {
    lVar9 = *(long *)(param_1 + 0xa8);
  }
  if (*(int *)(lVar12 + 0xe4) == 0) {
    func_0x029f5bd0();
    lVar12 = *(long *)puVar7;
  }
  plVar10 = (long *)(*(long *)(lVar12 + 0xb8) + 0xe0);
  *plVar10 = lVar9;
  Managed_WriteBarrier(plVar10,lVar9);
  lVar12 = *(long *)puVar7;
  lVar9 = *(long *)puVar5;
  if (*(long *)(param_1 + 0xb0) != 0) {
    lVar9 = *(long *)(param_1 + 0xb0);
  }
  if (*(int *)(lVar12 + 0xe4) == 0) {
    func_0x029f5bd0();
    lVar12 = *(long *)puVar7;
  }
  plVar10 = (long *)(*(long *)(lVar12 + 0xb8) + 0xe8);
  *plVar10 = lVar9;
  Managed_WriteBarrier(plVar10,lVar9);
  if (*(char *)(param_1 + 0x90) != '\0') {
    lVar9 = *(long *)puVar7;
    if (*(int *)(lVar9 + 0xe4) == 0) {
      func_0x029f5bd0();
      lVar9 = *(long *)puVar7;
    }
    lVar9 = *(long *)(*(long *)(lVar9 + 0xb8) + 200);
    if ((lVar9 == 0) || (lVar9 = *(long *)(lVar9 + 0x20), lVar9 == 0)) goto LAB_02c12ff0;
    GameObject_SetActive_0x6000cfe(lVar9,0,0);
  }
  puVar6 = PTR_DAT_05e5d4e8;
  lVar9 = *(long *)PTR_DAT_05e5d4e8;
  if (*(int *)(lVar9 + 0xe4) == 0) {
    func_0x029f5bd0();
    lVar9 = *(long *)puVar6;
  }
  puVar6 = PTR_DAT_05e5dd60;
  if (**(long **)(lVar9 + 0xb8) == 0) goto LAB_02c12ff0;
  Upgrade_manager_LoadData_0x6000f91(**(long **)(lVar9 + 0xb8),param_1,0);
  lVar9 = **(long **)(*(long *)puVar6 + 0xb8);
  if (lVar9 == 0) goto LAB_02c12ff0;
  Rebirth_manager_LoadData_0x6000c8e(lVar9,param_1,0);
  lVar9 = **(long **)(*(long *)puVar6 + 0xb8);
  if (lVar9 == 0) goto LAB_02c12ff0;
  lVar12 = *(long *)PTR_DAT_05e5dd40;
  *(undefined4 *)(lVar9 + 0x30) = *(undefined4 *)(param_1 + 0x128);
  lVar9 = **(long **)(lVar12 + 0xb8);
  if (lVar9 == 0) goto LAB_02c12ff0;
  *(undefined8 *)(lVar9 + 0x28) = *(undefined8 *)(param_1 + 0x140);
  Managed_WriteBarrier();
  lVar12 = *(long *)(param_1 + 0x148);
  if (lVar12 == 0) goto LAB_02c12ff0;
  uVar19 = *(ulong *)(lVar12 + 0x18);
  uVar11 = (uint)uVar19;
  if (0 < (int)uVar11) {
    lVar17 = *(long *)(lVar9 + 0x30);
    uVar13 = 0;
    do {
      if ((uVar19 & 0xffffffff) == uVar13) goto LAB_02c12fec;
      if (lVar17 == 0) goto LAB_02c12ff0;
      if (*(uint *)(lVar17 + 0x18) <= uVar13) goto LAB_02c12fec;
      *(undefined1 *)(lVar17 + 0x20 + uVar13) = *(undefined1 *)(lVar12 + 0x20 + uVar13);
      uVar13 = uVar13 + 1;
    } while ((uVar11 & ((int)uVar11 >> 0x1f ^ 0xffffffffU)) != uVar13);
  }
  lVar12 = *(long *)(param_1 + 0x150);
  if (lVar12 == 0) goto LAB_02c12ff0;
  uVar19 = *(ulong *)(lVar12 + 0x18);
  uVar11 = (uint)uVar19;
  if (0 < (int)uVar11) {
    lVar17 = *(long *)(lVar9 + 0x40);
    uVar13 = 0;
    do {
      if ((uVar19 & 0xffffffff) == uVar13) goto LAB_02c12fec;
      if (lVar17 == 0) goto LAB_02c12ff0;
      if (*(uint *)(lVar17 + 0x18) <= uVar13) goto LAB_02c12fec;
      *(undefined4 *)(lVar17 + 0x20 + uVar13 * 4) = *(undefined4 *)(lVar12 + 0x20 + uVar13 * 4);
      uVar13 = uVar13 + 1;
    } while ((uVar11 & ((int)uVar11 >> 0x1f ^ 0xffffffffU)) != uVar13);
  }
  Gun_manager_Pause_Array_Validate_0x6000a4a(lVar9,0);
  lVar12 = *(long *)(param_1 + 0x180);
  if (lVar12 != 0) {
    lVar17 = *(long *)(lVar9 + 0x60);
    if (lVar17 == 0) goto LAB_02c12ff0;
    uVar11 = (uint)*(ulong *)(lVar12 + 0x18);
    uVar15 = (uint)*(ulong *)(lVar17 + 0x18);
    if ((int)uVar15 <= (int)uVar11) {
      uVar11 = uVar15;
    }
    if (0 < (int)uVar11) {
      uVar13 = (ulong)(uVar11 & ((int)uVar11 >> 0x1f ^ 0xffffffffU));
      uVar19 = *(ulong *)(lVar12 + 0x18) & 0xffffffff;
      uVar18 = *(ulong *)(lVar17 + 0x18) & 0xffffffff;
      puVar20 = (undefined1 *)(lVar17 + 0x20);
      puVar22 = (undefined1 *)(lVar12 + 0x20);
      do {
        if ((uVar19 == 0) || (uVar18 == 0)) goto LAB_02c12fec;
        uVar13 = uVar13 - 1;
        uVar19 = uVar19 - 1;
        uVar18 = uVar18 - 1;
        *puVar20 = *puVar22;
        puVar20 = puVar20 + 1;
        puVar22 = puVar22 + 1;
      } while (uVar13 != 0);
    }
  }
  lVar12 = *(long *)(param_1 + 0x188);
  if (lVar12 != 0) {
    lVar17 = *(long *)(lVar9 + 0x68);
    if (lVar17 == 0) goto LAB_02c12ff0;
    uVar11 = (uint)*(ulong *)(lVar12 + 0x18);
    uVar15 = (uint)*(ulong *)(lVar17 + 0x18);
    if ((int)uVar15 <= (int)uVar11) {
      uVar11 = uVar15;
    }
    if (0 < (int)uVar11) {
      uVar13 = (ulong)(uVar11 & ((int)uVar11 >> 0x1f ^ 0xffffffffU));
      uVar19 = *(ulong *)(lVar12 + 0x18) & 0xffffffff;
      uVar18 = *(ulong *)(lVar17 + 0x18) & 0xffffffff;
      puVar20 = (undefined1 *)(lVar17 + 0x20);
      puVar22 = (undefined1 *)(lVar12 + 0x20);
      do {
        if ((uVar19 == 0) || (uVar18 == 0)) goto LAB_02c12fec;
        uVar13 = uVar13 - 1;
        uVar19 = uVar19 - 1;
        uVar18 = uVar18 - 1;
        *puVar20 = *puVar22;
        puVar20 = puVar20 + 1;
        puVar22 = puVar22 + 1;
      } while (uVar13 != 0);
    }
  }
  puVar8 = PTR_DAT_05e62648;
  puVar6 = PTR_DAT_05e591c0;
  uVar30 = **(undefined8 **)(*(long *)PTR_DAT_05e62648 + 0xb8);
  if (*(int *)(*(long *)PTR_DAT_05e591c0 + 0xe4) == 0) {
    func_0x029f5bd0();
  }
  uVar19 = Object_op_Inequality_0x6000ded(uVar30,0,0);
  if ((uVar19 & 1) != 0) {
    if (**(long **)(*(long *)puVar8 + 0xb8) == 0) goto LAB_02c12ff0;
    Safe_manager_LoadFromSaveData_0x6000ac4(**(long **)(*(long *)puVar8 + 0xb8),param_1,0);
  }
  lVar12 = *(long *)(param_1 + 0x158);
  if (lVar12 != 0) {
    lVar17 = *(long *)(lVar9 + 0x38);
    if (lVar17 == 0) goto LAB_02c12ff0;
    uVar11 = (uint)*(ulong *)(lVar12 + 0x18);
    uVar15 = (uint)*(ulong *)(lVar17 + 0x18);
    if ((int)uVar15 <= (int)uVar11) {
      uVar11 = uVar15;
    }
    if (0 < (int)uVar11) {
      uVar13 = (ulong)(uVar11 & ((int)uVar11 >> 0x1f ^ 0xffffffffU));
      uVar19 = *(ulong *)(lVar12 + 0x18) & 0xffffffff;
      uVar18 = *(ulong *)(lVar17 + 0x18) & 0xffffffff;
      puVar21 = (undefined4 *)(lVar17 + 0x20);
      puVar23 = (undefined4 *)(lVar12 + 0x20);
      do {
        if ((uVar19 == 0) || (uVar18 == 0)) goto LAB_02c12fec;
        uVar13 = uVar13 - 1;
        uVar19 = uVar19 - 1;
        uVar18 = uVar18 - 1;
        *puVar21 = *puVar23;
        puVar21 = puVar21 + 1;
        puVar23 = puVar23 + 1;
      } while (uVar13 != 0);
    }
  }
  uVar30 = *(undefined8 *)(param_1 + 0x168);
  uVar3 = *(undefined1 *)(param_1 + 0x174);
  *(undefined8 *)(lVar9 + 0xc0) = *(undefined8 *)(param_1 + 0x160);
  uVar1 = *(undefined4 *)(param_1 + 0x170);
  *(undefined8 *)(lVar9 + 200) = uVar30;
  puVar8 = PTR_DAT_05e5d4d0;
  *(undefined1 *)(lVar9 + 0xd8) = uVar3;
  *(undefined4 *)(lVar9 + 0xd4) = uVar1;
  Gun_manager_AD_Gun_OnLoaded_0x6000a8b(lVar9,0);
  uVar4 = *(undefined2 *)(param_1 + 0x175);
  lVar12 = *(long *)puVar5;
  if (*(long *)(param_1 + 0x178) != 0) {
    lVar12 = *(long *)(param_1 + 0x178);
  }
  *(long *)(lVar9 + 0xb8) = lVar12;
  *(undefined2 *)(lVar9 + 0xe8) = uVar4;
  Managed_WriteBarrier((long *)(lVar9 + 0xb8));
  if ((*(char *)(lVar9 + 0xe8) == '\0') &&
     (uVar19 = Gun_manager_Has_Degree_Or_Higher_0x6000a82(lVar9,1,0), (uVar19 & 1) != 0)) {
    *(undefined1 *)(lVar9 + 0xe8) = 1;
  }
  lVar9 = *(long *)puVar8;
  if (*(int *)(lVar9 + 0xe4) == 0) {
    func_0x029f5bd0();
    lVar9 = *(long *)puVar8;
  }
  lVar12 = *(long *)(param_1 + 0x1a8);
  lVar9 = *(long *)(*(long *)(lVar9 + 0xb8) + 0x28);
  if (lVar12 != 0) {
    if ((lVar9 == 0) || (lVar17 = *(long *)(lVar9 + 0x28), lVar17 == 0)) goto LAB_02c12ff0;
    uVar11 = (uint)*(ulong *)(lVar12 + 0x18);
    uVar15 = (uint)*(ulong *)(lVar17 + 0x18);
    if ((int)uVar15 <= (int)uVar11) {
      uVar11 = uVar15;
    }
    if (0 < (int)uVar11) {
      uVar13 = (ulong)(uVar11 & ((int)uVar11 >> 0x1f ^ 0xffffffffU));
      uVar19 = *(ulong *)(lVar12 + 0x18) & 0xffffffff;
      uVar18 = *(ulong *)(lVar17 + 0x18) & 0xffffffff;
      puVar20 = (undefined1 *)(lVar17 + 0x20);
      puVar22 = (undefined1 *)(lVar12 + 0x20);
      do {
        if ((uVar19 == 0) || (uVar18 == 0)) goto LAB_02c12fec;
        uVar13 = uVar13 - 1;
        uVar19 = uVar19 - 1;
        uVar18 = uVar18 - 1;
        *puVar20 = *puVar22;
        puVar20 = puVar20 + 1;
        puVar22 = puVar22 + 1;
      } while (uVar13 != 0);
    }
  }
  lVar12 = *(long *)(param_1 + 0x1b0);
  if (lVar12 != 0) {
    if ((lVar9 == 0) || (lVar17 = *(long *)(lVar9 + 0x38), lVar17 == 0)) goto LAB_02c12ff0;
    uVar11 = (uint)*(ulong *)(lVar12 + 0x18);
    uVar15 = (uint)*(ulong *)(lVar17 + 0x18);
    if ((int)uVar15 <= (int)uVar11) {
      uVar11 = uVar15;
    }
    if (0 < (int)uVar11) {
      uVar13 = (ulong)(uVar11 & ((int)uVar11 >> 0x1f ^ 0xffffffffU));
      uVar19 = *(ulong *)(lVar12 + 0x18) & 0xffffffff;
      uVar18 = *(ulong *)(lVar17 + 0x18) & 0xffffffff;
      puVar21 = (undefined4 *)(lVar17 + 0x20);
      puVar23 = (undefined4 *)(lVar12 + 0x20);
      do {
        if ((uVar19 == 0) || (uVar18 == 0)) goto LAB_02c12fec;
        uVar13 = uVar13 - 1;
        uVar19 = uVar19 - 1;
        uVar18 = uVar18 - 1;
        *puVar21 = *puVar23;
        puVar21 = puVar21 + 1;
        puVar23 = puVar23 + 1;
      } while (uVar13 != 0);
    }
  }
  if (*(long *)(param_1 + 0x1a0) == 0) {
    if (lVar9 == 0) goto LAB_02c12ff0;
  }
  else {
    if (lVar9 == 0) goto LAB_02c12ff0;
    *(long *)(lVar9 + 0x30) = *(long *)(param_1 + 0x1a0);
    Managed_WriteBarrier();
  }
  puVar8 = PTR_DAT_05e5dc20;
  Pet_manager_LoadLockGroups_0x6000bca
            (lVar9,*(undefined8 *)(param_1 + 0x1b8),*(undefined8 *)(param_1 + 0x1c0),0);
  lVar12 = *(long *)puVar5;
  if (*(long *)(param_1 + 0x1c8) != 0) {
    lVar12 = *(long *)(param_1 + 0x1c8);
  }
  *(long *)(lVar9 + 0xb8) = lVar12;
  Managed_WriteBarrier();
  Pet_manager_Pet_Reload_0x6000bd9(lVar9,0);
  lVar9 = *(long *)puVar8;
  if (*(int *)(lVar9 + 0xe4) == 0) {
    func_0x029f5bd0();
    lVar9 = *(long *)puVar8;
  }
  lVar9 = *(long *)(*(long *)(lVar9 + 0xb8) + 0x10);
  if (lVar9 == 0) goto LAB_02c12ff0;
  *(undefined8 *)(lVar9 + 0x28) = *(undefined8 *)(param_1 + 0x1d0);
  puVar5 = PTR_DAT_05e5d4e0;
  uVar30 = *(undefined8 *)(param_1 + 0x1e0);
  *(undefined4 *)(lVar9 + 0x30) = *(undefined4 *)(param_1 + 0x1d8);
  Tree_manager_LoadSentWaveRatios_0x6000ef9(lVar9,uVar30,0);
  lVar9 = *(long *)(*(long *)(*(long *)puVar5 + 0xb8) + 0x10);
  if (lVar9 == 0) goto LAB_02c12ff0;
  *(undefined8 *)(lVar9 + 0x28) = *(undefined8 *)(param_1 + 0x1f0);
  Managed_WriteBarrier();
  *(undefined4 *)(lVar9 + 0x30) = *(undefined4 *)(param_1 + 0x1f8);
  Skin_manager_Skin_Value_Reload_0x6000e8b(lVar9,0);
  puVar5 = PTR_DAT_05e5dd38;
  lVar9 = *(long *)(param_1 + 0x280);
  if (lVar9 != 0) {
    lVar12 = **(long **)(*(long *)PTR_DAT_05e5dd38 + 0xb8);
    uVar30 = func_0x029f5cec(*(undefined8 *)PTR_DAT_05e62628);
    func_0x044f72bc(uVar30,lVar9,*(undefined8 *)PTR_DAT_05e62620);
    if (lVar12 == 0) goto LAB_02c12ff0;
    puVar25 = (undefined8 *)(lVar12 + 0x90);
    *puVar25 = uVar30;
    Managed_WriteBarrier(puVar25,uVar30);
    if (**(long **)(*(long *)puVar5 + 0xb8) == 0) goto LAB_02c12ff0;
    Fish_manager_UpdateStatTexts_0x600099f(**(long **)(*(long *)puVar5 + 0xb8),0);
  }
  puVar5 = PTR_DAT_05e5e058;
  lVar9 = *(long *)puVar7;
  uVar1 = *(undefined4 *)(param_1 + 0x88);
  if (*(int *)(lVar9 + 0xe4) == 0) {
    func_0x029f5bd0();
    lVar9 = *(long *)puVar7;
  }
  lVar12 = *(long *)puVar5;
  iVar16 = *(int *)(lVar12 + 0xe4);
  *(undefined4 *)(*(long *)(lVar9 + 0xb8) + 0xc4) = uVar1;
  if (iVar16 == 0) {
    func_0x029f5bd0(lVar12);
    lVar12 = *(long *)puVar5;
  }
  puVar5 = PTR_DAT_05e5d4d8;
  if (**(long **)(lVar12 + 0xb8) != 0) {
    StarUpgrade_manager_LoadData_0x6000aea(**(long **)(lVar12 + 0xb8),param_1,0);
  }
  lVar9 = *(long *)puVar5;
  if (*(int *)(lVar9 + 0xe4) == 0) {
    func_0x029f5bd0();
    lVar9 = *(long *)puVar5;
  }
  lVar12 = *(long *)puVar6;
  lVar9 = *(long *)(*(long *)(lVar9 + 0xb8) + 0x70);
  if (*(int *)(lVar12 + 0xe4) == 0) {
    func_0x029f5bd0(lVar12);
  }
  uVar19 = Object_op_Inequality_0x6000ded(lVar9,0,0);
  if ((uVar19 & 1) != 0) {
    lVar12 = *(long *)(param_1 + 0x370);
    if (lVar12 == 0) {
LAB_02c12f08:
      if (lVar9 == 0) goto LAB_02c12ff0;
    }
    else {
      if (lVar9 == 0) goto LAB_02c12ff0;
      lVar17 = *(long *)(lVar9 + 0x20);
      if (lVar17 != 0) {
        iVar2 = *(int *)(lVar12 + 0x18);
        iVar14 = *(int *)(lVar17 + 0x18);
        iVar16 = iVar2;
        if (iVar14 <= iVar2) {
          iVar16 = iVar14;
        }
        if (0 < iVar16) {
          plVar10 = (long *)(lVar17 + 0x20);
          plVar24 = (long *)(lVar12 + 0x20);
          do {
            if ((iVar14 == 0) || (iVar2 == 0)) {
LAB_02c12fec:
                    /* WARNING: Subroutine does not return */
              Throw_Index_Wrapper();
            }
            lVar12 = *plVar24;
            if ((lVar12 == 0) || (lVar17 = *plVar10, lVar17 == 0)) goto LAB_02c12ff0;
            uVar3 = *(undefined1 *)(lVar12 + 0x18);
            plVar10 = plVar10 + 1;
            iVar16 = iVar16 + -1;
            plVar24 = plVar24 + 1;
            iVar2 = iVar2 + -1;
            iVar14 = iVar14 + -1;
            *(undefined8 *)(lVar17 + 0x18) = *(undefined8 *)(lVar12 + 0x10);
            *(undefined1 *)(lVar17 + 0x20) = uVar3;
          } while (iVar16 != 0);
          goto LAB_02c12f08;
        }
      }
    }
    if (*(long *)(lVar9 + 0x48) == 0) {
      Relic_manager_Balance_Reload_0x600069a(lVar9,0);
    }
    Relic_manager_Value_Reload_0x600069b(lVar9,0);
  }
  lVar9 = **(long **)(*(long *)PTR_DAT_05e61f78 + 0xb8);
  if (*(int *)(*(long *)puVar6 + 0xe4) == 0) {
    func_0x029f5bd0();
  }
  uVar19 = Object_op_Inequality_0x6000ded(lVar9,0,0);
  if ((uVar19 & 1) == 0) {
    LoadData_ContinueLoad_0x600047b(param_1);
    return;
  }
  uVar30 = func_0x029f5cec(*(undefined8 *)PTR_DAT_05e62610);
  func_0x03d323cc(uVar30,0,*(undefined8 *)PTR_DAT_05e62638,0);
  if (lVar9 != 0) {
    uVar30 = OfflineProgressManager_EvaluateRoutine_0x60003b2(lVar9,param_1,uVar30);
    MonoBehaviour_StartCoroutine_0x6000d43(lVar9,uVar30,0);
    return;
  }
LAB_02c12ff0:
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

