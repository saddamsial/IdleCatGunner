/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2bb1b18, Ghidra VA 02cb1b18. */

void Upgrade_list_OnEnable(long param_1)

{
  undefined *puVar1;
  undefined *puVar2;
  undefined *puVar3;
  undefined8 uVar4;
  
  puVar3 = PTR_DAT_05e64b88;
  puVar2 = PTR_DAT_05e5d338;
  puVar1 = PTR_DAT_05e59288;
  if ((bRam000000000625c54e & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e59288);
    func_0x029f5a50(PTR_DAT_05e5d338);
    func_0x029f5a50(PTR_DAT_05e64b88);
    bRam000000000625c54e = 1;
  }
  uVar4 = func_0x029f5cec(*(undefined8 *)puVar1);
  Action__ctor_0x60003a5(uVar4,param_1,*(undefined8 *)puVar3,0);
  if (*(int *)(*(long *)puVar2 + 0xe4) == 0) {
    func_0x029f5bd0();
  }
  Gamemanager_add_OnMoneyChanged_0x600004a(uVar4,0);
  *(undefined1 *)(param_1 + 0x28) = 1;
  return;
}

