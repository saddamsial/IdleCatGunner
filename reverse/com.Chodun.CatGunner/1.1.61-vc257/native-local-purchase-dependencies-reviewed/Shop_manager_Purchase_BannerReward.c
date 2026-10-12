/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b952dc, Ghidra VA 02c952dc. */

void Shop_manager_Purchase_BannerReward(undefined8 param_1,undefined4 param_2)

{
  undefined *puVar1;
  
  puVar1 = PTR_DAT_05e64330;
  if ((bRam000000000625c426 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e64330);
    bRam000000000625c426 = 1;
  }
  Shop_manager_Purchase_0x6000d77(param_1,param_2,*(undefined8 *)puVar1);
  return;
}

