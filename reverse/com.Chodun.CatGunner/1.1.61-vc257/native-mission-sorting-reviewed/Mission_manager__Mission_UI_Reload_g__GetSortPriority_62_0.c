/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2aa6c64, Ghidra VA 02ba6c64. */

byte Mission_manager__Mission_UI_Reload_g__GetSortPriority_62_0(int param_1,long param_2)

{
  char cVar1;
  undefined *puVar2;
  byte bVar3;
  long lVar4;
  
  if ((bRam000000000625ba56 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e5dd50);
    bRam000000000625ba56 = 1;
  }
  puVar2 = PTR_DAT_05e5dd50;
  if (param_1 < 2) {
    if (param_1 != 0) {
      if (param_1 != 1) {
        return 99;
      }
      if (param_2 != 0) {
        if (*(char *)(param_2 + 0x26) != '\0') {
          lVar4 = *(long *)PTR_DAT_05e5dd50;
          if (*(int *)(lVar4 + 0xe4) == 0) {
            func_0x029f5bd0();
            lVar4 = *(long *)puVar2;
          }
          if (**(char **)(lVar4 + 0xb8) == '\0') {
            return 1;
          }
        }
        return 0;
      }
                    /* WARNING: Subroutine does not return */
      Throw_NullReference_Wrapper(99);
    }
    lVar4 = *(long *)PTR_DAT_05e5dd50;
    if (*(int *)(lVar4 + 0xe4) == 0) {
      func_0x029f5bd0();
      lVar4 = *(long *)puVar2;
    }
    cVar1 = *(char *)(*(long *)(lVar4 + 0xb8) + 1);
    bVar3 = 1;
  }
  else {
    if (param_1 != 2) {
      if (param_1 != 3) {
        return 99;
      }
      lVar4 = *(long *)PTR_DAT_05e5dd50;
      if (*(int *)(lVar4 + 0xe4) == 0) {
        func_0x029f5bd0();
        lVar4 = *(long *)puVar2;
      }
      return *(byte *)(*(long *)(lVar4 + 0xb8) + 1) ^ 1;
    }
    lVar4 = *(long *)PTR_DAT_05e5dd50;
    if (*(int *)(lVar4 + 0xe4) == 0) {
      func_0x029f5bd0();
      lVar4 = *(long *)puVar2;
    }
    cVar1 = *(char *)(*(long *)(lVar4 + 0xb8) + 1);
    bVar3 = 2;
  }
  if (cVar1 == '\0') {
    bVar3 = bVar3 + 1;
  }
  return bVar3;
}

