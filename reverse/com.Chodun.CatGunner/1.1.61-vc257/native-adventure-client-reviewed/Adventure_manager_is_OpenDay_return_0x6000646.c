/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b2e664, Ghidra VA 02c2e664. */

uint Adventure_manager_is_OpenDay_return_0x6000646(int param_1)

{
  undefined *puVar1;
  undefined *puVar2;
  uint uVar3;
  uint uVar4;
  undefined8 uStack_28;
  
  puVar2 = PTR_DAT_05e5d3c0;
  if ((bRam000000000625c00e & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e5dd28);
    func_0x029f5a50(PTR_DAT_05e597d0);
    func_0x029f5a50(PTR_DAT_05e5d3c0);
    bRam000000000625c00e = 1;
  }
  puVar1 = PTR_DAT_05e597d0;
  uStack_28 = 0;
  if (*(int *)(*(long *)puVar2 + 0xe4) == 0) {
    func_0x029f5bd0();
  }
  puVar2 = PTR_DAT_05e5dd28;
  uStack_28 = Time_manager_get_Now_0x6000579();
  if (*(int *)(*(long *)puVar1 + 0xe4) == 0) {
    func_0x029f5bd0(*(long *)puVar1);
  }
  uVar3 = DateTime_get_DayOfWeek_0x6000614(&uStack_28,0);
  if (*(int *)(*(long *)puVar2 + 0xe4) == 0) {
    func_0x029f5bd0(*(long *)puVar2);
  }
  if (param_1 == 2) {
    if (6 < uVar3) {
      return 0;
    }
    uVar4 = 0x49;
  }
  else if (param_1 == 1) {
    if (5 < uVar3) {
      return 0;
    }
    uVar4 = 0x25;
  }
  else {
    if ((param_1 != 0) || (4 < uVar3)) {
      return 0;
    }
    uVar4 = 0x13;
  }
  return uVar4 >> (ulong)(uVar3 & 0x1f) & 1;
}

