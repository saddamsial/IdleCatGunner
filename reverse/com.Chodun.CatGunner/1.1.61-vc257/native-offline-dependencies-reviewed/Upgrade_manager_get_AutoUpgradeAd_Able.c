/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2bb35c0, Ghidra VA 02cb35c0. */

uint Upgrade_manager_get_AutoUpgradeAd_Able(void)

{
  undefined *puVar1;
  uint uVar2;
  long lVar3;
  ulong uVar4;
  
  puVar1 = PTR_DAT_05e5d920;
  if ((bRam000000000625c56a & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e5d920);
    func_0x029f5a50(PTR_DAT_05e5d4e8);
    bRam000000000625c56a = 1;
  }
  lVar3 = *(long *)puVar1;
  if (*(int *)(lVar3 + 0xe4) == 0) {
    func_0x029f5bd0();
    lVar3 = *(long *)puVar1;
  }
  puVar1 = PTR_DAT_05e5d4e8;
  if (*(char *)(*(long *)(lVar3 + 0xb8) + 10) == '\0') {
    if (*(int *)(*(long *)PTR_DAT_05e5d4e8 + 0xe4) == 0) {
      func_0x029f5bd0();
    }
    uVar4 = Upgrade_manager_get_AutoUpgradeAd_Active();
    if ((uVar4 & 1) == 0) {
      if (*(int *)(*(long *)puVar1 + 0xe4) == 0) {
        func_0x029f5bd0();
      }
      uVar2 = Upgrade_manager_get_AutoUpgradeAd_WatchedToday();
      uVar2 = uVar2 ^ 1;
      goto LAB_02cb3640;
    }
  }
  uVar2 = 0;
LAB_02cb3640:
  return uVar2 & 1;
}

