/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2ba10d8, Ghidra VA 02ca10d8. */

int StarGem_Pig__get_Gem_Now(long param_1)

{
  int iVar1;
  int iVar2;
  int iVar3;
  
  iVar2 = *(int *)(param_1 + 0x24);
  iVar3 = StarGem_Pig__get_Capacity_Now();
  iVar1 = iVar2;
  if (iVar3 <= iVar2) {
    iVar1 = iVar3;
  }
  iVar3 = 0;
  if (-1 < iVar2) {
    iVar3 = iVar1;
  }
  return iVar3;
}

