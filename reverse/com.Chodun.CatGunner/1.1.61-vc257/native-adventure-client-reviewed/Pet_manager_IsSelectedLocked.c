/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b7cca4, Ghidra VA 02c7cca4. */

bool Pet_manager_IsSelectedLocked(long param_1,uint param_2)

{
  bool bVar1;
  long lVar2;
  
  bVar1 = false;
  if ((-1 < (int)param_2) && (lVar2 = *(long *)(param_1 + 0x48), lVar2 != 0)) {
    if (*(int *)(lVar2 + 0x18) <= (int)param_2) {
      return false;
    }
    bVar1 = *(int *)(lVar2 + (ulong)param_2 * 4 + 0x20) != -1;
  }
  return bVar1;
}

