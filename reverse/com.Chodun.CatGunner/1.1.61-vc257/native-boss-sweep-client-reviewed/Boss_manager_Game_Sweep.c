/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b47180, Ghidra VA 02c47180. */

void Boss_manager_Game_Sweep(long param_1)

{
  int *piVar1;
  int iVar2;
  int iVar3;
  undefined *puVar4;
  undefined *puVar5;
  uint uVar6;
  ulong uVar7;
  long lVar8;
  undefined8 uVar9;
  int *piVar10;
  long *plVar11;
  float fVar12;
  int iStack_24;
  
  if ((bRam000000000625c0e9 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e5dd30);
    func_0x029f5a50(PTR_DAT_05e5d338);
    func_0x029f5a50(PTR_DAT_05e5e0b8);
    func_0x029f5a50(PTR_DAT_05e5d498);
    func_0x029f5a50(PTR_DAT_05e5d920);
    bRam000000000625c0e9 = 1;
  }
  iStack_24 = 0;
  uVar7 = Boss_manager_is_SweepAble(param_1);
  puVar5 = PTR_DAT_05e5dd30;
  if ((uVar7 & 1) == 0) {
    return;
  }
  *(undefined2 *)(param_1 + 0x7c) = 0;
  puVar4 = PTR_DAT_05e5e0b8;
  *(undefined1 *)(param_1 + 0x7e) = 0;
  *(undefined4 *)(param_1 + 0x78) = *(undefined4 *)(param_1 + 0x20);
  *(undefined1 *)(param_1 + 0x108) = 1;
  Boss_manager_SendDgResult_0x600079a(param_1,1);
  lVar8 = *(long *)puVar5;
  iVar2 = *(int *)(lVar8 + 0xe4);
  *(int *)(param_1 + 0x20) = *(int *)(param_1 + 0x20) + 1;
  if (iVar2 == 0) {
    func_0x029f5bd0();
    lVar8 = *(long *)puVar5;
  }
  puVar5 = PTR_DAT_05e5d920;
  iVar2 = **(int **)(lVar8 + 0xb8);
  if (*(int *)(*(long *)puVar4 + 0xe4) == 0) {
    func_0x029f5bd0(*(long *)puVar4);
  }
  puVar4 = PTR_DAT_05e5d338;
  fVar12 = (float)PlusPack_get_Reward_Mult_Boss_0x6000d2c(0);
  iVar3 = *(int *)(*(long *)puVar5 + 0xe4);
  fVar12 = fVar12 * (float)iVar2;
  iVar2 = -0x80000000;
  if (fVar12 != INFINITY) {
    iVar2 = (int)fVar12;
  }
  iStack_24 = iVar2 * 3;
  piVar10 = (int *)(param_1 + 0xd0);
  *piVar10 = iVar2;
  if (iVar3 == 0) {
    func_0x029f5bd0();
  }
  uVar6 = Shop_manager_get_Is_RewardBonus_Auto(0);
  piVar1 = &iStack_24;
  if ((uVar6 & 1) == 0) {
    piVar1 = piVar10;
  }
  iVar2 = *piVar1;
  if (*(int *)(*(long *)puVar4 + 0xe4) == 0) {
    func_0x029f5bd0();
  }
  Gamemanager_Get_Dia_0x6000078(iVar2,0);
  if (*(long *)(param_1 + 0xf0) != 0) {
    GameObject_SetActive_0x6000cfe(*(long *)(param_1 + 0xf0),(uVar6 ^ 1) & 1,0);
    if (*(long *)(param_1 + 0xe0) != 0) {
      GameObject_SetActive_0x6000cfe(*(long *)(param_1 + 0xe0),(uVar6 ^ 1) & 1,0);
      if (*(long *)(param_1 + 0xe8) != 0) {
        GameObject_SetActive_0x6000cfe(*(long *)(param_1 + 0xe8),uVar6 & 1,0);
        plVar11 = *(long **)(param_1 + 0xf8);
        uVar9 = Int32_ToString_0x600080e(piVar10,0);
        if (plVar11 != (long *)0x0) {
          (**(code **)(*plVar11 + 0x558))(plVar11,uVar9,*(undefined8 *)(*plVar11 + 0x560));
          plVar11 = *(long **)(param_1 + 0x100);
          uVar9 = Int32_ToString_0x600080e(&iStack_24,0);
          if (plVar11 != (long *)0x0) {
            (**(code **)(*plVar11 + 0x558))(plVar11,uVar9,*(undefined8 *)(*plVar11 + 0x560));
            if (cRam000000000625ba57 == '\0') {
              func_0x029f5a50(PTR_DAT_05e5dd70);
              cRam000000000625ba57 = '\x01';
            }
            if (**(long **)(*(long *)PTR_DAT_05e5dd70 + 0xb8) != 0) {
              Sound_manager_PlaySfx_0x600054a
                        (0x3f800000,**(long **)(*(long *)PTR_DAT_05e5dd70 + 0xb8),0xb,0,0);
              if (**(long **)(*(long *)PTR_DAT_05e5d498 + 0xb8) != 0) {
                Rank_manager_SubmitBossScore_0x600041e
                          (**(long **)(*(long *)PTR_DAT_05e5d498 + 0xb8),
                           *(undefined4 *)(param_1 + 0x20),0);
                if ((*(long *)(param_1 + 0xd8) != 0) &&
                   (GameObject_SetActive_0x6000cfe(*(long *)(param_1 + 0xd8),1,0),
                   *(long *)(param_1 + 0x50) != 0)) {
                  Boss_Start_UI_Reload();
                  return;
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

