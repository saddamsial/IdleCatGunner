/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b1d7a0, Ghidra VA 02c1d7a0. */

void AutoUpgrade_UI_Update(long param_1)

{
  undefined *puVar1;
  ulong uVar2;
  undefined8 uVar3;
  long *plVar4;
  
  if ((bRam000000000625bf34 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e5d4e8);
    bRam000000000625bf34 = 1;
  }
  puVar1 = PTR_DAT_05e5d4e8;
  if (*(char *)(param_1 + 0x58) == '\0') {
    return;
  }
  if (*(int *)(*(long *)PTR_DAT_05e5d4e8 + 0xe4) == 0) {
    func_0x029f5bd0();
  }
  uVar2 = Upgrade_manager_get_AutoUpgradeAd_Active(0);
  if ((uVar2 & 1) != 0) {
    plVar4 = *(long **)(param_1 + 0x50);
    if (*(int *)(*(long *)puVar1 + 0xe4) == 0) {
      func_0x029f5bd0();
    }
    Upgrade_manager_get_AutoUpgradeAd_Remain(0);
    uVar3 = AutoUpgrade_UI_TimeStr();
    if (plVar4 != (long *)0x0) {
                    /* WARNING: Could not recover jumptable at 0x02c1d838. Too many branches */
                    /* WARNING: Treating indirect jump as call */
      (**(code **)(*plVar4 + 0x558))(plVar4,uVar3,*(undefined8 *)(*plVar4 + 0x560));
      return;
    }
                    /* WARNING: Subroutine does not return */
    Throw_NullReference_Wrapper();
  }
  AutoUpgrade_UI_Reload(param_1);
  return;
}

