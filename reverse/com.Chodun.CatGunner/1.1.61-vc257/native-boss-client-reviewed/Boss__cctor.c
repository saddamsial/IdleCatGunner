/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b4565c, Ghidra VA 02c4565c. */

/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */

void Boss__cctor(void)

{
  undefined *puVar1;
  undefined8 *puVar2;
  
  puVar1 = PTR_DAT_05e632f8;
  if ((bRam000000000625c0d6 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e632f8);
    bRam000000000625c0d6 = 1;
  }
  puVar2 = *(undefined8 **)(*(long *)puVar1 + 0xb8);
  *puVar2 = _UNK_0116fb78;
  *(undefined4 *)(puVar2 + 1) = 0;
  return;
}

