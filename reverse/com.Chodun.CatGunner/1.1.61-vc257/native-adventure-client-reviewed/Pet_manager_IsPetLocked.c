/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b7cc68, Ghidra VA 02c7cc68. */

bool Pet_manager_IsPetLocked(long param_1,uint param_2)

{
  bool bVar1;
  long lVar2;
  
  bVar1 = false;
  if ((-1 < (int)param_2) && (lVar2 = *(long *)(param_1 + 0x40), lVar2 != 0)) {
    if (*(int *)(lVar2 + 0x18) <= (int)param_2) {
      return false;
    }
    bVar1 = *(int *)(lVar2 + (ulong)param_2 * 4 + 0x20) != -1;
  }
  return bVar1;
}

