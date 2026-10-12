/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2bad6ac, Ghidra VA 02cad6ac. */

void Tree_manager_StageAdvance(int *param_1,int *param_2)

{
  int iVar1;
  
  iVar1 = *param_2;
  if (3 < iVar1) {
    *param_2 = 0;
    iVar1 = *param_1;
    param_2 = param_1;
  }
  *param_2 = iVar1 + 1;
  return;
}

