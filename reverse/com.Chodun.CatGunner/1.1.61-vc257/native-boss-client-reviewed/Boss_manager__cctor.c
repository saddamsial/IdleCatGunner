/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b47900, Ghidra VA 02c47900. */

void Boss_manager__cctor(void)

{
  undefined *puVar1;
  
  puVar1 = PTR_DAT_05e5dd30;
  if ((bRam000000000625c0ee & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e5dd30);
    bRam000000000625c0ee = 1;
  }
  **(undefined4 **)(*(long *)puVar1 + 0xb8) = 0x96;
  return;
}

