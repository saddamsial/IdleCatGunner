/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2ba8ed4, Ghidra VA 02ca8ed4. */

void SpeedRun_manager_Game_Win(long param_1)

{
  undefined *puVar1;
  undefined *puVar2;
  undefined *puVar3;
  uint uVar4;
  long lVar5;
  char *pcVar6;
  int iVar7;
  
  puVar1 = PTR_DAT_05e5d338;
  if ((bRam000000000625c4f5 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e5d338);
    func_0x029f5a50(PTR_DAT_05e5d920);
    func_0x029f5a50(PTR_DAT_05e5dd68);
    bRam000000000625c4f5 = 1;
  }
  lVar5 = *(long *)puVar1;
  if (*(int *)(lVar5 + 0xe4) == 0) {
    func_0x029f5bd0();
    lVar5 = *(long *)puVar1;
  }
  pcVar6 = *(char **)(lVar5 + 0xb8);
  if (*pcVar6 != '\0') {
    if (*(int *)(lVar5 + 0xe4) == 0) {
      func_0x029f5bd0();
      pcVar6 = *(char **)(*(long *)puVar1 + 0xb8);
    }
    lVar5 = *(long *)(param_1 + 0x80);
    *pcVar6 = '\0';
    *(undefined1 *)(param_1 + 0x55) = 1;
    puVar3 = PTR_DAT_05e5dd68;
    puVar2 = PTR_DAT_05e5d920;
    if (lVar5 != 0) {
      SpeedRun_Slider_Value_Reload_0x6000edd(0x3f800000);
      SpeedRun_manager_SendDgResult_0x6000ea6(param_1,1);
      iVar7 = *(int *)(*(long *)puVar2 + 0xe4);
      *(int *)(param_1 + 0x30) = *(int *)(param_1 + 0x30) + 1;
      if (iVar7 == 0) {
        func_0x029f5bd0();
      }
      uVar4 = Shop_manager_get_Is_RewardBonus_Auto(0);
      lVar5 = *(long *)puVar3;
      if ((uVar4 & 1) == 0) {
        if (*(int *)(lVar5 + 0xe4) == 0) {
          func_0x029f5bd0();
          lVar5 = *(long *)puVar3;
        }
        iVar7 = **(int **)(lVar5 + 0xb8);
        if (*(int *)(*(long *)puVar1 + 0xe4) == 0) {
          func_0x029f5bd0(*(long *)puVar1);
        }
      }
      else {
        if (*(int *)(lVar5 + 0xe4) == 0) {
          func_0x029f5bd0();
          lVar5 = *(long *)puVar3;
        }
        iVar7 = **(int **)(lVar5 + 0xb8);
        if (*(int *)(*(long *)puVar1 + 0xe4) == 0) {
          func_0x029f5bd0(*(long *)puVar1);
        }
        iVar7 = iVar7 << 2;
      }
      Gamemanager_Get_Dia_0x6000078(iVar7,0);
      if (*(long *)(param_1 + 0xa0) != 0) {
        GameObject_SetActive_0x6000cfe(*(long *)(param_1 + 0xa0),(uVar4 ^ 1) & 1,0);
        if (*(long *)(param_1 + 0x90) != 0) {
          GameObject_SetActive_0x6000cfe(*(long *)(param_1 + 0x90),(uVar4 ^ 1) & 1,0);
          if (*(long *)(param_1 + 0x98) != 0) {
            GameObject_SetActive_0x6000cfe(*(long *)(param_1 + 0x98),uVar4 & 1,0);
            if (cRam000000000625ba57 == '\0') {
              func_0x029f5a50(PTR_DAT_05e5dd70);
              cRam000000000625ba57 = '\x01';
            }
            if (**(long **)(*(long *)PTR_DAT_05e5dd70 + 0xb8) != 0) {
              Sound_manager_PlaySfx_0x600054a
                        (0x3f800000,**(long **)(*(long *)PTR_DAT_05e5dd70 + 0xb8),0xb,0,0);
              if (*(long *)(param_1 + 0x38) != 0) {
                GameObject_SetActive_0x6000cfe(*(long *)(param_1 + 0x38),1,0);
                return;
              }
            }
          }
        }
      }
    }
                    /* WARNING: Subroutine does not return */
    Throw_NullReference_Wrapper();
  }
  return;
}

