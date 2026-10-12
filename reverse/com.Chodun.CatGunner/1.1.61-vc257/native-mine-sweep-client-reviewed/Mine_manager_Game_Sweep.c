/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b4a114, Ghidra VA 02c4a114. */

void Mine_manager_Game_Sweep(long param_1)

{
  int iVar1;
  int iVar2;
  undefined *puVar3;
  int iVar4;
  uint uVar5;
  ulong uVar6;
  long lVar7;
  undefined8 uVar8;
  long *plVar9;
  float fVar10;
  int iStack_24;
  
  if ((bRam000000000625c114 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e5d338);
    func_0x029f5a50(PTR_DAT_05e5dd50);
    func_0x029f5a50(PTR_DAT_05e5e0b8);
    func_0x029f5a50(PTR_DAT_05e5d920);
    bRam000000000625c114 = 1;
  }
  iStack_24 = 0;
  uVar6 = Mine_manager_is_SweepAble(param_1);
  if ((uVar6 & 1) == 0) {
    return;
  }
  Mine_manager_Ticket_Reload_0x60007eb(param_1);
  iVar1 = *(int *)(param_1 + 0x50);
  iVar4 = Mine_manager_Ticket_MaxCount_return_0x60007ea();
  puVar3 = PTR_DAT_05e5d920;
  if (iVar1 < iVar4) {
    *(undefined2 *)(param_1 + 0x68) = 0;
    *(undefined1 *)(param_1 + 0x6a) = 0;
    lVar7 = *(long *)puVar3;
    *(int *)(param_1 + 0x50) = *(int *)(param_1 + 0x50) + 1;
    iVar1 = *(int *)(lVar7 + 0xe4);
    *(undefined1 *)(param_1 + 0x108) = 1;
    if (iVar1 == 0) {
      func_0x029f5bd0();
    }
    uVar5 = Shop_manager_get_Is_RewardBonus_Auto_0x6000d61(0);
    iVar1 = *(int *)(param_1 + 0x60);
    if (*(int *)(*(long *)PTR_DAT_05e5e0b8 + 0xe4) == 0) {
      func_0x029f5bd0(*(long *)PTR_DAT_05e5e0b8);
    }
    fVar10 = (float)PlusPack_get_Reward_Mult_Mine_0x6000d2d(0);
    fVar10 = fVar10 * (float)iVar1;
    iVar1 = -0x80000000;
    if (fVar10 != INFINITY) {
      iVar1 = (int)fVar10;
    }
    iVar2 = *(int *)(*(long *)PTR_DAT_05e5d338 + 0xe4);
    iStack_24 = iVar1 << 2;
    *(int *)(param_1 + 0xd0) = iVar1;
    iVar4 = iStack_24;
    if ((uVar5 & 1) == 0) {
      iVar4 = iVar1;
    }
    if (iVar2 == 0) {
      func_0x029f5bd0();
    }
    Gamemanager_Get_Dia_0x6000078(iVar4,0);
    plVar9 = *(long **)(param_1 + 0xf8);
    uVar8 = Int32_ToString_0x600080e((int *)(param_1 + 0xd0),0);
    if (plVar9 != (long *)0x0) {
      (**(code **)(*plVar9 + 0x558))(plVar9,uVar8,*(undefined8 *)(*plVar9 + 0x560));
      plVar9 = *(long **)(param_1 + 0x100);
      uVar8 = Int32_ToString_0x600080e(&iStack_24,0);
      if (plVar9 != (long *)0x0) {
        (**(code **)(*plVar9 + 0x558))(plVar9,uVar8,*(undefined8 *)(*plVar9 + 0x560));
        if (*(long *)(param_1 + 0xf0) != 0) {
          GameObject_SetActive_0x6000cfe(*(long *)(param_1 + 0xf0),(uVar5 ^ 1) & 1,0);
          if (*(long *)(param_1 + 0xe0) != 0) {
            GameObject_SetActive_0x6000cfe(*(long *)(param_1 + 0xe0),(uVar5 ^ 1) & 1,0);
            if (*(long *)(param_1 + 0xe8) != 0) {
              GameObject_SetActive_0x6000cfe(*(long *)(param_1 + 0xe8),uVar5 & 1,0);
              puVar3 = PTR_DAT_05e5dd50;
              lVar7 = *(long *)PTR_DAT_05e5dd50;
              if (*(int *)(lVar7 + 0xe4) == 0) {
                func_0x029f5bd0();
                lVar7 = *(long *)puVar3;
              }
              lVar7 = *(long *)(*(long *)(lVar7 + 0xb8) + 8);
              if (lVar7 != 0) {
                Mission_manager_MissionValue_Increase_0x600035e(lVar7,3,0);
                Mine_manager_SendDgResult_0x60007e9(param_1,1);
                if (cRam000000000625ba57 == '\0') {
                  func_0x029f5a50(PTR_DAT_05e5dd70);
                  cRam000000000625ba57 = '\x01';
                }
                if (**(long **)(*(long *)PTR_DAT_05e5dd70 + 0xb8) != 0) {
                  Sound_manager_PlaySfx_0x600054a
                            (0x3f800000,**(long **)(*(long *)PTR_DAT_05e5dd70 + 0xb8),0xb,0,0);
                  if ((*(long *)(param_1 + 0xd8) != 0) &&
                     (GameObject_SetActive_0x6000cfe(*(long *)(param_1 + 0xd8),1,0),
                     *(long *)(param_1 + 0x28) != 0)) {
                    Mine_Start_UI_Reload();
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
  else {
    uVar8 = Alarm_get_MaxTicket_0x60012f0(0);
    UI_manager_Alert_0x6000602(uVar8,0);
    if (cRam000000000625ba57 == '\0') {
      func_0x029f5a50(PTR_DAT_05e5dd70);
      cRam000000000625ba57 = '\x01';
    }
    if (**(long **)(*(long *)PTR_DAT_05e5dd70 + 0xb8) != 0) {
      Sound_manager_PlaySfx_0x600054a
                (0x3f800000,**(long **)(*(long *)PTR_DAT_05e5dd70 + 0xb8),5,0,0);
      puVar3 = PTR_DAT_05e5d920;
      lVar7 = *(long *)PTR_DAT_05e5d920;
      if (*(int *)(lVar7 + 0xe4) == 0) {
        func_0x029f5bd0();
        lVar7 = *(long *)puVar3;
      }
      if (*(char *)(*(long *)(lVar7 + 0xb8) + 0xd) != '\0') {
        return;
      }
      if (*(long *)(param_1 + 0x48) != 0) {
        GameObject_SetActive_0x6000cfe(*(long *)(param_1 + 0x48),1,0);
        return;
      }
    }
  }
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

