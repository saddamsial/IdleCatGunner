/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b7d764, Ghidra VA 02c7d764. */

void Pet_manager_get_is_AutoMergeAble(void)

{
  undefined *puVar1;
  
  puVar1 = PTR_DAT_05e5e0b8;
  if ((bRam000000000625c32b & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e5e0b8);
    bRam000000000625c32b = 1;
  }
  if (*(int *)(*(long *)puVar1 + 0xe4) == 0) {
    func_0x029f5bd0();
  }
  PlusPack_Is_Active_0x6000d35(2,0);
  return;
}

