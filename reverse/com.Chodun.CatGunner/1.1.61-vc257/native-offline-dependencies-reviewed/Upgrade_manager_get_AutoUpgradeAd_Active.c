/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2bb345c, Ghidra VA 02cb345c. */

bool Upgrade_manager_get_AutoUpgradeAd_Active(void)

{
  undefined *puVar1;
  long lVar2;
  
  puVar1 = PTR_DAT_05e5d4e8;
  if ((bRam000000000625c567 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e5d4e8);
    bRam000000000625c567 = 1;
  }
  lVar2 = *(long *)puVar1;
  if (*(int *)(lVar2 + 0xe4) == 0) {
    func_0x029f5bd0();
    lVar2 = *(long *)puVar1;
  }
  return 0.0 < *(float *)(*(long *)(lVar2 + 0xb8) + 0x10);
}

