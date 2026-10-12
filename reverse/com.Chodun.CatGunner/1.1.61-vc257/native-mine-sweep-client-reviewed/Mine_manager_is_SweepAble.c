/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b4a0a0, Ghidra VA 02c4a0a0. */

bool Mine_manager_is_SweepAble(long param_1)

{
  undefined *puVar1;
  bool bVar2;
  ulong uVar3;
  
  puVar1 = PTR_DAT_05e5e0b8;
  if ((bRam000000000625c113 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e5e0b8);
    bRam000000000625c113 = 1;
  }
  if (*(int *)(*(long *)puVar1 + 0xe4) == 0) {
    func_0x029f5bd0();
  }
  uVar3 = PlusPack_Is_Active_0x6000d35(2,0);
  if ((uVar3 & 1) == 0) {
    bVar2 = false;
  }
  else {
    bVar2 = 0 < *(int *)(param_1 + 0x60);
  }
  return bVar2;
}

