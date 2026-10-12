/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b49d80, Ghidra VA 02c49d80. */

void Mine_manager_Reward_Panel_Reload(long param_1)

{
  int iVar1;
  int iVar2;
  undefined *puVar3;
  undefined *puVar4;
  uint uVar5;
  undefined8 uVar6;
  int *piVar7;
  long *plVar8;
  float fVar9;
  int iStack_34;
  
  if ((bRam000000000625c110 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e5d338);
    func_0x029f5a50(PTR_DAT_05e5e0b8);
    func_0x029f5a50(PTR_DAT_05e5d920);
    bRam000000000625c110 = 1;
  }
  puVar3 = PTR_DAT_05e5e0b8;
  iVar2 = *(int *)(param_1 + 100) / 10;
  iStack_34 = 0;
  if (*(int *)(param_1 + 0x60) < iVar2) {
    *(int *)(param_1 + 0x60) = iVar2;
  }
  if (*(int *)(*(long *)puVar3 + 0xe4) == 0) {
    func_0x029f5bd0();
  }
  fVar9 = (float)PlusPack_get_Reward_Mult_Mine_0x6000d2d(0);
  iVar1 = -0x80000000;
  if (fVar9 * (float)iVar2 != INFINITY) {
    iVar1 = (int)(fVar9 * (float)iVar2);
  }
  iStack_34 = iVar1 << 2;
  piVar7 = (int *)(param_1 + 0xd0);
  *piVar7 = iVar1;
  plVar8 = *(long **)(param_1 + 0xa8);
  uVar6 = Int32_ToString_0x600080e(piVar7,0);
  if (plVar8 != (long *)0x0) {
    (**(code **)(*plVar8 + 0x558))(plVar8,uVar6,*(undefined8 *)(*plVar8 + 0x560));
    plVar8 = *(long **)(param_1 + 0xb0);
    uVar6 = Int32_ToString_0x600080e(&iStack_34,0);
    puVar4 = PTR_DAT_05e5d920;
    puVar3 = PTR_DAT_05e5d338;
    if (plVar8 != (long *)0x0) {
      (**(code **)(*plVar8 + 0x558))(plVar8,uVar6,*(undefined8 *)(*plVar8 + 0x560));
      if (*(int *)(*(long *)puVar4 + 0xe4) == 0) {
        func_0x029f5bd0();
      }
      uVar5 = Shop_manager_get_Is_RewardBonus_Auto(0);
      iVar2 = iStack_34;
      if ((uVar5 & 1) == 0) {
        iVar2 = *piVar7;
      }
      if (*(int *)(*(long *)puVar3 + 0xe4) == 0) {
        func_0x029f5bd0();
      }
      Gamemanager_Get_Dia_0x6000078(iVar2,0);
      if (*(long *)(param_1 + 200) != 0) {
        GameObject_SetActive_0x6000cfe(*(long *)(param_1 + 200),(uVar5 ^ 1) & 1,0);
        if (*(long *)(param_1 + 0xb8) != 0) {
          GameObject_SetActive_0x6000cfe(*(long *)(param_1 + 0xb8),(uVar5 ^ 1) & 1,0);
          if (*(long *)(param_1 + 0xc0) != 0) {
            GameObject_SetActive_0x6000cfe(*(long *)(param_1 + 0xc0),uVar5 & 1,0);
            return;
          }
        }
      }
    }
  }
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

