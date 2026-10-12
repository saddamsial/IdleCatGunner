/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b44ac8, Ghidra VA 02c44ac8. */

void Mute_Panel_OnEnable(void)

{
  undefined *puVar1;
  
  puVar1 = PTR_DAT_05e5d5b0;
  if ((bRam000000000625c0cd & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e5d5b0);
    bRam000000000625c0cd = 1;
  }
  **(undefined1 **)(*(long *)puVar1 + 0xb8) = 1;
  return;
}

