/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2baa7c4, Ghidra VA 02caa7c4. */

void SpeedRun_manager__cctor(void)

{
  undefined *puVar1;
  
  puVar1 = PTR_DAT_05e5dd68;
  if ((bRam000000000625c505 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e5dd68);
    bRam000000000625c505 = 1;
  }
  **(undefined4 **)(*(long *)puVar1 + 0xb8) = 0x1e;
  return;
}

