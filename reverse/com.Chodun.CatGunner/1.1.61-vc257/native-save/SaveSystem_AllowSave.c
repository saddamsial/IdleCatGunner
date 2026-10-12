/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b14570, Ghidra VA 02c14570. */

void SaveSystem_AllowSave(void)

{
  int iVar1;
  undefined *puVar2;
  undefined *puVar3;
  undefined *puVar4;
  
  puVar3 = PTR_DAT_05e5df00;
  puVar2 = PTR_DAT_05e58f08;
  if ((bRam000000000625beef & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e58f08);
    func_0x029f5a50(PTR_DAT_05e5df00);
    func_0x029f5a50(PTR_DAT_05e62678);
    bRam000000000625beef = 1;
  }
  puVar4 = PTR_DAT_05e62678;
  iVar1 = *(int *)(*(long *)puVar2 + 0xe4);
  **(undefined1 **)(*(long *)puVar3 + 0xb8) = 1;
  if (iVar1 == 0) {
    func_0x029f5bd0();
  }
  Debug_Log_0x600033c(*(undefined8 *)puVar4,0);
  return;
}

