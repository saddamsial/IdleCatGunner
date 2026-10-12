/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2baf18c, Ghidra VA 02caf18c. */

void Tutorial_manager_Start(long param_1)

{
  int iVar1;
  
  if ((bRam000000000625c535 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e5d4e8);
    bRam000000000625c535 = 1;
  }
  if (*(char *)(param_1 + 0x70) == '\0') {
    if (*(int *)(*(long *)PTR_DAT_05e5d4e8 + 0xe4) == 0) {
      func_0x029f5bd0();
    }
    iVar1 = Upgrade_manager_Lv_return_0x6000f92(0);
    if (iVar1 < 1) {
      Tutorial_manager_BeginTutorial(param_1);
      return;
    }
  }
  Tutorial_manager_CompleteTutorial(param_1);
  return;
}

