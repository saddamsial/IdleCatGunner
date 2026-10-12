/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2bb366c, Ghidra VA 02cb366c. */

void Upgrade_manager_AutoUpgradeAd_RewardGet(undefined8 param_1)

{
  undefined *puVar1;
  undefined *puVar2;
  undefined8 uVar3;
  long lVar4;
  undefined8 *puVar5;
  
  puVar1 = PTR_DAT_05e5d4e8;
  if ((bRam000000000625c56c & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e62670);
    func_0x029f5a50(PTR_DAT_05e5d4e8);
    bRam000000000625c56c = 1;
  }
  puVar2 = PTR_DAT_05e62670;
  if (*(int *)(*(long *)puVar1 + 0xe4) == 0) {
    func_0x029f5bd0();
  }
  uVar3 = Upgrade_manager_AutoUpgradeAd_TodayKey();
  puVar5 = (undefined8 *)(*(long *)(*(long *)puVar1 + 0xb8) + 8);
  *puVar5 = uVar3;
  Managed_WriteBarrier(puVar5,uVar3);
  *(undefined4 *)(*(long *)(*(long *)puVar1 + 0xb8) + 0x10) = 0x44160000;
  SaveSystem_Save_0x600048a(0);
  if (**(char **)(*(long *)puVar2 + 0xb8) == '\0') {
    Upgrade_manager_AutoUpgrade_All_0x6000f9c(param_1);
  }
  lVar4 = *(long *)puVar1;
  if (*(int *)(lVar4 + 0xe4) == 0) {
    func_0x029f5bd0();
    lVar4 = *(long *)puVar1;
  }
  lVar4 = *(long *)(*(long *)(lVar4 + 0xb8) + 0x18);
  if (lVar4 != 0) {
                    /* WARNING: Could not recover jumptable at 0x02cb3744. Too many branches */
                    /* WARNING: Treating indirect jump as call */
    (**(code **)(lVar4 + 0x18))(*(undefined8 *)(lVar4 + 0x40),*(undefined8 *)(lVar4 + 0x28));
    return;
  }
  return;
}

