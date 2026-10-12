/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b53bc0, Ghidra VA 02c53bc0. */

void Raid_Mission_manager_OnDisable(undefined8 param_1)

{
  undefined *puVar1;
  undefined *puVar2;
  undefined *puVar3;
  undefined8 uVar4;
  
  puVar3 = PTR_DAT_05e635e8;
  puVar2 = PTR_DAT_05e5d3c0;
  puVar1 = PTR_DAT_05e59288;
  if ((bRam000000000625c170 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e59288);
    func_0x029f5a50(PTR_DAT_05e635e8);
    func_0x029f5a50(PTR_DAT_05e5d3c0);
    bRam000000000625c170 = 1;
  }
  uVar4 = func_0x029f5cec(*(undefined8 *)puVar1);
  Action__ctor_0x60003a5(uVar4,param_1,*(undefined8 *)puVar3,0);
  if (*(int *)(*(long *)puVar2 + 0xe4) == 0) {
    func_0x029f5bd0();
  }
  Time_manager_remove_OnSynced_0x600055d(uVar4,0);
  uVar4 = func_0x029f5cec(*(undefined8 *)puVar1);
  Action__ctor_0x60003a5(uVar4,param_1,*(undefined8 *)puVar3,0);
  Time_manager_remove_OnCheckSettled_0x6000563(uVar4,0);
  return;
}

