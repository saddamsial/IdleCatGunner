/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2ba1158, Ghidra VA 02ca1158. */

bool StarGem_Pig__get_Is_Full(long param_1)

{
  int iVar1;
  int iVar2;
  
  iVar1 = *(int *)(param_1 + 0x24);
  iVar2 = StarGem_Pig__get_Capacity_Now();
  return iVar2 <= iVar1;
}

