/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2bb39dc, Ghidra VA 02cb39dc. */

undefined1  [16] Upgrade_manager__ctor(ulong param_1)

{
  undefined *puVar1;
  undefined1 auVar2 [16];
  
  puVar1 = PTR_DAT_05e591c0;
  if ((bRam000000000626c4ef & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e591c0,0);
    bRam000000000626c4ef = 1;
  }
  if (*(int *)(*(long *)puVar1 + 0xe4) == 0) {
    func_0x029f5bd0();
  }
  auVar2._8_8_ = 0;
  auVar2._0_8_ = param_1;
  return auVar2;
}

