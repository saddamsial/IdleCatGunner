/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2bb39e4, Ghidra VA 02cb39e4. */

void Upgrade_manager__cctor(void)

{
  undefined *puVar1;
  undefined *puVar2;
  
  puVar2 = PTR_DAT_05e5d4e8;
  puVar1 = PTR_DAT_05e59050;
  if ((bRam000000000625c56f & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e5d4e8);
    func_0x029f5a50(PTR_DAT_05e59050);
    bRam000000000625c56f = 1;
  }
  *(undefined8 *)(*(long *)(*(long *)puVar2 + 0xb8) + 8) = *(undefined8 *)puVar1;
  Managed_WriteBarrier();
  *(undefined4 *)(*(long *)(*(long *)puVar2 + 0xb8) + 0x10) = 0;
  return;
}

