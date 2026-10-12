/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2bb0e4c, Ghidra VA 02cb0e4c. */

void Upgrade_Ingame_Reload(long param_1)

{
  undefined4 uVar1;
  undefined *puVar2;
  int iVar3;
  
  puVar2 = PTR_DAT_05e5d4e8;
  if ((bRam000000000625c547 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e5d4e8);
    bRam000000000625c547 = 1;
  }
  uVar1 = *(undefined4 *)(param_1 + 0x20);
  if (*(int *)(*(long *)puVar2 + 0xe4) == 0) {
    func_0x029f5bd0();
  }
  iVar3 = Upgrade_manager_Lv_return(uVar1);
  if (iVar3 != *(int *)(param_1 + 0xbc)) {
    Upgrade_Ingame_Reload_Level(param_1,iVar3);
  }
  Upgrade_Ingame_Reload_Money(param_1);
  Upgrade_Ingame_Reload_Buff_0x6000f73(param_1);
  return;
}

