/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2ba9adc, Ghidra VA 02ca9adc. */

void SpeedRun_manager_Game_Sweep(long param_1)

{
  undefined *puVar1;
  undefined *puVar2;
  uint uVar3;
  ulong uVar4;
  long lVar5;
  int iVar6;
  
  if ((bRam000000000625c4fd & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e5d338);
    func_0x029f5a50(PTR_DAT_05e5d920);
    func_0x029f5a50(PTR_DAT_05e5dd68);
    bRam000000000625c4fd = 1;
  }
  uVar4 = SpeedRun_manager_is_SweepAble(param_1);
  puVar1 = PTR_DAT_05e5d920;
  if ((uVar4 & 1) != 0) {
    *(undefined2 *)(param_1 + 0x54) = 0;
    puVar2 = PTR_DAT_05e5dd68;
    *(undefined1 *)(param_1 + 0x56) = 0;
    *(undefined4 *)(param_1 + 0x50) = *(undefined4 *)(param_1 + 0x30);
    *(undefined1 *)(param_1 + 200) = 1;
    SpeedRun_manager_SendDgResult_0x6000ea6(param_1,1);
    iVar6 = *(int *)(*(long *)puVar1 + 0xe4);
    *(int *)(param_1 + 0x30) = *(int *)(param_1 + 0x30) + 1;
    if (iVar6 == 0) {
      func_0x029f5bd0();
    }
    puVar1 = PTR_DAT_05e5d338;
    uVar3 = Shop_manager_get_Is_RewardBonus_Auto_0x6000d61(0);
    lVar5 = *(long *)puVar2;
    if ((uVar3 & 1) == 0) {
      if (*(int *)(lVar5 + 0xe4) == 0) {
        func_0x029f5bd0();
        lVar5 = *(long *)puVar2;
      }
      iVar6 = **(int **)(lVar5 + 0xb8);
    }
    else {
      if (*(int *)(lVar5 + 0xe4) == 0) {
        func_0x029f5bd0();
        lVar5 = *(long *)puVar2;
      }
      iVar6 = **(int **)(lVar5 + 0xb8) << 2;
    }
    if (*(int *)(*(long *)puVar1 + 0xe4) == 0) {
      func_0x029f5bd0();
    }
    Gamemanager_Get_Dia_0x6000078(iVar6,0);
    if (*(long *)(param_1 + 0xc0) != 0) {
      GameObject_SetActive_0x6000cfe(*(long *)(param_1 + 0xc0),(uVar3 ^ 1) & 1,0);
      if (*(long *)(param_1 + 0xb0) != 0) {
        GameObject_SetActive_0x6000cfe(*(long *)(param_1 + 0xb0),(uVar3 ^ 1) & 1,0);
        if (*(long *)(param_1 + 0xb8) != 0) {
          GameObject_SetActive_0x6000cfe(*(long *)(param_1 + 0xb8),uVar3 & 1,0);
          if (cRam000000000625ba57 == '\0') {
            func_0x029f5a50(PTR_DAT_05e5dd70);
            cRam000000000625ba57 = '\x01';
          }
          if (**(long **)(*(long *)PTR_DAT_05e5dd70 + 0xb8) != 0) {
            Sound_manager_PlaySfx_0x600054a
                      (0x3f800000,**(long **)(*(long *)PTR_DAT_05e5dd70 + 0xb8),0xb,0,0);
            if (*(long *)(param_1 + 0xa8) != 0) {
              GameObject_SetActive_0x6000cfe(*(long *)(param_1 + 0xa8),1,0);
              if (*(long *)(param_1 + 0x48) != 0) {
                SpeedRun_Start_UI_Reload();
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

