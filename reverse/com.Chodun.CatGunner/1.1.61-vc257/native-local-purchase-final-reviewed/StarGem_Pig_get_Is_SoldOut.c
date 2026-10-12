/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2ba1174, Ghidra VA 02ca1174. */

bool StarGem_Pig_get_Is_SoldOut(long param_1)

{
  int iVar1;
  int iVar2;
  
  if (*(int *)(param_1 + 0x20) < 3) {
    return false;
  }
  iVar1 = *(int *)(param_1 + 0x28);
  iVar2 = StarGem_Pig_get_PurchaseMax_Now_0x6000ded();
  return iVar2 <= iVar1;
}

