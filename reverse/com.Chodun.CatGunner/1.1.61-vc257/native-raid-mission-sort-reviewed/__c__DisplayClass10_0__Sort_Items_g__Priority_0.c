/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b55e18, Ghidra VA 02c55e18. */

byte __c__DisplayClass10_0__Sort_Items_g__Priority_0(long param_1,int param_2)

{
  char cVar1;
  byte bVar2;
  
  if (param_2 < 2) {
    if (param_2 != 0) {
      if (param_2 != 1) {
        return 99;
      }
      return 0;
    }
    cVar1 = *(char *)(param_1 + 0x10);
    bVar2 = 1;
  }
  else {
    if (param_2 == 2) {
      return *(byte *)(param_1 + 0x10) ^ 1;
    }
    if (param_2 != 3) {
      return 99;
    }
    cVar1 = *(char *)(param_1 + 0x10);
    bVar2 = 2;
  }
  if (cVar1 == '\0') {
    bVar2 = bVar2 + 1;
  }
  return bVar2;
}

