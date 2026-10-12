/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b7078c, Ghidra VA 02c7078c. */

/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */

void Gun_Item_Update(long param_1)

{
  bool bVar1;
  float fVar2;
  float fVar3;
  
  if (*(char *)(param_1 + 0x70) != '\0') {
    fVar3 = *(float *)(param_1 + 0x74);
    fVar2 = (float)Time_get_unscaledDeltaTime_0x6000ee8(0);
    fVar3 = fVar3 + fVar2;
    bVar1 = _UNK_0116c060 <= fVar3;
    *(float *)(param_1 + 0x74) = fVar3;
    if (bVar1) {
      *(undefined4 *)(param_1 + 0x74) = 0;
      Gun_Item_UpdateAdTimeText(param_1);
      return;
    }
  }
  return;
}

