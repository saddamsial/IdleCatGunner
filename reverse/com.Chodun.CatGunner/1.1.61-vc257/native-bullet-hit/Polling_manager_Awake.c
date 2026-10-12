/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b17b28, Ghidra VA 02c17b28. */

void Polling_manager_Awake(undefined8 param_1)

{
  undefined *puVar1;
  ulong uVar2;
  
  puVar1 = PTR_DAT_05e62768;
  if ((bRam000000000625beff & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e62768);
    bRam000000000625beff = 1;
  }
  **(undefined8 **)(*(long *)puVar1 + 0xb8) = param_1;
  uVar2 = *(ulong *)(*(long *)puVar1 + 0xb8);
  if (iRam0000000006484da8 != 0) {
    func_0x02ae4790(1L << (uVar2 >> 0xc & 0x3f),(uVar2 >> 0x12 & 0x7fff) * 8 + 0x62b8d80);
  }
  return;
}

