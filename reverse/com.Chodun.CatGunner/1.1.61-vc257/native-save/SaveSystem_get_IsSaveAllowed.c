/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b168b8, Ghidra VA 02c168b8. */

undefined1 SaveSystem_get_IsSaveAllowed(void)

{
  undefined *puVar1;
  
  puVar1 = PTR_DAT_05e5df00;
  if ((bRam000000000625beee & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e5df00);
    bRam000000000625beee = 1;
  }
  return **(undefined1 **)(*(long *)puVar1 + 0xb8);
}

