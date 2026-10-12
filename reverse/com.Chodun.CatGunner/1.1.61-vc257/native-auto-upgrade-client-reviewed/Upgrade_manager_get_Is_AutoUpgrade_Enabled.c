/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2bb1d6c, Ghidra VA 02cb1d6c. */

undefined8 Upgrade_manager_get_Is_AutoUpgrade_Enabled(void)

{
  undefined *puVar1;
  long lVar2;
  undefined8 uVar3;
  
  puVar1 = PTR_DAT_05e5d920;
  if ((bRam000000000625c56b & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e5d920);
    func_0x029f5a50(PTR_DAT_05e5d4e8);
    bRam000000000625c56b = 1;
  }
  lVar2 = *(long *)puVar1;
  if (*(int *)(lVar2 + 0xe4) == 0) {
    func_0x029f5bd0();
    lVar2 = *(long *)puVar1;
  }
  if (*(char *)(*(long *)(lVar2 + 0xb8) + 10) != '\0') {
    return 1;
  }
  if (*(int *)(*(long *)PTR_DAT_05e5d4e8 + 0xe4) == 0) {
    func_0x029f5bd0();
  }
  uVar3 = Upgrade_manager_get_AutoUpgradeAd_Active();
  return uVar3;
}

