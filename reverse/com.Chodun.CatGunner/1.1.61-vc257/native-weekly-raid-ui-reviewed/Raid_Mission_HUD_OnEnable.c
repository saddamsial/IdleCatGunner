/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b524c8, Ghidra VA 02c524c8. */

void Raid_Mission_HUD_OnEnable(undefined8 param_1)

{
  undefined *puVar1;
  undefined *puVar2;
  undefined8 uVar3;
  
  puVar2 = PTR_DAT_05e635b0;
  puVar1 = PTR_DAT_05e59288;
  if ((bRam000000000625c165 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e59288);
    func_0x029f5a50(PTR_DAT_05e635b0);
    bRam000000000625c165 = 1;
  }
  uVar3 = func_0x029f5cec(*(undefined8 *)puVar1);
  Action__ctor_0x60003a5(uVar3,param_1,*(undefined8 *)puVar2,0);
  Raid_Mission_manager_add_OnChanged(uVar3);
  Raid_Mission_HUD_Reload(param_1);
  return;
}

