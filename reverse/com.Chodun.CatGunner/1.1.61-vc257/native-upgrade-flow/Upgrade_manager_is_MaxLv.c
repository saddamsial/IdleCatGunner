/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2bb1400, Ghidra VA 02cb1400. */

bool Upgrade_manager_is_MaxLv(undefined4 param_1)

{
  undefined *puVar1;
  int iVar2;
  
  puVar1 = PTR_DAT_05e5d4e8;
  if ((bRam000000000625c55b & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e5d4e8);
    bRam000000000625c55b = 1;
  }
  if (*(int *)(*(long *)puVar1 + 0xe4) == 0) {
    func_0x029f5bd0();
  }
  iVar2 = Upgrade_manager_Lv_return_0x6000f92(param_1);
  return 9999 < iVar2;
}

