/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2aa5020, Ghidra VA 02ba5020. */

void Mission_manager_Mission_Reward_Get_Luxury(long param_1,uint param_2)

{
  uint uVar1;
  undefined4 uVar2;
  undefined *puVar3;
  long lVar4;
  long lVar5;
  undefined1 *puVar6;
  uint uVar7;
  undefined1 uVar8;
  int iVar9;
  double dVar10;
  double dVar11;
  float fVar12;
  double dStack_48;
  
  if ((bRam000000000625ba44 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e5d540);
    func_0x029f5a50(PTR_DAT_05e5dd50);
    bRam000000000625ba44 = 1;
  }
  puVar3 = PTR_DAT_05e5dd50;
  lVar5 = *(long *)(param_1 + 0x20);
  if (lVar5 == 0) goto LAB_02ba5350;
  if (*(uint *)(lVar5 + 0x18) <= param_2) {
LAB_02ba5354:
                    /* WARNING: Subroutine does not return */
    Throw_Index_Wrapper();
  }
  lVar5 = *(long *)(lVar5 + (long)(int)param_2 * 8 + 0x20);
  if (lVar5 == 0) goto LAB_02ba5350;
  if (*(char *)(lVar5 + 0x24) == '\0') {
    return;
  }
  if (*(char *)(lVar5 + 0x25) != '\0') {
    return;
  }
  lVar4 = *(long *)PTR_DAT_05e5dd50;
  if (*(int *)(lVar4 + 0xe4) == 0) {
    func_0x029f5bd0();
    lVar4 = *(long *)puVar3;
  }
  if (*(char *)(*(long *)(lVar4 + 0xb8) + 1) == '\0') {
    if (*(long *)(param_1 + 0xb0) != 0) {
      GameObject_SetActive_0x6000cfe(*(long *)(param_1 + 0xb0),1,0);
      if (cRam000000000625ba57 == '\0') {
        func_0x029f5a50(PTR_DAT_05e5dd70);
        cRam000000000625ba57 = '\x01';
      }
      if (**(long **)(*(long *)PTR_DAT_05e5dd70 + 0xb8) != 0) {
        Sound_manager_PlaySfx_0x600054a
                  (0x3f800000,**(long **)(*(long *)PTR_DAT_05e5dd70 + 0xb8),5,0,0);
        return;
      }
    }
    goto LAB_02ba5350;
  }
  iVar9 = *(int *)(lVar5 + 0x20);
  if (cRam000000000625b95a == '\0') {
    func_0x029f5a50(PTR_DAT_05e59000);
    cRam000000000625b95a = '\x01';
  }
  fVar12 = (float)iVar9 * 0.5;
  if (*(int *)(*(long *)PTR_DAT_05e59000 + 0xe4) == 0) {
    func_0x029f5bd0();
  }
  dVar11 = (double)fVar12;
  dVar10 = (double)func_0x05afb230(dVar11,&dStack_48);
  if (0.0 <= fVar12) {
    if (dVar10 == 0.5) {
      dVar10 = 1.0;
      goto LAB_02ba51c0;
    }
    dStack_48 = (double)(long)(dVar11 + 0.5);
  }
  else if (dVar10 == -0.5) {
    dVar10 = -1.0;
LAB_02ba51c0:
    if (((long)dStack_48 & 1U) != 0) {
      dStack_48 = dStack_48 + dVar10;
    }
  }
  else {
    dStack_48 = (double)(long)(dVar11 + -0.5);
  }
  *(undefined1 *)(lVar5 + 0x25) = 1;
  iVar9 = -0x80000000;
  if (dStack_48 != INFINITY) {
    iVar9 = (int)dStack_48;
  }
  Mission_manager_Exp_Get(param_1,iVar9);
  if (cRam000000000625ba57 == '\0') {
    func_0x029f5a50(PTR_DAT_05e5dd70);
    cRam000000000625ba57 = '\x01';
  }
  if (**(long **)(*(long *)PTR_DAT_05e5dd70 + 0xb8) != 0) {
    Sound_manager_PlaySfx_0x600054a(0x3f800000,**(long **)(*(long *)PTR_DAT_05e5dd70 + 0xb8),7,0,0);
    if ((*(long *)(param_1 + 0xa0) != 0) && (*(long *)(*(long *)(param_1 + 0xa0) + 0x38) != 0)) {
      Bounce_Bounce_Start_0x600023c();
      Mission_manager_RestartAlertLoop_0x600033e(param_1);
      lVar5 = *(long *)(param_1 + 0x20);
      if (lVar5 != 0) {
        uVar1 = *(uint *)(lVar5 + 0x18);
        if ((int)uVar1 < 1) {
          iVar9 = 0;
        }
        else {
          uVar7 = 0;
          iVar9 = 0;
          do {
            if (uVar1 == uVar7) goto LAB_02ba5354;
            lVar4 = *(long *)(lVar5 + (long)(int)uVar7 * 8 + 0x20);
            if (lVar4 == 0) goto LAB_02ba5350;
            uVar7 = uVar7 + 1;
            iVar9 = iVar9 + (uint)*(byte *)(lVar4 + 0x24);
          } while ((uVar1 & ((int)uVar1 >> 0x1f ^ 0xffffffffU)) != uVar7);
        }
        lVar5 = *(long *)puVar3;
        uVar2 = *(undefined4 *)(param_1 + 0x48);
        if (*(int *)(lVar5 + 0xe4) == 0) {
          func_0x029f5bd0();
          lVar5 = *(long *)puVar3;
        }
        puVar6 = *(undefined1 **)(lVar5 + 0xb8);
        if (puVar6[1] == '\0') {
          if (*(int *)(lVar5 + 0xe4) == 0) {
            func_0x029f5bd0();
            puVar6 = *(undefined1 **)(*(long *)puVar3 + 0xb8);
          }
          uVar8 = *puVar6;
        }
        else {
          uVar8 = 2;
        }
        if (*(int *)(*(long *)PTR_DAT_05e5d540 + 0xe4) == 0) {
          func_0x029f5bd0();
        }
        AppsFlyerInit_SendLog_Mission_0x600022b(param_2,iVar9,uVar2,uVar8,1);
        return;
      }
    }
  }
LAB_02ba5350:
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

