/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2a9d264, Ghidra VA 02b9d264. */

void Mission_manager_Exp_Get(long param_1,int param_2)

{
  int iVar1;
  undefined *puVar2;
  long lVar3;
  
  if ((bRam000000000625ba40 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e5d540);
    bRam000000000625ba40 = 1;
  }
  if (*(int *)(param_1 + 0x48) != 0x19) {
    param_2 = *(int *)(param_1 + 0x4c) + param_2;
    *(int *)(param_1 + 0x4c) = param_2;
    puVar2 = PTR_DAT_05e5d540;
    while ((99 < param_2 && (*(int *)(param_1 + 0x48) != 0x19))) {
      lVar3 = *(long *)puVar2;
      iVar1 = *(int *)(param_1 + 0x48) + 1;
      *(int *)(param_1 + 0x48) = iVar1;
      *(int *)(param_1 + 0x4c) = param_2 + -100;
      if (*(int *)(lVar3 + 0xe4) == 0) {
        func_0x029f5bd0();
      }
      AppsFlyerInit_SendLog_PassLv_0x6000230(iVar1);
      param_2 = *(int *)(param_1 + 0x4c);
    }
  }
  Mission_manager_UI_Reload_0x600034f(param_1);
  return;
}

