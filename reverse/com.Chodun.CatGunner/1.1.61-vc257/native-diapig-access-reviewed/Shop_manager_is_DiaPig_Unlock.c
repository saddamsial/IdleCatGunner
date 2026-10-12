/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b8c8f4, Ghidra VA 02c8c8f4. */

bool Shop_manager_is_DiaPig_Unlock(void)

{
  undefined *puVar1;
  bool bVar2;
  long lVar3;
  long lVar4;
  
  puVar1 = PTR_DAT_05e5d920;
  if ((bRam000000000625c456 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e5d920);
    bRam000000000625c456 = 1;
  }
  lVar3 = *(long *)puVar1;
  if (*(int *)(lVar3 + 0xe4) == 0) {
    func_0x029f5bd0();
    lVar3 = *(long *)puVar1;
  }
  lVar4 = *(long *)(lVar3 + 0xb8);
  if (*(char *)(lVar4 + 9) == '\0') {
    if (*(int *)(lVar3 + 0xe4) == 0) {
      func_0x029f5bd0();
      lVar4 = *(long *)(*(long *)puVar1 + 0xb8);
    }
    bVar2 = *(char *)(lVar4 + 8) != '\0';
  }
  else {
    bVar2 = true;
  }
  return bVar2;
}

