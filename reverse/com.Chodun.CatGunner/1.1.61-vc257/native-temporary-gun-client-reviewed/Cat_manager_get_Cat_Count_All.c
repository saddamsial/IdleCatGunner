/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b43fa0, Ghidra VA 02c43fa0. */

int Cat_manager_get_Cat_Count_All(long param_1)

{
  uint uVar1;
  int iVar2;
  
  if (*(long *)(param_1 + 0x20) == 0) {
    iVar2 = 0;
  }
  else {
    iVar2 = *(int *)(*(long *)(param_1 + 0x20) + 0x18);
  }
  uVar1 = Cat_manager_get_Helper_Active_0x6000772();
  return iVar2 + (uVar1 & 1);
}

