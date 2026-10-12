/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b908b0, Ghidra VA 02c908b0. */

undefined4 PlusPack_get_Reward_Mult_Boss(void)

{
  undefined *puVar1;
  ulong uVar2;
  undefined4 uVar3;
  
  puVar1 = PTR_DAT_05e5e0b8;
  if ((bRam000000000625c3e6 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e5e0b8);
    bRam000000000625c3e6 = 1;
  }
  if (*(int *)(*(long *)puVar1 + 0xe4) == 0) {
    func_0x029f5bd0();
  }
  uVar2 = PlusPack_Is_Active(1);
  uVar3 = 0x40000000;
  if ((uVar2 & 1) == 0) {
    uVar3 = 0x3f800000;
  }
  return uVar3;
}

