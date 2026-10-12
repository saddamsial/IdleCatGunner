/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b919f0, Ghidra VA 02c919f0. */

void PlusPack__cctor(void)

{
  undefined *puVar1;
  undefined *puVar2;
  undefined8 uVar3;
  undefined8 *puVar4;
  
  puVar2 = PTR_DAT_05e64160;
  puVar1 = PTR_DAT_05e5e0b8;
  if ((bRam000000000625c3f8 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e64160);
    func_0x029f5a50(PTR_DAT_05e5e0b8);
    bRam000000000625c3f8 = 1;
  }
  uVar3 = func_0x029f5b40(*(undefined8 *)puVar2,3);
  puVar4 = (undefined8 *)(*(long *)(*(long *)puVar1 + 0xb8) + 8);
  *puVar4 = uVar3;
  Managed_WriteBarrier(puVar4,uVar3);
  return;
}

