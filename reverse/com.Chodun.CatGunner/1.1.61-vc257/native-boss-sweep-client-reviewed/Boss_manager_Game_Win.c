/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b46618, Ghidra VA 02c46618. */

void Boss_manager_Game_Win(long param_1)

{
  int iVar1;
  int iVar2;
  undefined *puVar3;
  undefined *puVar4;
  undefined *puVar5;
  uint uVar6;
  long lVar7;
  undefined8 uVar8;
  char *pcVar9;
  long lVar10;
  int *piVar11;
  long *plVar12;
  int iVar13;
  float fVar14;
  undefined8 uStack_a0;
  undefined8 uStack_98;
  undefined8 uStack_90;
  undefined8 uStack_88;
  undefined8 uStack_80;
  undefined8 uStack_78;
  undefined8 uStack_70;
  undefined8 uStack_68;
  undefined8 uStack_58;
  undefined8 uStack_50;
  undefined8 uStack_48;
  undefined8 uStack_40;
  int iStack_34;
  
  puVar3 = PTR_DAT_05e5d338;
  if ((bRam000000000625c0e2 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e5dd30);
    func_0x029f5a50(PTR_DAT_05e5d338);
    func_0x029f5a50(PTR_DAT_05e5e0b8);
    func_0x029f5a50(PTR_DAT_05e5d498);
    func_0x029f5a50(PTR_DAT_05e5d920);
    bRam000000000625c0e2 = 1;
  }
  lVar7 = *(long *)puVar3;
  iStack_34 = 0;
  if (*(int *)(lVar7 + 0xe4) == 0) {
    func_0x029f5bd0();
    lVar7 = *(long *)puVar3;
  }
  pcVar9 = *(char **)(lVar7 + 0xb8);
  if (*pcVar9 == '\0') {
    return;
  }
  if (*(int *)(lVar7 + 0xe4) == 0) {
    func_0x029f5bd0();
    pcVar9 = *(char **)(*(long *)puVar3 + 0xb8);
  }
  *pcVar9 = '\0';
  lVar7 = *(long *)(param_1 + 0xa0);
  *(undefined1 *)(param_1 + 0x7d) = 1;
  InfVal_op_Implicit_0x600003f(&uStack_58,0,0);
  puVar5 = PTR_DAT_05e5e0b8;
  puVar4 = PTR_DAT_05e5dd30;
  if (((*(long *)(param_1 + 0x110) != 0) &&
      (lVar10 = *(long *)(*(long *)(param_1 + 0x110) + 0x20), lVar10 != 0)) && (lVar7 != 0)) {
    uStack_98 = *(undefined8 *)(lVar10 + 0x50);
    uStack_a0 = *(undefined8 *)(lVar10 + 0x48);
    uStack_78 = uStack_50;
    uStack_80 = uStack_58;
    uStack_68 = uStack_40;
    uStack_70 = uStack_48;
    uStack_88 = *(undefined8 *)(lVar10 + 0x60);
    uStack_90 = *(undefined8 *)(lVar10 + 0x58);
    Boss_Slider_Value_Reload_0x60007ce(lVar7,&uStack_80,&uStack_a0);
    Boss_manager_SendDgResult_0x600079a(param_1,1);
    lVar7 = *(long *)puVar4;
    iVar1 = *(int *)(lVar7 + 0xe4);
    *(int *)(param_1 + 0x20) = *(int *)(param_1 + 0x20) + 1;
    if (iVar1 == 0) {
      func_0x029f5bd0();
      lVar7 = *(long *)puVar4;
    }
    puVar4 = PTR_DAT_05e5d920;
    iVar1 = **(int **)(lVar7 + 0xb8);
    if (*(int *)(*(long *)puVar5 + 0xe4) == 0) {
      func_0x029f5bd0(*(long *)puVar5);
    }
    fVar14 = (float)PlusPack_get_Reward_Mult_Boss_0x6000d2c(0);
    fVar14 = fVar14 * (float)iVar1;
    iVar1 = -0x80000000;
    if (fVar14 != INFINITY) {
      iVar1 = (int)fVar14;
    }
    iVar2 = *(int *)(*(long *)puVar4 + 0xe4);
    iVar13 = iVar1 * 3;
    piVar11 = (int *)(param_1 + 0xd0);
    *piVar11 = iVar1;
    iStack_34 = iVar13;
    if (iVar2 == 0) {
      func_0x029f5bd0();
    }
    uVar6 = Shop_manager_get_Is_RewardBonus_Auto(0);
    if ((uVar6 & 1) == 0) {
      lVar7 = *(long *)puVar3;
      iVar13 = *piVar11;
    }
    else {
      lVar7 = *(long *)puVar3;
    }
    if (*(int *)(lVar7 + 0xe4) == 0) {
      func_0x029f5bd0();
    }
    Gamemanager_Get_Dia_0x6000078(iVar13,0);
    if (*(long *)(param_1 + 0xb8) != 0) {
      GameObject_SetActive_0x6000cfe(*(long *)(param_1 + 0xb8),(uVar6 ^ 1) & 1,0);
      if (*(long *)(param_1 + 0xa8) != 0) {
        GameObject_SetActive_0x6000cfe(*(long *)(param_1 + 0xa8),(uVar6 ^ 1) & 1,0);
        if (*(long *)(param_1 + 0xb0) != 0) {
          GameObject_SetActive_0x6000cfe(*(long *)(param_1 + 0xb0),uVar6 & 1,0);
          if (cRam000000000625ba57 == '\0') {
            func_0x029f5a50(PTR_DAT_05e5dd70);
            cRam000000000625ba57 = '\x01';
          }
          puVar3 = PTR_DAT_05e5d498;
          if (**(long **)(*(long *)PTR_DAT_05e5dd70 + 0xb8) != 0) {
            Sound_manager_PlaySfx_0x600054a
                      (0x3f800000,**(long **)(*(long *)PTR_DAT_05e5dd70 + 0xb8),0xb,0,0);
            if (**(long **)(*(long *)puVar3 + 0xb8) != 0) {
              Rank_manager_SubmitBossScore_0x600041e
                        (**(long **)(*(long *)puVar3 + 0xb8),*(undefined4 *)(param_1 + 0x20),0);
              plVar12 = *(long **)(param_1 + 0xc0);
              uVar8 = Int32_ToString_0x600080e(piVar11,0);
              if (plVar12 != (long *)0x0) {
                (**(code **)(*plVar12 + 0x558))(plVar12,uVar8,*(undefined8 *)(*plVar12 + 0x560));
                plVar12 = *(long **)(param_1 + 200);
                uVar8 = Int32_ToString_0x600080e(&iStack_34,0);
                if (plVar12 != (long *)0x0) {
                  (**(code **)(*plVar12 + 0x558))(plVar12,uVar8,*(undefined8 *)(*plVar12 + 0x560));
                  if (*(long *)(param_1 + 0x28) != 0) {
                    GameObject_SetActive_0x6000cfe(*(long *)(param_1 + 0x28),1,0);
                    return;
                  }
                }
              }
            }
          }
        }
      }
    }
  }
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

