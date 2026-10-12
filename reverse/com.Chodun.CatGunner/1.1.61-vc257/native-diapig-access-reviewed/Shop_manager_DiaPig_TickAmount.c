/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b8d3cc, Ghidra VA 02c8d3cc. */

int Shop_manager_DiaPig_TickAmount(void)

{
  undefined *puVar1;
  long lVar2;
  uint uVar3;
  
  puVar1 = PTR_DAT_05e5d920;
  if ((bRam000000000625c457 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e5d920);
    bRam000000000625c457 = 1;
  }
  if (*(int *)(*(long *)puVar1 + 0xe4) == 0) {
    func_0x029f5bd0();
    lVar2 = *(long *)(*(long *)puVar1 + 0xb8);
    uVar3 = (uint)*(byte *)(lVar2 + 8);
    if (*(int *)(*(long *)puVar1 + 0xe4) == 0) {
      func_0x029f5bd0();
      lVar2 = *(long *)(*(long *)puVar1 + 0xb8);
    }
  }
  else {
    lVar2 = *(long *)(*(long *)puVar1 + 0xb8);
    uVar3 = (uint)*(byte *)(lVar2 + 8);
  }
  return *(byte *)(lVar2 + 9) + uVar3;
}

