/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b7deac, Ghidra VA 02c7deac. */

void Pet_manager_get_AD_Daily_TodayKey(void)

{
  undefined *puVar1;
  undefined *puVar2;
  undefined8 uVar3;
  
  puVar1 = PTR_DAT_05e5d3c0;
  if ((bRam000000000625c332 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e5d3c0);
    func_0x029f5a50(PTR_DAT_05e5d3e0);
    bRam000000000625c332 = 1;
  }
  puVar2 = PTR_DAT_05e5d3e0;
  if (*(int *)(*(long *)puVar1 + 0xe4) == 0) {
    func_0x029f5bd0();
  }
  uVar3 = Time_manager_get_Now_0x6000579(0);
  LoadData_ToStringSafe_0x600047f(uVar3,*(undefined8 *)puVar2,0);
  return;
}

