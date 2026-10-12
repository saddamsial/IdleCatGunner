/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2aa3c04, Ghidra VA 02ba3c04. */

void Mission_manager_OnEnable(undefined8 param_1)

{
  undefined *puVar1;
  undefined *puVar2;
  undefined *puVar3;
  undefined *puVar4;
  undefined8 uVar5;
  
  puVar3 = PTR_DAT_05e5e6d8;
  puVar2 = PTR_DAT_05e5d3c0;
  puVar1 = PTR_DAT_05e59288;
  if ((bRam000000000625ba35 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e59288);
    func_0x029f5a50(PTR_DAT_05e5e6e0);
    func_0x029f5a50(PTR_DAT_05e5e6d8);
    func_0x029f5a50(PTR_DAT_05e5d3c0);
    bRam000000000625ba35 = 1;
  }
  puVar4 = PTR_DAT_05e5e6e0;
  uVar5 = func_0x029f5cec(*(undefined8 *)puVar1);
  Action__ctor_0x60003a5(uVar5,param_1,*(undefined8 *)puVar3,0);
  if (*(int *)(*(long *)puVar2 + 0xe4) == 0) {
    func_0x029f5bd0();
  }
  Time_manager_add_OnSynced_0x600055c(uVar5,0);
  uVar5 = func_0x029f5cec(*(undefined8 *)puVar1);
  Action__ctor_0x60003a5(uVar5,param_1,*(undefined8 *)puVar4,0);
  Time_manager_add_OnCheckSettled_0x6000562(uVar5,0);
  return;
}

