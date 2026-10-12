/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b432dc, Ghidra VA 02c432dc. */

/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */

undefined4 AutoRetreat_DegenerateDirection(void)

{
  if (cRam000000000625c0bf == '\0') {
    func_0x029f5a50(&DAT_05fb0c88);
    cRam000000000625c0bf = '\x01';
  }
  return *(undefined4 *)(*(long *)(_DAT_05fb0c88 + 0xb8) + 0x54);
}

