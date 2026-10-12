/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b9196c, Ghidra VA 02c9196c. */

undefined8 PlusPack_Banner_ShouldShow(undefined4 param_1)

{
  undefined *puVar1;
  ulong uVar2;
  undefined8 uVar3;
  
  puVar1 = PTR_DAT_05e5e0b8;
  if ((bRam000000000625c3f7 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e5e0b8);
    bRam000000000625c3f7 = 1;
  }
  if (*(int *)(*(long *)puVar1 + 0xe4) == 0) {
    func_0x029f5bd0();
  }
  uVar2 = PlusPack_Is_Active(param_1);
  if ((uVar2 & 1) != 0) {
    return 0;
  }
  if (*(int *)(*(long *)puVar1 + 0xe4) == 0) {
    func_0x029f5bd0();
  }
  uVar3 = PlusPack_Is_Banner_Stage_OK();
  return uVar3;
}

