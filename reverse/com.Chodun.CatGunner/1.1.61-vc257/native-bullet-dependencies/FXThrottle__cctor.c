/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b673e0, Ghidra VA 02c673e0. */

void FXThrottle__cctor(void)

{
  undefined *puVar1;
  undefined *puVar2;
  undefined8 uVar3;
  ulong uVar4;
  
  puVar2 = PTR_DAT_05e63a40;
  puVar1 = PTR_DAT_05e639f0;
  if ((bRam000000000625c259 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e639f0);
    func_0x029f5a50(PTR_DAT_05e63a40);
    bRam000000000625c259 = 1;
  }
  uVar3 = func_0x029f5b40(*(undefined8 *)puVar2,0x41);
  **(undefined8 **)(*(long *)puVar1 + 0xb8) = uVar3;
  uVar4 = *(ulong *)(*(long *)puVar1 + 0xb8);
  if (iRam0000000006484da8 != 0) {
    func_0x02ae4790(1L << (uVar4 >> 0xc & 0x3f),(uVar4 >> 0x12 & 0x7fff) * 8 + 0x62b8d80);
  }
  return;
}

