/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2ba11a4, Ghidra VA 02ca11a4. */

bool StarGem_Pig_get_Is_Purchasable(long param_1)

{
  int iVar1;
  bool bVar2;
  int iVar3;
  
  iVar1 = *(int *)(param_1 + 0x24);
  iVar3 = StarGem_Pig_get_Capacity_Now_0x6000dec();
  if (iVar1 < iVar3) {
    bVar2 = false;
  }
  else if (*(int *)(param_1 + 0x20) < 3) {
    bVar2 = true;
  }
  else {
    iVar1 = *(int *)(param_1 + 0x28);
    iVar3 = StarGem_Pig_get_PurchaseMax_Now_0x6000ded(param_1);
    bVar2 = iVar1 < iVar3;
  }
  return bVar2;
}

