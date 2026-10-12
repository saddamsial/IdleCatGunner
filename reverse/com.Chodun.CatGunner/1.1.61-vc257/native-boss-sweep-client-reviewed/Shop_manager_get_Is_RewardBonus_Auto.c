/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b92704, Ghidra VA 02c92704. */

undefined8 Shop_manager_get_Is_RewardBonus_Auto(void)

{
  undefined *puVar1;
  long lVar2;
  undefined8 uVar3;
  
  puVar1 = PTR_DAT_05e5d920;
  if ((bRam000000000625c40a & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e5d920);
    bRam000000000625c40a = 1;
  }
  lVar2 = *(long *)puVar1;
  if (*(int *)(lVar2 + 0xe4) == 0) {
    func_0x029f5bd0();
    lVar2 = *(long *)puVar1;
  }
  if (*(char *)(*(long *)(lVar2 + 0xb8) + 9) != '\0') {
    return 1;
  }
  uVar3 = FreeCash_manager_get_RewardAdRemoved_0x6000300(0);
  return uVar3;
}

