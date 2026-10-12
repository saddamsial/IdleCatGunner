/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2a9ed38, Ghidra VA 02b9ed38. */

void DailyCheck_OnEnable(undefined8 param_1)

{
  undefined *puVar1;
  undefined *puVar2;
  undefined *puVar3;
  undefined *puVar4;
  undefined *puVar5;
  undefined8 uVar6;
  
  puVar4 = PTR_DAT_05e5e500;
  puVar3 = PTR_DAT_05e5e4f8;
  puVar2 = PTR_DAT_05e5d3c0;
  puVar1 = PTR_DAT_05e59288;
  if ((bRam000000000625b9f3 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e59288);
    func_0x029f5a50(PTR_DAT_05e5e508);
    func_0x029f5a50(PTR_DAT_05e5e500);
    func_0x029f5a50(PTR_DAT_05e5e4f8);
    func_0x029f5a50(PTR_DAT_05e5d3c0);
    bRam000000000625b9f3 = 1;
  }
  **(undefined8 **)(*(long *)puVar3 + 0xb8) = param_1;
  puVar5 = PTR_DAT_05e5e508;
  Managed_WriteBarrier(*(undefined8 *)(*(long *)puVar3 + 0xb8),param_1);
  uVar6 = func_0x029f5cec(*(undefined8 *)puVar1);
  Action__ctor_0x60003a5(uVar6,param_1,*(undefined8 *)puVar4,0);
  if (*(int *)(*(long *)puVar2 + 0xe4) == 0) {
    func_0x029f5bd0();
  }
  Time_manager_add_OnSynced_0x600055c(uVar6,0);
  uVar6 = func_0x029f5cec(*(undefined8 *)puVar1);
  Action__ctor_0x60003a5(uVar6,param_1,*(undefined8 *)puVar5,0);
  Time_manager_add_OnCheckSettled_0x6000562(uVar6,0);
  return;
}

