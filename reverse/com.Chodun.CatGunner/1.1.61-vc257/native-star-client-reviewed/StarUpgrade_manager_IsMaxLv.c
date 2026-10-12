/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b6d93c, Ghidra VA 02c6d93c. */

bool StarUpgrade_manager_IsMaxLv(long param_1,uint param_2)

{
  bool bVar1;
  long lVar2;
  
  bVar1 = false;
  if ((-1 < (int)param_2) && (lVar2 = *(long *)(param_1 + 0x30), lVar2 != 0)) {
    if (*(int *)(lVar2 + 0x18) <= (int)param_2) {
      return false;
    }
    bVar1 = 0x13 < *(int *)(lVar2 + (ulong)param_2 * 4 + 0x20);
  }
  return bVar1;
}

