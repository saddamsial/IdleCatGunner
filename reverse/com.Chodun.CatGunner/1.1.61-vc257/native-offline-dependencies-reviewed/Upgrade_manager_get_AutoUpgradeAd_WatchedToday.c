/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2bb3558, Ghidra VA 02cb3558. */

void Upgrade_manager_get_AutoUpgradeAd_WatchedToday(void)

{
  undefined *puVar1;
  long lVar2;
  undefined8 uVar3;
  undefined8 uVar4;
  
  puVar1 = PTR_DAT_05e5d4e8;
  if ((bRam000000000625c569 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e5d4e8);
    bRam000000000625c569 = 1;
  }
  lVar2 = *(long *)puVar1;
  if (*(int *)(lVar2 + 0xe4) == 0) {
    func_0x029f5bd0();
    lVar2 = *(long *)puVar1;
  }
  uVar4 = *(undefined8 *)(*(long *)(lVar2 + 0xb8) + 8);
  uVar3 = Upgrade_manager_AutoUpgradeAd_TodayKey();
  String_op_Equality_0x600025a(uVar4,uVar3,0);
  return;
}

