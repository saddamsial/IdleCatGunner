/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2ba10fc, Ghidra VA 02ca10fc. */

float StarGem_Pig__get_Fill_Ratio(long param_1)

{
  int iVar1;
  float fVar2;
  float fVar3;
  float fVar4;
  int iVar5;
  
  iVar1 = StarGem_Pig__get_Capacity_Now();
  if (iVar1 < 1) {
    fVar3 = 0.0;
  }
  else {
    iVar5 = *(int *)(param_1 + 0x24);
    iVar1 = StarGem_Pig__get_Capacity_Now(param_1);
    fVar2 = (float)iVar5 / (float)iVar1;
    fVar4 = 1.0;
    if (fVar2 <= 1.0) {
      fVar4 = fVar2;
    }
    fVar3 = 0.0;
    if (0.0 <= fVar2) {
      fVar3 = fVar4;
    }
  }
  return fVar3;
}

