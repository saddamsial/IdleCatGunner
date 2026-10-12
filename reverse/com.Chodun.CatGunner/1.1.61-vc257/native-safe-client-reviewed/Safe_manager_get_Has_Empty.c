/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b6bde4, Ghidra VA 02c6bde4. */

bool Safe_manager_get_Has_Empty(void)

{
  int iVar1;
  
  iVar1 = Safe_manager_FindFirstEmpty();
  return iVar1 != -1;
}

