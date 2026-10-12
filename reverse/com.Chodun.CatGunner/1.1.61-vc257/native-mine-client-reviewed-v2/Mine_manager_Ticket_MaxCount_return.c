/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b4946c, Ghidra VA 02c4946c. */

undefined4 Mine_manager_Ticket_MaxCount_return(void)

{
  undefined *puVar1;
  long lVar2;
  undefined4 uVar3;
  
  puVar1 = PTR_DAT_05e5d920;
  if ((bRam000000000625c106 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e5d920);
    bRam000000000625c106 = 1;
  }
  lVar2 = *(long *)puVar1;
  if (*(int *)(lVar2 + 0xe4) == 0) {
    func_0x029f5bd0();
    lVar2 = *(long *)puVar1;
  }
  uVar3 = 2;
  if (*(char *)(*(long *)(lVar2 + 0xb8) + 0xd) != '\0') {
    uVar3 = 6;
  }
  return uVar3;
}

