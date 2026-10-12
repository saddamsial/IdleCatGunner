/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b8b1c0, Ghidra VA 02c8b1c0. */

uint DailyGun_Week_Offset_return(void)

{
  uint uVar1;
  uint uVar2;
  undefined *puVar3;
  int iVar4;
  
  puVar3 = PTR_DAT_05e62660;
  if ((bRam000000000625c3a8 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e62660);
    bRam000000000625c3a8 = 1;
  }
  if (*(int *)(*(long *)puVar3 + 0xe4) == 0) {
    func_0x029f5bd0();
  }
  iVar4 = DailyGun_WeekIndex_return();
  uVar2 = iVar4 % 5;
  uVar1 = uVar2 + 5;
  if (uVar2 < 0xfffffffb) {
    uVar1 = uVar2;
  }
  return uVar1;
}

