/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b17544, Ghidra VA 02c17544. */

void SaveSystem_DisallowSave(void)

{
  int iVar1;
  undefined *puVar2;
  undefined *puVar3;
  undefined *puVar4;
  
  puVar3 = PTR_DAT_05e5df00;
  puVar2 = PTR_DAT_05e58f08;
  if ((bRam000000000625bef9 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e58f08);
    func_0x029f5a50(PTR_DAT_05e5df00);
    func_0x029f5a50(PTR_DAT_05e62748);
    bRam000000000625bef9 = 1;
  }
  puVar4 = PTR_DAT_05e62748;
  iVar1 = *(int *)(*(long *)puVar2 + 0xe4);
  **(undefined1 **)(*(long *)puVar3 + 0xb8) = 0;
  if (iVar1 == 0) {
    func_0x029f5bd0();
  }
  Debug_Log_0x600033c(*(undefined8 *)puVar4,0);
  return;
}

