/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2aa5e74, Ghidra VA 02ba5e74. */

void Mission_manager_Reward_Get(long param_1,ulong param_2,uint param_3)

{
  uint uVar1;
  char cVar2;
  undefined *puVar3;
  int iVar4;
  long lVar5;
  ulong uVar6;
  undefined8 uVar7;
  ulong extraout_x1;
  ulong extraout_x1_00;
  int iVar8;
  long lVar9;
  
  iVar4 = (int)param_2;
  uVar6 = param_2;
  if ((bRam000000000625ba4d & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e5d910);
    func_0x029f5a50(PTR_DAT_05e5dd40);
    func_0x029f5a50(PTR_DAT_05e5e528);
    func_0x029f5a50(PTR_DAT_05e5dd50);
    func_0x029f5a50(PTR_DAT_05e5d920);
    func_0x029f5a50(PTR_DAT_05e5e798);
    func_0x029f5a50(PTR_DAT_05e5e7a0);
    bRam000000000625ba4d = 1;
    uVar6 = extraout_x1;
  }
  puVar3 = PTR_DAT_05e5dd50;
  if (iVar4 == 0) {
    lVar5 = *(long *)(param_1 + 0x28);
    if (lVar5 == 0) goto LAB_02ba6294;
    if (*(uint *)(lVar5 + 0x18) <= param_3) goto LAB_02ba6298;
    lVar9 = *(long *)(param_1 + 0x38);
    if (lVar9 == 0) goto LAB_02ba6294;
    uVar1 = *(uint *)(lVar9 + 0x18);
  }
  else {
    if (iVar4 == 1) {
      lVar5 = *(long *)PTR_DAT_05e5dd50;
      if (*(int *)(lVar5 + 0xe4) == 0) {
        func_0x029f5bd0();
        lVar5 = *(long *)puVar3;
        uVar6 = extraout_x1_00;
      }
      if (**(char **)(lVar5 + 0xb8) == '\0') {
        if (*(long *)(param_1 + 0xa8) != 0) {
          GameObject_SetActive_0x6000cfe(*(long *)(param_1 + 0xa8),1,0);
          return;
        }
        goto LAB_02ba6294;
      }
    }
    lVar5 = *(long *)(param_1 + 0x30);
    if (lVar5 == 0) goto LAB_02ba6294;
    if (*(uint *)(lVar5 + 0x18) <= param_3) goto LAB_02ba6298;
    lVar9 = *(long *)(param_1 + 0x40);
    if (lVar9 == 0) goto LAB_02ba6294;
    uVar1 = *(uint *)(lVar9 + 0x18);
  }
  if (uVar1 <= param_3) {
LAB_02ba6298:
                    /* WARNING: Subroutine does not return */
    Throw_Index_Wrapper();
  }
  lVar5 = *(long *)(lVar5 + (long)(int)param_3 * 8 + 0x20);
  cVar2 = *(char *)(lVar9 + (int)param_3 + 0x20);
  iVar8 = *(int *)(param_1 + 0x48);
  if ((cVar2 == '\0') && ((int)param_3 < iVar8)) {
    uVar6 = Mission_manager_is_Reward_SequenceLocked(param_1,uVar6,param_3);
    if ((uVar6 & 1) != 0) {
      if (*(int *)(*(long *)PTR_DAT_05e5e528 + 0xe4) == 0) {
        func_0x029f5bd0();
      }
      uVar7 = LocalizationManager_GetTranslation_0x60011b3
                        (*(undefined8 *)PTR_DAT_05e5e798,1,0,1,0,0,0,1,0);
      UI_manager_Alert_0x6000602(uVar7,0);
      if (cRam000000000625ba57 == '\0') {
        func_0x029f5a50(PTR_DAT_05e5dd70);
        cRam000000000625ba57 = '\x01';
      }
      if (**(long **)(*(long *)PTR_DAT_05e5dd70 + 0xb8) != 0) {
        Sound_manager_PlaySfx_0x600054a
                  (0x3f800000,**(long **)(*(long *)PTR_DAT_05e5dd70 + 0xb8),5,0,0);
        iVar4 = Mission_manager_First_Unclaimed_Reward_Lv_return_0x6000367(param_1);
        if (iVar4 != -1) {
          Mission_manager_ScrollTo_RewardSlot_0x6000355(param_1,iVar4);
          return;
        }
        return;
      }
      goto LAB_02ba6294;
    }
    iVar8 = *(int *)(param_1 + 0x48);
  }
  if ((cVar2 == '\0') && ((int)param_3 < iVar8)) {
    if (*(int *)(*(long *)PTR_DAT_05e5dd50 + 0xe4) == 0) {
      func_0x029f5bd0();
    }
    puVar3 = PTR_DAT_05e5d920;
    if (((int)param_3 < 3) || (param_3 % 3 != 0 || iVar4 != 0)) {
LAB_02ba60fc:
      Mission_manager_Reward_Grant_0x6000359(param_1,param_2 & 0xffffffff,param_3);
      return;
    }
    lVar9 = *(long *)PTR_DAT_05e5d920;
    if (*(int *)(lVar9 + 0xe4) == 0) {
      func_0x029f5bd0();
      lVar9 = *(long *)puVar3;
    }
    if (*(char *)(*(long *)(lVar9 + 0xb8) + 9) != '\0') goto LAB_02ba60fc;
    if (lVar5 == 0) goto LAB_02ba6294;
    if (*(int *)(lVar5 + 0x14) == 1) {
      if (**(long **)(*(long *)PTR_DAT_05e5dd40 + 0xb8) == 0) goto LAB_02ba6294;
      iVar4 = Gun_manager_FindFirstEmptyOwned_0x6000a49
                        (**(long **)(*(long *)PTR_DAT_05e5dd40 + 0xb8),0);
      if (iVar4 == -1) {
        if (*(int *)(*(long *)PTR_DAT_05e5e528 + 0xe4) == 0) {
          func_0x029f5bd0();
        }
        uVar7 = LocalizationManager_GetTranslation_0x60011b3
                          (*(undefined8 *)PTR_DAT_05e5e7a0,1,0,1,0,0,0,1,0);
        UI_manager_Alert_0x6000602(uVar7,0);
        if (cRam000000000625ba57 == '\0') {
          func_0x029f5a50(PTR_DAT_05e5dd70);
          cRam000000000625ba57 = '\x01';
        }
        goto LAB_02ba613c;
      }
    }
    puVar3 = PTR_DAT_05e5d910;
    *(uint *)(param_1 + 0xf0) = param_3;
    if (**(long **)(*(long *)puVar3 + 0xb8) != 0) {
      Admob_ShowRewardAd_0x6000163(**(long **)(*(long *)puVar3 + 0xb8),6,0);
      return;
    }
  }
  else {
    if (cRam000000000625ba57 == '\0') {
      func_0x029f5a50(PTR_DAT_05e5dd70);
      cRam000000000625ba57 = '\x01';
    }
LAB_02ba613c:
    if (**(long **)(*(long *)PTR_DAT_05e5dd70 + 0xb8) != 0) {
      Sound_manager_PlaySfx_0x600054a
                (0x3f800000,**(long **)(*(long *)PTR_DAT_05e5dd70 + 0xb8),5,0,0);
      return;
    }
  }
LAB_02ba6294:
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

