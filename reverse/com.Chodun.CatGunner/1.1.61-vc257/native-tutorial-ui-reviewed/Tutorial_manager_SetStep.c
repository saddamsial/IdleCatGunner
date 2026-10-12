/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2baf65c, Ghidra VA 02caf65c. */

void Tutorial_manager_SetStep(long param_1,int param_2)

{
  if ((bRam000000000625c538 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e5d540);
    bRam000000000625c538 = 1;
  }
  *(int *)(param_1 + 0x60) = param_2;
  if (param_2 == 5) {
    Tutorial_manager_CompleteTutorial(param_1);
    return;
  }
  if (*(int *)(*(long *)PTR_DAT_05e5d540 + 0xe4) == 0) {
    func_0x029f5bd0();
  }
  AppsFlyerInit_SendLog_Tutorial_0x6000229(0,param_2,0);
  if (param_2 < 2) {
    if (param_2 == 0) {
      Tutorial_manager_Enter_Upgrade(param_1);
      return;
    }
    if (param_2 == 1) {
      Tutorial_manager_Enter_Challenge(param_1);
      return;
    }
  }
  else {
    if (param_2 == 2) {
      Tutorial_manager_Enter_GunOpen(param_1);
      return;
    }
    if (param_2 == 3) {
      Tutorial_manager_Enter_GunBuy(param_1);
      return;
    }
    if (param_2 == 4) {
      Tutorial_manager_Enter_GunEquip(param_1);
      return;
    }
  }
  return;
}

