/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b7d834, Ghidra VA 02c7d834. */

int Pet_manager_get_AutoMerge_Limit_Degree(long param_1)

{
  int iVar1;
  int iVar2;
  
  iVar1 = *(int *)(param_1 + 100);
  iVar2 = Pet_manager_get_Max_Collected_Degree();
  if (iVar2 + -1 <= iVar1) {
    iVar1 = iVar2 + -1;
  }
  if (5 < iVar1) {
    iVar1 = 6;
  }
  return iVar1;
}

