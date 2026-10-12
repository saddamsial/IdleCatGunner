/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b90978, Ghidra VA 02c90978. */

undefined4 PlusPack_get_Raid_Time_Bonus_Now(void)

{
  undefined *puVar1;
  ulong uVar2;
  undefined4 uVar3;
  
  puVar1 = PTR_DAT_05e5e0b8;
  if ((bRam000000000625c3e8 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e5e0b8);
    bRam000000000625c3e8 = 1;
  }
  if (*(int *)(*(long *)puVar1 + 0xe4) == 0) {
    func_0x029f5bd0();
  }
  uVar2 = PlusPack_Is_Active(0);
  uVar3 = 0x41200000;
  if ((uVar2 & 1) == 0) {
    uVar3 = 0;
  }
  return uVar3;
}

