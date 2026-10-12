/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b26788, Ghidra VA 02c26788. */

void Currency_OnDisable(undefined8 param_1)

{
  undefined *puVar1;
  undefined *puVar2;
  undefined *puVar3;
  undefined8 uVar4;
  
  puVar3 = PTR_DAT_05e62d18;
  puVar2 = PTR_DAT_05e5d338;
  puVar1 = PTR_DAT_05e59288;
  if ((bRam000000000625bfac & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e59288);
    func_0x029f5a50(PTR_DAT_05e62d18);
    func_0x029f5a50(PTR_DAT_05e5d338);
    bRam000000000625bfac = 1;
  }
  uVar4 = func_0x029f5cec(*(undefined8 *)puVar1);
  Action__ctor_0x60003a5(uVar4,param_1,*(undefined8 *)puVar3,0);
  if (*(int *)(*(long *)puVar2 + 0xe4) == 0) {
    func_0x029f5bd0();
  }
  Gamemanager_remove_OnMoneyChanged_0x600004b(uVar4,0);
  uVar4 = func_0x029f5cec(*(undefined8 *)puVar1);
  Action__ctor_0x60003a5(uVar4,param_1,*(undefined8 *)puVar3,0);
  Gamemanager_remove_OnDiaChanged_0x600004d(uVar4,0);
  return;
}

