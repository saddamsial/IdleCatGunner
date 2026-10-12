/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b4de0c, Ghidra VA 02c4de0c. */

void Monster_manager_LevelClear(long param_1)

{
  undefined *puVar1;
  undefined *puVar2;
  undefined *puVar3;
  long lVar4;
  undefined8 uVar5;
  ulong uVar6;
  int iVar7;
  long *plVar8;
  float fVar9;
  
  puVar1 = PTR_DAT_05e5d338;
  if ((bRam000000000625c13c & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e5d338);
    func_0x029f5a50(PTR_DAT_05e5dd58);
    func_0x029f5a50(PTR_DAT_05e5e0b8);
    func_0x029f5a50(PTR_DAT_05e5d920);
    bRam000000000625c13c = 1;
  }
  lVar4 = *(long *)puVar1;
  if (*(int *)(lVar4 + 0xe4) == 0) {
    func_0x029f5bd0();
    lVar4 = *(long *)puVar1;
  }
  puVar3 = PTR_DAT_05e5e0b8;
  puVar2 = PTR_DAT_05e5dd58;
  if (**(char **)(lVar4 + 0xb8) != '\0') {
    lVar4 = *(long *)PTR_DAT_05e5dd58;
    if (*(int *)(lVar4 + 0xe4) == 0) {
      func_0x029f5bd0();
      lVar4 = *(long *)puVar2;
    }
    iVar7 = **(int **)(lVar4 + 0xb8);
    if (*(int *)(*(long *)puVar3 + 0xe4) == 0) {
      func_0x029f5bd0(*(long *)puVar3);
    }
    fVar9 = (float)PlusPack_get_Reward_Mult_Monster_0x6000d2b(0);
    plVar8 = *(long **)(param_1 + 0x140);
    fVar9 = fVar9 * (float)iVar7;
    iVar7 = -0x80000000;
    if (fVar9 != INFINITY) {
      iVar7 = (int)fVar9;
    }
    *(int *)(param_1 + 0x13c) = iVar7 + *(int *)(param_1 + 0x13c);
    uVar5 = Int32_ToString_0x600080e(param_1 + 0x13c,0);
    puVar2 = PTR_DAT_05e5d920;
    if (plVar8 != (long *)0x0) {
      (**(code **)(*plVar8 + 0x558))(plVar8,uVar5,*(undefined8 *)(*plVar8 + 0x560));
      if (*(int *)(*(long *)puVar2 + 0xe4) == 0) {
        func_0x029f5bd0();
      }
      uVar6 = Shop_manager_get_Is_RewardBonus_Auto_0x6000d61(0);
      if ((uVar6 & 1) == 0) {
        if (*(int *)(*(long *)puVar1 + 0xe4) == 0) {
          func_0x029f5bd0();
        }
      }
      else {
        if (*(int *)(*(long *)puVar1 + 0xe4) == 0) {
          func_0x029f5bd0();
        }
        iVar7 = iVar7 << 1;
      }
      Gamemanager_Get_PetCoin_0x600007b(iVar7,0);
      iVar7 = *(int *)(param_1 + 0x24) + 1;
      *(int *)(param_1 + 0x24) = iVar7;
      if (4 < iVar7) {
        *(int *)(param_1 + 0x20) = *(int *)(param_1 + 0x20) + 1;
        *(undefined4 *)(param_1 + 0x24) = 0;
      }
      if (*(long *)(param_1 + 0x100) != 0) {
        GameObject_SetActive_0x6000cfe(*(long *)(param_1 + 0x100),1,0);
        if (cRam000000000625ba57 == '\0') {
          func_0x029f5a50(PTR_DAT_05e5dd70);
          cRam000000000625ba57 = '\x01';
        }
        if (**(long **)(*(long *)PTR_DAT_05e5dd70 + 0xb8) != 0) {
          Sound_manager_PlaySfx_0x600054a
                    (0x3f800000,**(long **)(*(long *)PTR_DAT_05e5dd70 + 0xb8),0xb,0,0);
          lVar4 = *(long *)(param_1 + 0xe0);
          if (lVar4 != 0) {
            MonoBehaviour_StopCoroutine_0x6000d45(param_1,lVar4,0);
          }
          uVar5 = Monster_manager_LevelClear_Then_Next(param_1);
          *(undefined8 *)(param_1 + 0xe0) = uVar5;
          Managed_WriteBarrier((long *)(param_1 + 0xe0),uVar5);
          MonoBehaviour_StartCoroutine_0x6000d43(param_1,*(undefined8 *)(param_1 + 0xe0),0);
          return;
        }
      }
    }
                    /* WARNING: Subroutine does not return */
    Throw_NullReference_Wrapper();
  }
  return;
}

