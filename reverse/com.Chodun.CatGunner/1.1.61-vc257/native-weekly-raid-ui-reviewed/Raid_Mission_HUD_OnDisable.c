/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b526f0, Ghidra VA 02c526f0. */

void Raid_Mission_HUD_OnDisable(undefined8 param_1)

{
  undefined *puVar1;
  undefined *puVar2;
  undefined8 uVar3;
  
  puVar2 = PTR_DAT_05e635b0;
  puVar1 = PTR_DAT_05e59288;
  if ((bRam000000000625c166 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e59288);
    func_0x029f5a50(PTR_DAT_05e635b0);
    bRam000000000625c166 = 1;
  }
  uVar3 = func_0x029f5cec(*(undefined8 *)puVar1);
  Action__ctor_0x60003a5(uVar3,param_1,*(undefined8 *)puVar2,0);
  Raid_Mission_manager_remove_OnChanged(uVar3);
  return;
}

