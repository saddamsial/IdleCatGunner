/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b14ae4, Ghidra VA 02c14ae4. */

long SaveData_CreateFromCurrentState(void)

{
  int iVar1;
  undefined1 uVar2;
  undefined *puVar3;
  undefined *puVar4;
  undefined *puVar5;
  undefined *puVar6;
  undefined *puVar7;
  undefined *puVar8;
  char cVar9;
  bool bVar10;
  byte bVar11;
  undefined4 uVar12;
  long lVar13;
  undefined8 uVar14;
  long lVar15;
  long *plVar16;
  ulong uVar17;
  undefined2 *puVar18;
  long lVar19;
  long lVar20;
  long lVar21;
  uint uVar22;
  long lVar23;
  long lVar24;
  long *plVar25;
  long *plVar26;
  long *plVar27;
  undefined8 *puVar28;
  undefined8 *puVar29;
  long *plVar30;
  uint uVar31;
  long *plVar32;
  undefined8 uVar33;
  undefined8 uVar34;
  
  puVar4 = PTR_DAT_05e62688;
  plVar25 = (long *)PTR_DAT_05e5d3c0;
  if ((bRam000000000625beec & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e62690);
    func_0x029f5a50(PTR_DAT_05e62698);
    func_0x029f5a50(PTR_DAT_05e626a0);
    func_0x029f5a50(PTR_DAT_05e626a8);
    func_0x029f5a50(PTR_DAT_05e5dd28);
    func_0x029f5a50(PTR_DAT_05e58a78);
    func_0x029f5a50(PTR_DAT_05e626b0);
    func_0x029f5a50(PTR_DAT_05e5dd30);
    func_0x029f5a50(PTR_DAT_05e5d4c0);
    func_0x029f5a50(PTR_DAT_05e59760);
    func_0x029f5a50(PTR_DAT_05e5e4f8);
    func_0x029f5a50(PTR_DAT_05e62660);
    func_0x029f5a50(PTR_DAT_05e597d0);
    func_0x029f5a50(PTR_DAT_05e62668);
    func_0x029f5a50(PTR_DAT_05e5dd38);
    func_0x029f5a50(PTR_DAT_05e5dfa0);
    func_0x029f5a50(PTR_DAT_05e5d338);
    func_0x029f5a50(PTR_DAT_05e5dd40);
    func_0x029f5a50(PTR_DAT_05e5d790);
    func_0x029f5a50(PTR_DAT_05e5ed78);
    func_0x029f5a50(PTR_DAT_05e626b8);
    func_0x029f5a50(PTR_DAT_05e62618);
    func_0x029f5a50(PTR_DAT_05e62620);
    func_0x029f5a50(PTR_DAT_05e62628);
    func_0x029f5a50(PTR_DAT_05e62630);
    func_0x029f5a50(PTR_DAT_05e5a8a0);
    func_0x029f5a50(PTR_DAT_05e5dd48);
    func_0x029f5a50(PTR_DAT_05e5dd50);
    func_0x029f5a50(PTR_DAT_05e5dd58);
    func_0x029f5a50(PTR_DAT_05e591c0);
    func_0x029f5a50(PTR_DAT_05e5d4d0);
    func_0x029f5a50(PTR_DAT_05e5e0b8);
    func_0x029f5a50(PTR_DAT_05e5e068);
    func_0x029f5a50(PTR_DAT_05e5e070);
    func_0x029f5a50(PTR_DAT_05e5d498);
    func_0x029f5a50(PTR_DAT_05e5dd60);
    func_0x029f5a50(PTR_DAT_05e62640);
    func_0x029f5a50(PTR_DAT_05e626c0);
    func_0x029f5a50(PTR_DAT_05e626c8);
    func_0x029f5a50(PTR_DAT_05e5d4d8);
    func_0x029f5a50(PTR_DAT_05e625c8);
    func_0x029f5a50(PTR_DAT_05e62648);
    func_0x029f5a50(PTR_DAT_05e62688);
    func_0x029f5a50(PTR_DAT_05e5d6a8);
    func_0x029f5a50(PTR_DAT_05e62670);
    func_0x029f5a50(PTR_DAT_05e5d920);
    func_0x029f5a50(PTR_DAT_05e5d4e0);
    func_0x029f5a50(PTR_DAT_05e5dd68);
    func_0x029f5a50(PTR_DAT_05e5e3e0);
    func_0x029f5a50(PTR_DAT_05e5e058);
    func_0x029f5a50(PTR_DAT_05e5e4b8);
    func_0x029f5a50(PTR_DAT_05e5d3c0);
    func_0x029f5a50(PTR_DAT_05e5dc20);
    func_0x029f5a50(PTR_DAT_05e5e4d8);
    func_0x029f5a50(PTR_DAT_05e5d4e8);
    func_0x029f5a50(PTR_DAT_05e626d0);
    func_0x029f5a50(PTR_DAT_05e59050);
    bRam000000000625beec = 1;
  }
  puVar3 = PTR_DAT_05e58a78;
  lVar13 = func_0x029f5cec(*(undefined8 *)puVar4);
  SaveData__ctor_0x6000480();
  if (*(int *)(*plVar25 + 0xe4) == 0) {
    func_0x029f5bd0();
  }
  Time_manager_Touch_0x600057d(0);
  if (*(int *)(*(long *)puVar3 + 0xe4) == 0) {
    func_0x029f5bd0();
  }
  uVar14 = Application_get_version_0x6000232(0);
  if (lVar13 == 0) goto LAB_02c16154;
  *(undefined8 *)(lVar13 + 0x10) = uVar14;
  Managed_WriteBarrier((undefined8 *)(lVar13 + 0x10),uVar14);
  cVar9 = cRam000000000625befc;
  lVar15 = *plVar25;
  uVar2 = *(undefined1 *)(*(long *)(lVar15 + 0xb8) + 0x18);
  *(undefined8 *)(lVar13 + 0xb8) = *(undefined8 *)(*(long *)(lVar15 + 0xb8) + 0x10);
  *(undefined1 *)(lVar13 + 0xc0) = uVar2;
  if (cVar9 == '\0') {
    func_0x029f5a50(plVar25);
    lVar15 = *plVar25;
    cRam000000000625befc = '\x01';
  }
  puVar4 = PTR_DAT_05e5d338;
  if (*(int *)(lVar15 + 0xe4) == 0) {
    func_0x029f5bd0();
    lVar15 = *plVar25;
  }
  *(undefined8 *)(lVar13 + 200) = *(undefined8 *)(*(long *)(lVar15 + 0xb8) + 0x28);
  Managed_WriteBarrier();
  lVar15 = *(long *)puVar4;
  if (*(int *)(lVar15 + 0xe4) == 0) {
    func_0x029f5bd0();
    lVar15 = *(long *)puVar4;
  }
  puVar3 = PTR_DAT_05e62630;
  lVar15 = *(long *)(lVar15 + 0xb8);
  uVar34 = *(undefined8 *)(lVar15 + 0x38);
  uVar33 = *(undefined8 *)(lVar15 + 0x30);
  uVar14 = *(undefined8 *)(lVar15 + 0x40);
  *(undefined8 *)(lVar13 + 0x30) = *(undefined8 *)(lVar15 + 0x48);
  *(undefined8 *)(lVar13 + 0x28) = uVar14;
  *(undefined8 *)(lVar13 + 0x20) = uVar34;
  *(undefined8 *)(lVar13 + 0x18) = uVar33;
  Managed_WriteBarrier(lVar13 + 0x18,0);
  lVar15 = *(long *)(*(long *)puVar4 + 0xb8);
  uVar14 = *(undefined8 *)(lVar15 + 0x50);
  uVar34 = *(undefined8 *)(lVar15 + 0x68);
  uVar33 = *(undefined8 *)(lVar15 + 0x60);
  *(undefined8 *)(lVar13 + 0x40) = *(undefined8 *)(lVar15 + 0x58);
  *(undefined8 *)(lVar13 + 0x38) = uVar14;
  *(undefined8 *)(lVar13 + 0x50) = uVar34;
  *(undefined8 *)(lVar13 + 0x48) = uVar33;
  Managed_WriteBarrier(lVar13 + 0x38,0);
  lVar15 = *(long *)(*(long *)puVar4 + 0xb8);
  uVar14 = *(undefined8 *)(lVar15 + 0x70);
  uVar34 = *(undefined8 *)(lVar15 + 0x88);
  uVar33 = *(undefined8 *)(lVar15 + 0x80);
  *(undefined8 *)(lVar13 + 0x60) = *(undefined8 *)(lVar15 + 0x78);
  *(undefined8 *)(lVar13 + 0x58) = uVar14;
  *(undefined8 *)(lVar13 + 0x70) = uVar34;
  *(undefined8 *)(lVar13 + 0x68) = uVar33;
  Managed_WriteBarrier(lVar13 + 0x58,0);
  uVar12 = ObscuredInt_op_Implicit_0x6000412
                     (*(undefined8 *)(*(long *)(*(long *)puVar4 + 0xb8) + 0x90),
                      *(undefined8 *)(*(long *)(*(long *)puVar4 + 0xb8) + 0x98),0);
  lVar15 = *(long *)puVar4;
  *(undefined4 *)(lVar13 + 0x78) = uVar12;
  uVar12 = ObscuredInt_op_Implicit_0x6000412
                     (*(undefined8 *)(*(long *)(lVar15 + 0xb8) + 0xa0),
                      *(undefined8 *)(*(long *)(lVar15 + 0xb8) + 0xa8),0);
  lVar15 = *(long *)puVar4;
  *(undefined4 *)(lVar13 + 0x7c) = uVar12;
  uVar12 = ObscuredInt_op_Implicit_0x6000412
                     (*(undefined8 *)(*(long *)(lVar15 + 0xb8) + 0xb0),
                      *(undefined8 *)(*(long *)(lVar15 + 0xb8) + 0xb8),0);
  lVar15 = *(long *)puVar4;
  *(undefined4 *)(lVar13 + 0x80) = uVar12;
  lVar15 = *(long *)(lVar15 + 0xb8);
  uVar12 = *(undefined4 *)(lVar15 + 0x15c);
  uVar2 = *(undefined1 *)(lVar15 + 0xd0);
  *(undefined4 *)(lVar13 + 0x84) = *(undefined4 *)(lVar15 + 0xc0);
  *(undefined4 *)(lVar13 + 0x8c) = uVar12;
  *(undefined1 *)(lVar13 + 0x90) = uVar2;
  uVar12 = ObscuredInt_op_Implicit_0x6000412
                     (*(undefined8 *)(lVar15 + 0xf0),*(undefined8 *)(lVar15 + 0xf8),0);
  lVar15 = *(long *)puVar4;
  *(undefined4 *)(lVar13 + 0x94) = uVar12;
  *(undefined8 *)(lVar13 + 0x98) = *(undefined8 *)(*(long *)(lVar15 + 0xb8) + 0x100);
  Managed_WriteBarrier();
  *(undefined8 *)(lVar13 + 0xa0) = *(undefined8 *)(*(long *)(*(long *)puVar4 + 0xb8) + 0xd8);
  Managed_WriteBarrier();
  *(undefined8 *)(lVar13 + 0xa8) = *(undefined8 *)(*(long *)(*(long *)puVar4 + 0xb8) + 0xe0);
  Managed_WriteBarrier();
  *(undefined8 *)(lVar13 + 0xb0) = *(undefined8 *)(*(long *)(*(long *)puVar4 + 0xb8) + 0xe8);
  Managed_WriteBarrier();
  puVar5 = PTR_DAT_05e626b8;
  lVar15 = *(long *)(*(long *)(*plVar25 + 0xb8) + 0x20);
  if (lVar15 == 0) {
    uVar14 = func_0x029f5cec(*(undefined8 *)puVar3);
    func_0x0452c340(uVar14,*(undefined8 *)PTR_DAT_05e62618);
  }
  else {
    if (*(int *)(*plVar25 + 0xe4) == 0) {
      func_0x029f5bd0();
      lVar15 = *(long *)(*(long *)(*plVar25 + 0xb8) + 0x20);
    }
    uVar14 = func_0x029f5cec(*(undefined8 *)puVar3);
    func_0x0452c47c(uVar14,lVar15,*(undefined8 *)puVar5);
  }
  puVar3 = PTR_DAT_05e62640;
  *(undefined8 *)(lVar13 + 0xd0) = uVar14;
  Managed_WriteBarrier((undefined8 *)(lVar13 + 0xd0),uVar14);
  lVar15 = *(long *)puVar4;
  if (*(int *)(lVar15 + 0xe4) == 0) {
    func_0x029f5bd0();
    lVar15 = *(long *)puVar4;
  }
  puVar5 = PTR_DAT_05e5d4e8;
  uVar12 = ObscuredInt_op_Implicit_0x6000412
                     (*(undefined8 *)(*(long *)(lVar15 + 0xb8) + 0x128),
                      *(undefined8 *)(*(long *)(lVar15 + 0xb8) + 0x130),0);
  lVar15 = *(long *)puVar4;
  *(undefined4 *)(lVar13 + 0xd8) = uVar12;
  *(undefined8 *)(lVar13 + 0xe0) = *(undefined8 *)(*(long *)(lVar15 + 0xb8) + 0x138);
  Managed_WriteBarrier();
  *(undefined8 *)(lVar13 + 0xe8) = *(undefined8 *)(*(long *)(*(long *)puVar4 + 0xb8) + 0x140);
  Managed_WriteBarrier();
  lVar15 = *(long *)puVar3;
  if (*(int *)(lVar15 + 0xe4) == 0) {
    func_0x029f5bd0();
    lVar15 = *(long *)puVar3;
  }
  *(undefined8 *)(lVar13 + 0xf0) = *(undefined8 *)(*(long *)(lVar15 + 0xb8) + 8);
  Managed_WriteBarrier();
  lVar15 = *(long *)puVar5;
  if (*(int *)(lVar15 + 0xe4) == 0) {
    func_0x029f5bd0();
    lVar15 = *(long *)puVar5;
  }
  puVar4 = PTR_DAT_05e5dd60;
  if (**(long **)(lVar15 + 0xb8) == 0) goto LAB_02c16154;
  uVar14 = Upgrade_manager_SaveData_return_0x6000f90(**(long **)(lVar15 + 0xb8),0);
  *(undefined8 *)(lVar13 + 0x108) = uVar14;
  Managed_WriteBarrier(lVar13 + 0x108,uVar14);
  *(undefined8 *)(lVar13 + 0x110) = *(undefined8 *)(*(long *)(*(long *)puVar5 + 0xb8) + 8);
  Managed_WriteBarrier(lVar13 + 0x110);
  lVar15 = **(long **)(*(long *)puVar4 + 0xb8);
  *(undefined4 *)(lVar13 + 0x118) = *(undefined4 *)(*(long *)(*(long *)puVar5 + 0xb8) + 0x10);
  if (lVar15 == 0) goto LAB_02c16154;
  uVar14 = Rebirth_manager_SaveData_return_0x6000c8d(lVar15,0);
  *(undefined8 *)(lVar13 + 0x120) = uVar14;
  Managed_WriteBarrier(lVar13 + 0x120,uVar14);
  lVar15 = **(long **)(*(long *)puVar4 + 0xb8);
  if (lVar15 == 0) goto LAB_02c16154;
  uVar14 = *(undefined8 *)(lVar15 + 0x58);
  puVar28 = (undefined8 *)(lVar13 + 300);
  *(undefined4 *)(lVar13 + 0x128) = *(undefined4 *)(lVar15 + 0x30);
  puVar4 = PTR_DAT_05e5dd40;
  uVar33 = *(undefined8 *)(lVar15 + 0x4c);
  *(undefined8 *)(lVar13 + 0x138) = uVar14;
  *puVar28 = uVar33;
  Managed_WriteBarrier(lVar13 + 0x138);
  if (**(long **)(*(long *)puVar4 + 0xb8) == 0) goto LAB_02c16154;
  *(undefined8 *)(lVar13 + 0x140) = *(undefined8 *)(**(long **)(*(long *)puVar4 + 0xb8) + 0x28);
  Managed_WriteBarrier(lVar13 + 0x140);
  if (**(long **)(*(long *)puVar4 + 0xb8) == 0) goto LAB_02c16154;
  *(undefined8 *)(lVar13 + 0x148) = *(undefined8 *)(**(long **)(*(long *)puVar4 + 0xb8) + 0x30);
  Managed_WriteBarrier(lVar13 + 0x148);
  if (**(long **)(*(long *)puVar4 + 0xb8) == 0) goto LAB_02c16154;
  *(undefined8 *)(lVar13 + 0x150) = *(undefined8 *)(**(long **)(*(long *)puVar4 + 0xb8) + 0x40);
  Managed_WriteBarrier(lVar13 + 0x150);
  puVar3 = PTR_DAT_05e5d790;
  if ((**(long **)(*(long *)puVar4 + 0xb8) == 0) ||
     (lVar15 = *(long *)(**(long **)(*(long *)puVar4 + 0xb8) + 0x38), lVar15 == 0))
  goto LAB_02c16154;
  plVar16 = (long *)Array_Clone_0x6000ccb(lVar15,0);
  if (plVar16 != (long *)0x0) {
    plVar27 = *(long **)puVar3;
    lVar15 = func_0x029f5bd4(plVar16,plVar27);
    if (lVar15 != 0) {
      plVar27 = *(long **)puVar3;
      *(long *)(lVar13 + 0x158) = lVar15;
      lVar15 = func_0x029f5bd4(plVar16,plVar27);
      if (lVar15 != 0) goto LAB_02c15288;
    }
    goto LAB_02c16818;
  }
  lVar15 = 0;
  *(undefined8 *)(lVar13 + 0x158) = 0;
LAB_02c15288:
  Managed_WriteBarrier(lVar13 + 0x158,lVar15);
  lVar15 = **(long **)(*(long *)puVar4 + 0xb8);
  if (lVar15 == 0) goto LAB_02c16154;
  uVar14 = *(undefined8 *)(lVar15 + 200);
  uVar2 = *(undefined1 *)(lVar15 + 0xd8);
  *(undefined8 *)(lVar13 + 0x160) = *(undefined8 *)(lVar15 + 0xc0);
  uVar12 = *(undefined4 *)(lVar15 + 0xd4);
  *(undefined8 *)(lVar13 + 0x168) = uVar14;
  *(undefined1 *)(lVar13 + 0x174) = uVar2;
  *(undefined4 *)(lVar13 + 0x170) = uVar12;
  *(undefined2 *)(lVar13 + 0x175) = *(undefined2 *)(lVar15 + 0xe8);
  *(undefined8 *)(lVar13 + 0x178) = *(undefined8 *)(lVar15 + 0xb8);
  Managed_WriteBarrier(lVar13 + 0x178);
  if (**(long **)(*(long *)puVar4 + 0xb8) == 0) goto LAB_02c16154;
  Gun_manager_Pause_Array_Validate_0x6000a4a(**(long **)(*(long *)puVar4 + 0xb8),0);
  puVar3 = PTR_DAT_05e626b0;
  if ((**(long **)(*(long *)puVar4 + 0xb8) == 0) ||
     (lVar15 = *(long *)(**(long **)(*(long *)puVar4 + 0xb8) + 0x60), lVar15 == 0))
  goto LAB_02c16154;
  plVar16 = (long *)Array_Clone_0x6000ccb(lVar15,0);
  if (plVar16 != (long *)0x0) {
    plVar27 = *(long **)puVar3;
    lVar15 = func_0x029f5bd4(plVar16,plVar27);
    if (lVar15 != 0) {
      plVar27 = *(long **)puVar3;
      *(long *)(lVar13 + 0x180) = lVar15;
      lVar15 = func_0x029f5bd4(plVar16,plVar27);
      if (lVar15 != 0) goto LAB_02c15360;
    }
    goto LAB_02c16818;
  }
  lVar15 = 0;
  *(undefined8 *)(lVar13 + 0x180) = 0;
LAB_02c15360:
  Managed_WriteBarrier(lVar13 + 0x180,lVar15);
  if ((**(long **)(*(long *)puVar4 + 0xb8) == 0) ||
     (lVar15 = *(long *)(**(long **)(*(long *)puVar4 + 0xb8) + 0x68), lVar15 == 0))
  goto LAB_02c16154;
  plVar16 = (long *)Array_Clone_0x6000ccb(lVar15,0);
  if (plVar16 != (long *)0x0) {
    plVar27 = *(long **)puVar3;
    lVar15 = func_0x029f5bd4(plVar16,plVar27);
    if (lVar15 != 0) {
      plVar27 = *(long **)puVar3;
      *(long *)(lVar13 + 0x188) = lVar15;
      lVar15 = func_0x029f5bd4(plVar16,plVar27);
      if (lVar15 != 0) goto LAB_02c153cc;
    }
    goto LAB_02c16818;
  }
  lVar15 = 0;
  *(undefined8 *)(lVar13 + 0x188) = 0;
LAB_02c153cc:
  puVar4 = PTR_DAT_05e62648;
  plVar32 = (long *)PTR_DAT_05e591c0;
  Managed_WriteBarrier(lVar13 + 0x188,lVar15);
  uVar14 = **(undefined8 **)(*(long *)puVar4 + 0xb8);
  if (*(int *)(*plVar32 + 0xe4) == 0) {
    func_0x029f5bd0();
  }
  uVar17 = Object_op_Inequality_0x6000ded(uVar14,0,0);
  if ((uVar17 & 1) != 0) {
    if ((**(long **)(*(long *)puVar4 + 0xb8) == 0) ||
       (lVar15 = *(long *)(**(long **)(*(long *)puVar4 + 0xb8) + 0x20), lVar15 == 0))
    goto LAB_02c16154;
    plVar16 = (long *)Array_Clone_0x6000ccb(lVar15,0);
    puVar3 = PTR_DAT_05e5d790;
    if (plVar16 == (long *)0x0) {
      lVar15 = 0;
      *(undefined8 *)(lVar13 + 400) = 0;
LAB_02c15480:
      Managed_WriteBarrier(lVar13 + 400,lVar15);
      if (**(long **)(*(long *)puVar4 + 0xb8) == 0) goto LAB_02c16154;
      *(undefined4 *)(lVar13 + 0x198) = *(undefined4 *)(**(long **)(*(long *)puVar4 + 0xb8) + 0x28);
      goto LAB_02c1549c;
    }
    plVar27 = *(long **)PTR_DAT_05e5d790;
    lVar15 = func_0x029f5bd4(plVar16,plVar27);
    if (lVar15 != 0) {
      plVar27 = *(long **)puVar3;
      *(long *)(lVar13 + 400) = lVar15;
      lVar15 = func_0x029f5bd4(plVar16,plVar27);
      if (lVar15 != 0) goto LAB_02c15480;
    }
    goto LAB_02c16818;
  }
LAB_02c1549c:
  puVar4 = PTR_DAT_05e5d4d0;
  lVar15 = *(long *)PTR_DAT_05e5d4d0;
  if (*(int *)(lVar15 + 0xe4) == 0) {
    func_0x029f5bd0();
    lVar15 = *(long *)puVar4;
  }
  lVar15 = *(long *)(*(long *)(lVar15 + 0xb8) + 0x28);
  if (lVar15 == 0) goto LAB_02c16154;
  *(undefined8 *)(lVar13 + 0x1a0) = *(undefined8 *)(lVar15 + 0x30);
  Managed_WriteBarrier(lVar13 + 0x1a0);
  lVar15 = *(long *)(*(long *)(*(long *)puVar4 + 0xb8) + 0x28);
  if (lVar15 == 0) goto LAB_02c16154;
  *(undefined8 *)(lVar13 + 0x1a8) = *(undefined8 *)(lVar15 + 0x28);
  Managed_WriteBarrier(lVar13 + 0x1a8);
  lVar15 = *(long *)(*(long *)(*(long *)puVar4 + 0xb8) + 0x28);
  if (lVar15 == 0) goto LAB_02c16154;
  *(undefined8 *)(lVar13 + 0x1b0) = *(undefined8 *)(lVar15 + 0x38);
  Managed_WriteBarrier(lVar13 + 0x1b0);
  lVar15 = *(long *)(*(long *)(*(long *)puVar4 + 0xb8) + 0x28);
  if (lVar15 == 0) goto LAB_02c16154;
  *(undefined8 *)(lVar13 + 0x1b8) = *(undefined8 *)(lVar15 + 0x40);
  Managed_WriteBarrier(lVar13 + 0x1b8);
  lVar15 = *(long *)(*(long *)(*(long *)puVar4 + 0xb8) + 0x28);
  if (lVar15 == 0) goto LAB_02c16154;
  *(undefined8 *)(lVar13 + 0x1c0) = *(undefined8 *)(lVar15 + 0x48);
  Managed_WriteBarrier(lVar13 + 0x1c0);
  puVar3 = PTR_DAT_05e5dc20;
  lVar15 = *(long *)(*(long *)(*(long *)puVar4 + 0xb8) + 0x28);
  if (lVar15 == 0) goto LAB_02c16154;
  *(undefined8 *)(lVar13 + 0x1c8) = *(undefined8 *)(lVar15 + 0xb8);
  Managed_WriteBarrier(lVar13 + 0x1c8);
  lVar15 = *(long *)puVar3;
  if (*(int *)(lVar15 + 0xe4) == 0) {
    func_0x029f5bd0();
    lVar15 = *(long *)puVar3;
  }
  puVar3 = PTR_DAT_05e5ed78;
  puVar4 = PTR_DAT_05e5a8a0;
  lVar15 = *(long *)(*(long *)(lVar15 + 0xb8) + 0x10);
  if (lVar15 == 0) goto LAB_02c16154;
  *(undefined8 *)(lVar13 + 0x1d0) = *(undefined8 *)(lVar15 + 0x28);
  puVar5 = PTR_DAT_05e5dd68;
  uVar14 = *(undefined8 *)puVar4;
  uVar33 = *(undefined8 *)(lVar15 + 0x48);
  *(undefined4 *)(lVar13 + 0x1d8) = *(undefined4 *)(lVar15 + 0x30);
  uVar14 = func_0x029f5cec(uVar14);
  func_0x0452c47c(uVar14,uVar33,*(undefined8 *)puVar3);
  *(undefined8 *)(lVar13 + 0x1e0) = uVar14;
  Managed_WriteBarrier(lVar13 + 0x1e0,uVar14);
  lVar15 = *(long *)puVar5;
  if (*(int *)(lVar15 + 0xe4) == 0) {
    func_0x029f5bd0();
    lVar15 = *(long *)puVar5;
  }
  puVar5 = PTR_DAT_05e5d4e0;
  lVar15 = *(long *)(*(long *)(lVar15 + 0xb8) + 8);
  if (lVar15 == 0) goto LAB_02c16154;
  lVar19 = *(long *)PTR_DAT_05e5d4e0;
  *(undefined4 *)(lVar13 + 0x1e8) = *(undefined4 *)(lVar15 + 0x30);
  lVar15 = *(long *)(*(long *)(lVar19 + 0xb8) + 0x10);
  if (lVar15 == 0) goto LAB_02c16154;
  *(undefined8 *)(lVar13 + 0x1f0) = *(undefined8 *)(lVar15 + 0x28);
  Managed_WriteBarrier(lVar13 + 0x1f0);
  puVar8 = PTR_DAT_05e62628;
  puVar7 = PTR_DAT_05e62620;
  puVar6 = PTR_DAT_05e5d920;
  lVar15 = *(long *)(*(long *)(*(long *)puVar5 + 0xb8) + 0x10);
  if (lVar15 == 0) goto LAB_02c16154;
  lVar19 = *(long *)PTR_DAT_05e5d920;
  iVar1 = *(int *)(lVar19 + 0xe4);
  *(undefined4 *)(lVar13 + 0x1f8) = *(undefined4 *)(lVar15 + 0x30);
  if (iVar1 == 0) {
    func_0x029f5bd0();
    lVar19 = *(long *)puVar6;
  }
  lVar15 = *(long *)(lVar19 + 0xb8);
  uVar14 = *(undefined8 *)puVar4;
  *(undefined4 *)(lVar13 + 0x1fc) = *(undefined4 *)(lVar15 + 8);
  *(undefined2 *)(lVar13 + 0x200) = *(undefined2 *)(lVar15 + 0xc);
  uVar33 = *(undefined8 *)(lVar15 + 0x40);
  *(undefined4 *)(lVar13 + 0x204) = *(undefined4 *)(lVar15 + 0x38);
  uVar14 = func_0x029f5cec(uVar14);
  func_0x0452c47c(uVar14,uVar33,*(undefined8 *)puVar3);
  *(undefined8 *)(lVar13 + 0x208) = uVar14;
  Managed_WriteBarrier(lVar13 + 0x208,uVar14);
  uVar33 = *(undefined8 *)(*(long *)(*(long *)puVar6 + 0xb8) + 0x48);
  uVar14 = func_0x029f5cec(*(undefined8 *)puVar8);
  func_0x044f72bc(uVar14,uVar33,*(undefined8 *)puVar7);
  *(undefined8 *)(lVar13 + 0x210) = uVar14;
  Managed_WriteBarrier(lVar13 + 0x210,uVar14);
  lVar15 = *(long *)(*(long *)(*(long *)puVar6 + 0xb8) + 0x28);
  if (lVar15 == 0) goto LAB_02c16154;
  plVar16 = (long *)Array_Clone_0x6000ccb(lVar15,0);
  puVar4 = PTR_DAT_05e626b0;
  if (plVar16 != (long *)0x0) {
    plVar27 = *(long **)PTR_DAT_05e626b0;
    lVar15 = func_0x029f5bd4(plVar16,plVar27);
    if (lVar15 != 0) {
      plVar27 = *(long **)puVar4;
      *(long *)(lVar13 + 0x390) = lVar15;
      lVar15 = func_0x029f5bd4(plVar16,plVar27);
      if (lVar15 != 0) goto LAB_02c15768;
    }
    goto LAB_02c16818;
  }
  lVar15 = 0;
  *(undefined8 *)(lVar13 + 0x390) = 0;
LAB_02c15768:
  puVar4 = PTR_DAT_05e62668;
  Managed_WriteBarrier(lVar13 + 0x390,lVar15);
  lVar15 = **(long **)(*(long *)puVar4 + 0xb8);
  *(undefined4 *)(lVar13 + 0x398) = 1;
  puVar4 = PTR_DAT_05e62670;
  if (lVar15 == 0) goto LAB_02c16154;
  uVar14 = DiaPig_GetSaveData_0x6000cee(lVar15,0);
  *(undefined8 *)(lVar13 + 0x220) = uVar14;
  Managed_WriteBarrier(lVar13 + 0x220,uVar14);
  puVar3 = PTR_DAT_05e5d498;
  lVar15 = *(long *)(*(long *)(*(long *)puVar4 + 0xb8) + 8);
  if (lVar15 == 0) goto LAB_02c16154;
  *(undefined1 *)(lVar13 + 0x228) = *(undefined1 *)(lVar15 + 0x20);
  lVar19 = *(long *)puVar3;
  *(undefined2 *)(lVar13 + 0x229) = *(undefined2 *)(lVar15 + 0x21);
  if (**(long **)(lVar19 + 0xb8) == 0) goto LAB_02c16154;
  *(undefined8 *)(lVar13 + 0x238) = *(undefined8 *)(**(long **)(lVar19 + 0xb8) + 0x28);
  Managed_WriteBarrier(lVar13 + 0x238);
  if (**(long **)(*(long *)puVar3 + 0xb8) == 0) goto LAB_02c16154;
  *(undefined8 *)(lVar13 + 0x240) = *(undefined8 *)(**(long **)(*(long *)puVar3 + 0xb8) + 0x30);
  Managed_WriteBarrier(lVar13 + 0x240);
  puVar4 = PTR_DAT_05e5e4d8;
  if (**(long **)(*(long *)puVar3 + 0xb8) == 0) goto LAB_02c16154;
  *(undefined8 *)(lVar13 + 0x248) = *(undefined8 *)(**(long **)(*(long *)puVar3 + 0xb8) + 0x38);
  Managed_WriteBarrier(lVar13 + 0x248);
  if (**(long **)(*(long *)puVar4 + 0xb8) == 0) goto LAB_02c16154;
  plVar16 = *(long **)(*(long *)PTR_DAT_05e5e4f8 + 0xb8);
  *(bool *)(lVar13 + 0x3c9) = *(int *)(**(long **)(*(long *)puVar4 + 0xb8) + 0x60) == 5;
  lVar15 = *plVar16;
  if (lVar15 == 0) goto LAB_02c16154;
  *(undefined8 *)(lVar13 + 600) = *(undefined8 *)(lVar15 + 0x30);
  puVar3 = PTR_DAT_05e625c8;
  uVar14 = LoadData_ToStringSafe_0x600047f(*(undefined8 *)(lVar15 + 0x28),0);
  *(undefined8 *)(lVar13 + 0x250) = uVar14;
  Managed_WriteBarrier(lVar13 + 0x250,uVar14);
  uVar14 = LoadData_ToStringSafe_0x600047f(*(undefined8 *)(lVar15 + 0x78),0);
  *(undefined8 *)(lVar13 + 0x260) = uVar14;
  Managed_WriteBarrier(lVar13 + 0x260,uVar14);
  puVar4 = PTR_DAT_05e5dd38;
  if (**(long **)(*(long *)puVar3 + 0xb8) == 0) goto LAB_02c16154;
  lVar15 = *(long *)PTR_DAT_05e5dd38;
  *(undefined1 *)(lVar13 + 0x3c8) = *(undefined1 *)(**(long **)(*(long *)puVar3 + 0xb8) + 0x20);
  lVar15 = **(long **)(lVar15 + 0xb8);
  if (lVar15 == 0) goto LAB_02c16154;
  *(undefined4 *)(lVar13 + 0x278) = *(undefined4 *)(lVar15 + 0x78);
  uVar14 = LoadData_ToStringSafe_0x600047f(*(undefined8 *)(lVar15 + 0x70),0);
  *(undefined8 *)(lVar13 + 0x270) = uVar14;
  Managed_WriteBarrier(lVar13 + 0x270,uVar14);
  puVar3 = PTR_DAT_05e5dd48;
  if (**(long **)(*(long *)puVar4 + 0xb8) == 0) goto LAB_02c16154;
  uVar33 = *(undefined8 *)(**(long **)(*(long *)puVar4 + 0xb8) + 0x90);
  uVar14 = func_0x029f5cec(*(undefined8 *)puVar8);
  func_0x044f72bc(uVar14,uVar33,*(undefined8 *)puVar7);
  *(undefined8 *)(lVar13 + 0x280) = uVar14;
  Managed_WriteBarrier(lVar13 + 0x280,uVar14);
  lVar15 = **(long **)(*(long *)puVar3 + 0xb8);
  if (lVar15 == 0) goto LAB_02c16154;
  uVar14 = LoadData_ToStringSafe_0x600047f(*(undefined8 *)(lVar15 + 0x58),0);
  *(undefined8 *)(lVar13 + 0x290) = uVar14;
  Managed_WriteBarrier(lVar13 + 0x290,uVar14);
  puVar4 = PTR_DAT_05e5e070;
  lVar15 = **(long **)(*(long *)puVar3 + 0xb8);
  if (lVar15 == 0) goto LAB_02c16154;
  uVar12 = *(undefined4 *)(lVar15 + 0x60);
  lVar19 = *(long *)PTR_DAT_05e5e070;
  *(undefined4 *)(lVar13 + 0x288) = *(undefined4 *)(lVar15 + 0x50);
  *(undefined4 *)(lVar13 + 0x298) = uVar12;
  if (*(int *)(lVar19 + 0xe4) == 0) {
    func_0x029f5bd0();
    lVar19 = *(long *)puVar4;
  }
  lVar15 = **(long **)(lVar19 + 0xb8);
  if (*(int *)(*plVar32 + 0xe4) == 0) {
    func_0x029f5bd0(*plVar32);
  }
  uVar17 = Object_op_Inequality_0x6000ded(lVar15,0,0);
  if ((uVar17 & 1) != 0) {
    if (lVar15 == 0) goto LAB_02c16154;
    uVar14 = LoadData_ToStringSafe_0x600047f(*(undefined8 *)(lVar15 + 0x68),0);
    *(undefined8 *)(lVar13 + 0x2a0) = uVar14;
    Managed_WriteBarrier(lVar13 + 0x2a0,uVar14);
    *(undefined4 *)(lVar13 + 0x2a8) = *(undefined4 *)(lVar15 + 0x70);
    *(undefined2 *)(lVar13 + 0x2ac) = *(undefined2 *)(lVar15 + 0x74);
    *(undefined8 *)(lVar13 + 0x2b0) = *(undefined8 *)(lVar15 + 0x78);
    *(undefined4 *)(lVar13 + 0x2b8) = *(undefined4 *)(lVar15 + 0x80);
    uVar14 = Raid_manager_SaveBest_return_0x600092d(lVar15,0);
    *(undefined8 *)(lVar13 + 0x2c0) = uVar14;
    Managed_WriteBarrier(lVar13 + 0x2c0,uVar14);
    *(undefined4 *)(lVar13 + 0x424) = *(undefined4 *)(lVar15 + 0x100);
  }
  puVar4 = PTR_DAT_05e5dd30;
  lVar15 = *(long *)PTR_DAT_05e5dd30;
  if (*(int *)(lVar15 + 0xe4) == 0) {
    func_0x029f5bd0();
    lVar15 = *(long *)puVar4;
  }
  puVar4 = PTR_DAT_05e5dd58;
  lVar15 = *(long *)(*(long *)(lVar15 + 0xb8) + 8);
  if (lVar15 == 0) goto LAB_02c16154;
  lVar19 = *(long *)PTR_DAT_05e5dd58;
  *(undefined4 *)(lVar13 + 0x2c8) = *(undefined4 *)(lVar15 + 0x20);
  if (*(int *)(lVar19 + 0xe4) == 0) {
    func_0x029f5bd0();
    lVar19 = *(long *)puVar4;
  }
  puVar4 = PTR_DAT_05e5dd50;
  lVar15 = *(long *)(*(long *)(lVar19 + 0xb8) + 8);
  if (lVar15 == 0) goto LAB_02c16154;
  lVar19 = *(long *)PTR_DAT_05e5dd50;
  *(undefined8 *)(lVar13 + 0x2cc) = *(undefined8 *)(lVar15 + 0x20);
  if (*(int *)(lVar19 + 0xe4) == 0) {
    func_0x029f5bd0();
    lVar19 = *(long *)puVar4;
  }
  puVar4 = PTR_DAT_05e626b0;
  puVar18 = *(undefined2 **)(lVar19 + 0xb8);
  lVar15 = *(long *)(puVar18 + 4);
  if (lVar15 == 0) goto LAB_02c16154;
  uVar2 = *(undefined1 *)(lVar15 + 100);
  *(undefined8 *)(lVar13 + 0x2d4) = *(undefined8 *)(lVar15 + 0x48);
  uVar12 = *(undefined4 *)(lVar15 + 0x60);
  *(undefined1 *)(lVar13 + 0x324) = uVar2;
  *(undefined4 *)(lVar13 + 800) = uVar12;
  uVar33 = *(undefined8 *)(lVar15 + 0x58);
  uVar14 = *(undefined8 *)(lVar15 + 0x50);
  *(undefined1 *)(lVar13 + 0x2ec) = *(undefined1 *)(lVar15 + 0x65);
  *(undefined8 *)(lVar13 + 0x2e4) = uVar33;
  *(undefined8 *)(lVar13 + 0x2dc) = uVar14;
  *(undefined2 *)(lVar13 + 0x2ed) = *puVar18;
  uVar14 = LoadData_ToStringSafe_0x600047f(*(undefined8 *)(lVar15 + 0x68),0);
  *(undefined8 *)(lVar13 + 0x2f0) = uVar14;
  Managed_WriteBarrier(lVar13 + 0x2f0,uVar14);
  uVar14 = LoadData_ToStringSafe_0x600047f(*(undefined8 *)(lVar15 + 0x70),0);
  *(undefined8 *)(lVar13 + 0x2f8) = uVar14;
  Managed_WriteBarrier(lVar13 + 0x2f8,uVar14);
  if (*(long *)(lVar15 + 0x20) == 0) goto LAB_02c16154;
  uVar14 = func_0x029f5b40(*(undefined8 *)puVar4,*(undefined4 *)(*(long *)(lVar15 + 0x20) + 0x18));
  plVar27 = (long *)(lVar13 + 0x300);
  *(undefined8 *)(lVar13 + 0x300) = uVar14;
  Managed_WriteBarrier(plVar27,uVar14);
  if (*(long *)(lVar15 + 0x20) == 0) goto LAB_02c16154;
  uVar14 = func_0x029f5b40(*(undefined8 *)puVar4,*(undefined4 *)(*(long *)(lVar15 + 0x20) + 0x18));
  *(undefined8 *)(lVar13 + 0x308) = uVar14;
  Managed_WriteBarrier((long *)(lVar13 + 0x308),uVar14);
  lVar19 = *(long *)(lVar15 + 0x20);
  if (lVar19 == 0) goto LAB_02c16154;
  uVar31 = *(uint *)(lVar19 + 0x18);
  if (0 < (int)uVar31) {
    lVar20 = *plVar27;
    uVar22 = 0;
    do {
      if (uVar31 == uVar22) goto LAB_02c16808;
      lVar21 = (long)(int)uVar22;
      lVar23 = *(long *)(lVar19 + lVar21 * 8 + 0x20);
      if ((lVar23 == 0) || (lVar20 == 0)) goto LAB_02c16154;
      if (*(uint *)(lVar20 + 0x18) <= uVar22) goto LAB_02c16808;
      lVar24 = *(long *)(lVar13 + 0x308);
      *(undefined1 *)(lVar20 + lVar21 + 0x20) = *(undefined1 *)(lVar23 + 0x24);
      if (lVar24 == 0) goto LAB_02c16154;
      if (*(uint *)(lVar24 + 0x18) <= uVar22) goto LAB_02c16808;
      uVar22 = uVar22 + 1;
      *(undefined1 *)(lVar24 + lVar21 + 0x20) = *(undefined1 *)(lVar23 + 0x25);
    } while ((uVar31 & ((int)uVar31 >> 0x1f ^ 0xffffffffU)) != uVar22);
  }
  if (*(long *)(lVar15 + 0x38) == 0) goto LAB_02c16154;
  plVar16 = (long *)Array_Clone_0x6000ccb(*(long *)(lVar15 + 0x38),0);
  if (plVar16 != (long *)0x0) {
    plVar27 = *(long **)puVar4;
    lVar19 = func_0x029f5bd4(plVar16,plVar27);
    if (lVar19 != 0) {
      plVar27 = *(long **)puVar4;
      *(long *)(lVar13 + 0x310) = lVar19;
      lVar19 = func_0x029f5bd4(plVar16,plVar27);
      if (lVar19 != 0) goto LAB_02c15c78;
    }
    goto LAB_02c16818;
  }
  lVar19 = 0;
  *(undefined8 *)(lVar13 + 0x310) = 0;
LAB_02c15c78:
  Managed_WriteBarrier(lVar13 + 0x310,lVar19);
  if (*(long *)(lVar15 + 0x40) == 0) goto LAB_02c16154;
  plVar16 = (long *)Array_Clone_0x6000ccb(*(long *)(lVar15 + 0x40),0);
  if (plVar16 != (long *)0x0) {
    plVar27 = *(long **)puVar4;
    lVar15 = func_0x029f5bd4(plVar16,plVar27);
    if (lVar15 != 0) {
      plVar27 = *(long **)puVar4;
      *(long *)(lVar13 + 0x318) = lVar15;
      lVar15 = func_0x029f5bd4(plVar16,plVar27);
      plVar30 = plVar27;
      if (lVar15 != 0) goto LAB_02c15cd4;
    }
    goto LAB_02c16818;
  }
  lVar15 = 0;
  *(undefined8 *)(lVar13 + 0x318) = 0;
  plVar30 = plVar27;
LAB_02c15cd4:
  puVar4 = PTR_DAT_05e5d4c0;
  Managed_WriteBarrier(lVar13 + 0x318,lVar15);
  lVar15 = *(long *)puVar4;
  if (*(int *)(lVar15 + 0xe4) == 0) {
    func_0x029f5bd0();
    lVar15 = *(long *)puVar4;
  }
  if (**(long **)(lVar15 + 0xb8) == 0) goto LAB_02c16154;
  uVar12 = Buff_manager_GetBuffTime_0x6000709(**(long **)(lVar15 + 0xb8),0,0);
  lVar15 = *(long *)puVar4;
  *(undefined4 *)(lVar13 + 0x328) = uVar12;
  if (**(long **)(lVar15 + 0xb8) == 0) goto LAB_02c16154;
  uVar12 = Buff_manager_GetBuffTime_0x6000709(**(long **)(lVar15 + 0xb8),1,0);
  lVar15 = *(long *)puVar4;
  *(undefined4 *)(lVar13 + 0x32c) = uVar12;
  puVar4 = PTR_DAT_05e5dd28;
  if (**(long **)(lVar15 + 0xb8) == 0) goto LAB_02c16154;
  uVar12 = Buff_manager_GetBuffTime_0x6000709(**(long **)(lVar15 + 0xb8),2,0);
  lVar15 = *(long *)puVar4;
  *(undefined4 *)(lVar13 + 0x330) = uVar12;
  if (*(int *)(lVar15 + 0xe4) == 0) {
    func_0x029f5bd0();
    lVar15 = *(long *)puVar4;
  }
  plVar26 = *(long **)(*(long *)(lVar15 + 0xb8) + 0x10);
  if (*(int *)(*plVar32 + 0xe4) == 0) {
    func_0x029f5bd0(*plVar32);
  }
  uVar17 = Object_op_Inequality_0x6000ded(plVar26,0,0);
  puVar4 = PTR_DAT_05e5d790;
  if ((uVar17 & 1) != 0) {
    if ((plVar26 == (long *)0x0) || (plVar26[5] == 0)) goto LAB_02c16154;
    plVar27 = (long *)Array_Clone_0x6000ccb(plVar26[5],0);
    if (plVar27 == (long *)0x0) {
      lVar15 = 0;
      *(undefined8 *)(lVar13 + 0x340) = 0;
      plVar27 = plVar30;
    }
    else {
      puVar28 = *(undefined8 **)puVar4;
      lVar15 = func_0x029f5bd4(plVar27,puVar28);
      if (lVar15 == 0) goto LAB_02c16824;
      puVar28 = *(undefined8 **)puVar4;
      *(long *)(lVar13 + 0x340) = lVar15;
      lVar15 = func_0x029f5bd4(plVar27,puVar28);
      if (lVar15 == 0) goto LAB_02c16824;
    }
    Managed_WriteBarrier(lVar13 + 0x340,lVar15);
    *(long *)(lVar13 + 0x348) = plVar26[6];
    *(int *)(lVar13 + 0x350) = (int)plVar26[0xb];
    uVar14 = LoadData_ToStringSafe_0x600047f(plVar26[0xc],0);
    *(undefined8 *)(lVar13 + 0x358) = uVar14;
    Managed_WriteBarrier(lVar13 + 0x358,uVar14);
    if (plVar26[4] != 0) {
      uVar14 = func_0x029f5b40(*(undefined8 *)PTR_DAT_05e62690,*(undefined4 *)(plVar26[4] + 0x18));
      *(undefined8 *)(lVar13 + 0x338) = uVar14;
      Managed_WriteBarrier();
      puVar4 = PTR_DAT_05e626a8;
      lVar15 = plVar26[4];
      if (lVar15 != 0) {
        uVar31 = 0;
        do {
          if ((int)*(uint *)(lVar15 + 0x18) <= (int)uVar31) goto LAB_02c1600c;
          if (*(uint *)(lVar15 + 0x18) <= uVar31) goto LAB_02c16808;
          lVar15 = *(long *)(lVar15 + (long)(int)uVar31 * 8 + 0x20);
          if (lVar15 == 0) break;
          lVar15 = *(long *)(lVar15 + 0x18);
          puVar28 = (undefined8 *)func_0x029f5cec(*(undefined8 *)PTR_DAT_05e62698);
          Object__ctor_0x600100e(puVar28,0);
          if (lVar15 == 0) {
            uVar14 = func_0x029f5b40(*(undefined8 *)PTR_DAT_05e626a0,0);
            if (puVar28 == (undefined8 *)0x0) break;
            puVar28[2] = uVar14;
            Managed_WriteBarrier();
          }
          else {
            uVar14 = func_0x029f5b40(*(undefined8 *)PTR_DAT_05e626a0,*(undefined4 *)(lVar15 + 0x18))
            ;
            if (puVar28 == (undefined8 *)0x0) break;
            puVar29 = puVar28 + 2;
            *puVar29 = uVar14;
            Managed_WriteBarrier(puVar29,uVar14);
            if (0 < *(int *)(lVar15 + 0x18)) {
              uVar22 = 0;
              plVar27 = (long *)0x20;
              do {
                plVar16 = (long *)*puVar29;
                lVar19 = func_0x029f5cec(*(undefined8 *)puVar4);
                Object__ctor_0x600100e(lVar19,0);
                if (*(uint *)(lVar15 + 0x18) <= uVar22) goto LAB_02c16808;
                lVar20 = *(long *)(lVar15 + (long)plVar27);
                if ((lVar20 == 0) || (lVar19 == 0)) goto LAB_02c16154;
                *(undefined1 *)(lVar19 + 0x10) = *(undefined1 *)(lVar20 + 0x10);
                uVar14 = LoadData_ToStringSafe_0x600047f(*(undefined8 *)(lVar20 + 0x18),0);
                *(undefined8 *)(lVar19 + 0x18) = uVar14;
                Managed_WriteBarrier();
                if (plVar16 == (long *)0x0) goto LAB_02c16154;
                lVar20 = func_0x029f5bd4(lVar19,*(undefined8 *)(*plVar16 + 0x40));
                if (lVar20 == 0) goto LAB_02c1680c;
                if (*(uint *)(plVar16 + 3) <= uVar22) goto LAB_02c16808;
                *(long *)((long)plVar16 + (long)plVar27) = lVar19;
                Managed_WriteBarrier((long)plVar16 + (long)plVar27,lVar19);
                uVar22 = uVar22 + 1;
                plVar27 = plVar27 + 1;
              } while ((int)uVar22 < *(int *)(lVar15 + 0x18));
            }
          }
          plVar25 = *(long **)(lVar13 + 0x338);
          if (plVar25 == (long *)0x0) break;
          lVar15 = func_0x029f5bd4(puVar28,*(undefined8 *)(*plVar25 + 0x40));
          plVar16 = plVar26;
          if (lVar15 == 0) goto LAB_02c1680c;
          if (*(uint *)(plVar25 + 3) <= uVar31) goto LAB_02c16808;
          plVar25[(long)(int)uVar31 + 4] = (long)puVar28;
          Managed_WriteBarrier(plVar25 + (long)(int)uVar31 + 4,puVar28);
          lVar15 = plVar26[4];
          uVar31 = uVar31 + 1;
        } while (lVar15 != 0);
      }
      goto LAB_02c16154;
    }
LAB_02c1600c:
    lVar15 = plVar26[0x10];
    *(int *)(lVar13 + 0x360) = (int)plVar26[0xf];
    *(long *)(lVar13 + 0x368) = lVar15;
    Managed_WriteBarrier(lVar13 + 0x368);
    plVar25 = (long *)PTR_DAT_05e5d3c0;
    plVar32 = (long *)PTR_DAT_05e591c0;
  }
  puVar4 = PTR_DAT_05e5d4d8;
  lVar15 = *(long *)PTR_DAT_05e5d4d8;
  if (*(int *)(lVar15 + 0xe4) == 0) {
    func_0x029f5bd0();
    lVar15 = *(long *)puVar4;
  }
  plVar16 = *(long **)(*(long *)(lVar15 + 0xb8) + 0x70);
  if (*(int *)(*plVar32 + 0xe4) == 0) {
    func_0x029f5bd0(*plVar32);
  }
  uVar17 = Object_op_Inequality_0x6000ded(plVar16,0,0);
  if ((uVar17 & 1) != 0) {
    if (plVar16 == (long *)0x0) goto LAB_02c16154;
    if (plVar16[4] != 0) {
      uVar14 = func_0x029f5b40(*(undefined8 *)PTR_DAT_05e626c0,*(undefined4 *)(plVar16[4] + 0x18));
      plVar27 = (long *)(lVar13 + 0x370);
      *(undefined8 *)(lVar13 + 0x370) = uVar14;
      Managed_WriteBarrier(plVar27,uVar14);
      puVar4 = PTR_DAT_05e626c8;
      lVar15 = plVar16[4];
      if (lVar15 != 0) {
        uVar31 = 0;
        lVar19 = 0x20;
        do {
          if ((int)*(uint *)(lVar15 + 0x18) <= (int)uVar31) goto LAB_02c16158;
          if (*(uint *)(lVar15 + 0x18) <= uVar31) {
LAB_02c16808:
                    /* WARNING: Subroutine does not return */
            Throw_Index_Wrapper();
          }
          lVar15 = *(long *)(lVar15 + lVar19);
          plVar30 = (long *)*plVar27;
          puVar28 = (undefined8 *)func_0x029f5cec(*(undefined8 *)puVar4);
          Object__ctor_0x600100e(puVar28,0);
          if ((lVar15 == 0) || (puVar28 == (undefined8 *)0x0)) break;
          uVar2 = *(undefined1 *)(lVar15 + 0x20);
          puVar28[2] = *(undefined8 *)(lVar15 + 0x18);
          *(undefined1 *)(puVar28 + 3) = uVar2;
          if (plVar30 == (long *)0x0) break;
          lVar15 = func_0x029f5bd4(puVar28,*(undefined8 *)(*plVar30 + 0x40));
          if (lVar15 == 0) goto LAB_02c1680c;
          if (*(uint *)(plVar30 + 3) <= uVar31) goto LAB_02c16808;
          *(undefined8 **)((long)plVar30 + lVar19) = puVar28;
          Managed_WriteBarrier((long)plVar30 + lVar19,puVar28);
          lVar15 = plVar16[4];
          uVar31 = uVar31 + 1;
          lVar19 = lVar19 + 8;
        } while (lVar15 != 0);
      }
      goto LAB_02c16154;
    }
  }
LAB_02c16158:
  puVar3 = PTR_DAT_05e5e058;
  puVar4 = PTR_DAT_05e5d338;
  lVar15 = *(long *)PTR_DAT_05e5d338;
  if (*(int *)(lVar15 + 0xe4) == 0) {
    func_0x029f5bd0();
    lVar15 = *(long *)puVar4;
  }
  lVar19 = *(long *)puVar3;
  iVar1 = *(int *)(lVar19 + 0xe4);
  *(undefined4 *)(lVar13 + 0x88) = *(undefined4 *)(*(long *)(lVar15 + 0xb8) + 0xc4);
  if (iVar1 == 0) {
    func_0x029f5bd0();
    lVar19 = *(long *)puVar3;
  }
  uVar14 = **(undefined8 **)(lVar19 + 0xb8);
  if (*(int *)(*plVar32 + 0xe4) == 0) {
    func_0x029f5bd0(*plVar32);
  }
  uVar17 = Object_op_Inequality_0x6000ded(uVar14,0,0);
  if ((uVar17 & 1) != 0) {
    lVar15 = *(long *)puVar3;
    if (*(int *)(lVar15 + 0xe4) == 0) {
      func_0x029f5bd0();
      lVar15 = *(long *)puVar3;
    }
    if (**(long **)(lVar15 + 0xb8) == 0) goto LAB_02c16154;
    uVar14 = StarUpgrade_manager_SaveLv_return_0x6000ae8(**(long **)(lVar15 + 0xb8),0);
    *(undefined8 *)(lVar13 + 0xf8) = uVar14;
    Managed_WriteBarrier();
    if (**(long **)(*(long *)puVar3 + 0xb8) == 0) goto LAB_02c16154;
    uVar14 = StarUpgrade_manager_SaveFailCount_return_0x6000ae9
                       (**(long **)(*(long *)puVar3 + 0xb8),0);
    *(undefined8 *)(lVar13 + 0x100) = uVar14;
    Managed_WriteBarrier(lVar13 + 0x100,uVar14);
  }
  puVar4 = PTR_DAT_05e5e3e0;
  lVar15 = *(long *)PTR_DAT_05e5e3e0;
  if (*(int *)(lVar15 + 0xe4) == 0) {
    func_0x029f5bd0();
    lVar15 = *(long *)puVar4;
  }
  uVar14 = **(undefined8 **)(lVar15 + 0xb8);
  if (*(int *)(*plVar32 + 0xe4) == 0) {
    func_0x029f5bd0(*plVar32);
  }
  uVar17 = Object_op_Inequality_0x6000ded(uVar14,0,0);
  if ((uVar17 & 1) != 0) {
    lVar15 = *(long *)puVar4;
    if (*(int *)(lVar15 + 0xe4) == 0) {
      func_0x029f5bd0();
      lVar15 = *(long *)puVar4;
    }
    lVar15 = **(long **)(lVar15 + 0xb8);
    if (lVar15 == 0) goto LAB_02c16154;
    uVar14 = *(undefined8 *)(lVar15 + 0x20);
    *(undefined8 *)(lVar13 + 0x3f8) = *(undefined8 *)(lVar15 + 0x28);
    *(undefined8 *)(lVar13 + 0x3f0) = uVar14;
  }
  puVar4 = PTR_DAT_05e5e068;
  uVar14 = **(undefined8 **)(*(long *)PTR_DAT_05e5e068 + 0xb8);
  if (*(int *)(*plVar32 + 0xe4) == 0) {
    func_0x029f5bd0();
  }
  uVar17 = Object_op_Inequality_0x6000ded(uVar14,0,0);
  if ((uVar17 & 1) != 0) {
    lVar15 = **(long **)(*(long *)puVar4 + 0xb8);
    if (lVar15 == 0) goto LAB_02c16154;
    *(undefined4 *)(lVar13 + 0x400) = *(undefined4 *)(lVar15 + 0x28);
    uVar14 = Raid_Mission_manager_SaveClear_return_0x60008cc(lVar15,0);
    *(undefined8 *)(lVar13 + 0x408) = uVar14;
    Managed_WriteBarrier(lVar13 + 0x408,uVar14);
    uVar14 = Raid_Mission_manager_SaveRewardGet_return_0x60008cd(lVar15,0);
    *(undefined8 *)(lVar13 + 0x410) = uVar14;
    Managed_WriteBarrier(lVar13 + 0x410,uVar14);
    uVar14 = Raid_Mission_manager_SaveRewardReGet_return_0x60008ce(lVar15,0);
    *(undefined8 *)(lVar13 + 0x418) = uVar14;
    Managed_WriteBarrier(lVar13 + 0x418,uVar14);
    *(undefined1 *)(lVar13 + 0x420) = *(undefined1 *)(lVar15 + 0x48);
  }
  puVar4 = PTR_DAT_05e5e4b8;
  lVar15 = *(long *)PTR_DAT_05e5e4b8;
  if (*(int *)(lVar15 + 0xe4) == 0) {
    func_0x029f5bd0();
    lVar15 = *(long *)puVar4;
  }
  uVar14 = **(undefined8 **)(lVar15 + 0xb8);
  if (*(int *)(*plVar32 + 0xe4) == 0) {
    func_0x029f5bd0(*plVar32);
  }
  uVar17 = Object_op_Inequality_0x6000ded(uVar14,0,0);
  if ((uVar17 & 1) != 0) {
    lVar15 = *(long *)puVar4;
    if (*(int *)(lVar15 + 0xe4) == 0) {
      func_0x029f5bd0();
      lVar15 = *(long *)puVar4;
    }
    if ((**(long **)(lVar15 + 0xb8) == 0) ||
       (lVar15 = *(long *)(**(long **)(lVar15 + 0xb8) + 0x38), lVar15 == 0)) goto LAB_02c16154;
    plVar16 = (long *)Array_Clone_0x6000ccb(lVar15,0);
    puVar28 = (undefined8 *)PTR_DAT_05e626b0;
    if (plVar16 == (long *)0x0) {
      lVar15 = 0;
      *(undefined8 *)(lVar13 + 0x3d0) = 0;
LAB_02c16418:
      Managed_WriteBarrier(lVar13 + 0x3d0,lVar15);
      if (**(long **)(*(long *)puVar4 + 0xb8) == 0) goto LAB_02c16154;
      uVar14 = LoadData_ToStringSafe_0x600047f
                         (*(undefined8 *)(**(long **)(*(long *)puVar4 + 0xb8) + 0x40),0);
      *(undefined8 *)(lVar13 + 0x3d8) = uVar14;
      Managed_WriteBarrier(lVar13 + 0x3d8,uVar14);
      goto LAB_02c16448;
    }
    plVar27 = *(long **)PTR_DAT_05e626b0;
    lVar15 = func_0x029f5bd4(plVar16,plVar27);
    if (lVar15 != 0) {
      plVar27 = (long *)*puVar28;
      *(long *)(lVar13 + 0x3d0) = lVar15;
      lVar15 = func_0x029f5bd4(plVar16,plVar27);
      if (lVar15 != 0) goto LAB_02c16418;
    }
    goto LAB_02c16818;
  }
LAB_02c16448:
  puVar4 = PTR_DAT_05e62660;
  lVar15 = *(long *)PTR_DAT_05e62660;
  if (*(int *)(lVar15 + 0xe4) == 0) {
    func_0x029f5bd0();
    lVar15 = *(long *)puVar4;
  }
  uVar14 = **(undefined8 **)(lVar15 + 0xb8);
  if (*(int *)(*plVar32 + 0xe4) == 0) {
    func_0x029f5bd0(*plVar32);
  }
  uVar17 = Object_op_Inequality_0x6000ded(uVar14,0,0);
  if ((uVar17 & 1) != 0) {
    lVar15 = *(long *)puVar4;
    if (*(int *)(lVar15 + 0xe4) == 0) {
      func_0x029f5bd0();
      lVar15 = *(long *)puVar4;
    }
    if ((**(long **)(lVar15 + 0xb8) == 0) ||
       (lVar15 = *(long *)(**(long **)(lVar15 + 0xb8) + 0x20), lVar15 == 0)) goto LAB_02c16154;
    plVar16 = (long *)Array_Clone_0x6000ccb(lVar15,0);
    puVar28 = (undefined8 *)PTR_DAT_05e5d790;
    if (plVar16 != (long *)0x0) {
      plVar27 = *(long **)PTR_DAT_05e5d790;
      lVar15 = func_0x029f5bd4(plVar16,plVar27);
      if (lVar15 != 0) {
        plVar27 = (long *)*puVar28;
        *(long *)(lVar13 + 0x3e0) = lVar15;
        lVar15 = func_0x029f5bd4(plVar16,plVar27);
        if (lVar15 != 0) goto LAB_02c16514;
      }
LAB_02c16818:
      func_0x029f607c(plVar16,plVar27);
LAB_02c16824:
      uVar14 = func_0x029f607c(plVar27,puVar28);
      lVar13 = Object__ctor_0x600100e(uVar14,0);
      return lVar13;
    }
    lVar15 = 0;
    *(undefined8 *)(lVar13 + 0x3e0) = 0;
LAB_02c16514:
    Managed_WriteBarrier(lVar13 + 0x3e0,lVar15);
    if (**(long **)(*(long *)puVar4 + 0xb8) == 0) goto LAB_02c16154;
    *(undefined8 *)(lVar13 + 1000) = *(undefined8 *)(**(long **)(*(long *)puVar4 + 0xb8) + 0x28);
    Managed_WriteBarrier(lVar13 + 1000);
  }
  if (*(int *)(*(long *)PTR_DAT_05e5e0b8 + 0xe4) == 0) {
    func_0x029f5bd0();
  }
  uVar14 = PlusPack_SaveData_return_0x6000d3a(0);
  *(undefined8 *)(lVar13 + 0x218) = uVar14;
  Managed_WriteBarrier(lVar13 + 0x218,uVar14);
  puVar4 = PTR_DAT_05e5d920;
  lVar15 = *(long *)PTR_DAT_05e5d920;
  if (*(int *)(lVar15 + 0xe4) == 0) {
    func_0x029f5bd0();
    lVar15 = *(long *)puVar4;
  }
  puVar3 = PTR_DAT_05e5d6a8;
  uVar14 = LoadData_ToStringSafe_0x600047f(*(undefined8 *)(*(long *)(lVar15 + 0xb8) + 0x10),0);
  *(undefined8 *)(lVar13 + 0x378) = uVar14;
  Managed_WriteBarrier(lVar13 + 0x378,uVar14);
  uVar14 = LoadData_ToStringSafe_0x600047f
                     (*(undefined8 *)(*(long *)(*(long *)puVar4 + 0xb8) + 0x18),0);
  *(undefined8 *)(lVar13 + 0x380) = uVar14;
  Managed_WriteBarrier(lVar13 + 0x380,uVar14);
  uVar14 = LoadData_ToStringSafe_0x600047f
                     (*(undefined8 *)(*(long *)(*(long *)puVar4 + 0xb8) + 0x20),0);
  *(undefined8 *)(lVar13 + 0x388) = uVar14;
  Managed_WriteBarrier(lVar13 + 0x388,uVar14);
  if (*(int *)(*plVar25 + 0xe4) == 0) {
    func_0x029f5bd0();
  }
  puVar4 = PTR_DAT_05e597d0;
  uVar14 = Time_manager_get_UtcNow_0x6000578(0);
  uVar14 = LoadData_ToStringSafe_0x600047f(uVar14,0);
  *(undefined8 *)(lVar13 + 0x230) = uVar14;
  Managed_WriteBarrier(lVar13 + 0x230,uVar14);
  lVar15 = *(long *)puVar3;
  if (*(int *)(lVar15 + 0xe4) == 0) {
    func_0x029f5bd0();
    lVar15 = *(long *)puVar3;
  }
  lVar19 = *(long *)puVar4;
  uVar14 = *(undefined8 *)(*(long *)(lVar15 + 0xb8) + 0x10);
  if (*(int *)(lVar19 + 0xe4) == 0) {
    func_0x029f5bd0(lVar19);
  }
  uVar17 = DateTime_op_Equality_0x600063b(uVar14,0,0);
  if ((uVar17 & 1) == 0) {
    if (*(int *)(*(long *)puVar3 + 0xe4) == 0) {
      func_0x029f5bd0();
    }
    if (*(int *)(*(long *)PTR_DAT_05e59760 + 0xe4) == 0) {
      func_0x029f5bd0();
    }
    uVar14 = CultureInfo_get_InvariantCulture_0x6002ba4(0);
    lVar15 = *(long *)puVar4;
    if (*(int *)(lVar15 + 0xe4) == 0) {
      func_0x029f5bd0(lVar15);
    }
    uVar14 = DateTime_ToString_0x6000631
                       (*(long *)(*(long *)puVar3 + 0xb8) + 0x10,*(undefined8 *)PTR_DAT_05e626d0,
                        uVar14,0);
  }
  else {
    uVar14 = *(undefined8 *)PTR_DAT_05e59050;
  }
  puVar4 = PTR_DAT_05e5dfa0;
  *(undefined8 *)(lVar13 + 0x3a0) = uVar14;
  Managed_WriteBarrier(lVar13 + 0x3a0);
  lVar15 = *(long *)puVar3;
  if (*(int *)(lVar15 + 0xe4) == 0) {
    func_0x029f5bd0();
    lVar15 = *(long *)puVar3;
  }
  *(undefined8 *)(lVar13 + 0x3a8) = *(undefined8 *)(*(long *)(lVar15 + 0xb8) + 0x18);
  Managed_WriteBarrier(lVar13 + 0x3a8);
  uVar14 = *(undefined8 *)(*(long *)(*(long *)puVar3 + 0xb8) + 0x28);
  *(undefined4 *)(lVar13 + 0x3b0) = *(undefined4 *)(*(long *)(*(long *)puVar3 + 0xb8) + 0x20);
  *(undefined8 *)(lVar13 + 0x3b8) = uVar14;
  Managed_WriteBarrier(lVar13 + 0x3b8);
  *(undefined8 *)(lVar13 + 0x3c0) = *(undefined8 *)(*(long *)(*(long *)puVar3 + 0xb8) + 0x30);
  Managed_WriteBarrier(lVar13 + 0x3c0);
  bVar11 = FreeCash_manager_get_LinkRewardReceived_0x60002ff(0);
  puVar28 = *(undefined8 **)(*(long *)puVar4 + 0xb8);
  iVar1 = *(int *)(*plVar32 + 0xe4);
  *(byte *)(lVar13 + 0x39c) = bVar11 & 1;
  uVar14 = *puVar28;
  if (iVar1 == 0) {
    func_0x029f5bd0();
  }
  uVar17 = Object_op_Inequality_0x6000ded(uVar14,0,0);
  if ((uVar17 & 1) == 0) {
    bVar10 = false;
  }
  else {
    lVar15 = **(long **)(*(long *)puVar4 + 0xb8);
    if (lVar15 == 0) {
LAB_02c16154:
                    /* WARNING: Subroutine does not return */
      Throw_NullReference_Wrapper();
    }
    bVar10 = *(char *)(lVar15 + 0x32) != '\0';
  }
  *(bool *)(lVar13 + 0x39d) = bVar10;
  bVar11 = FreeCash_manager_get_RewardAdRemoved_0x6000300(0);
  *(byte *)(lVar13 + 0x39e) = bVar11 & 1;
  return lVar13;
LAB_02c1680c:
  uVar14 = func_0x029f5d20();
  func_0x029f5bc0(uVar14,0);
  goto LAB_02c16818;
}

