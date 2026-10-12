/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b616f4, Ghidra VA 02c616f4. */

/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */

void Fish_Item_FaceTowards(float param_1,long param_2)

{
  float fVar1;
  undefined4 uVar2;
  
  Fish_Item_EnsureInit();
  if (*(long *)(param_2 + 0x50) == 0) {
                    /* WARNING: Subroutine does not return */
    Throw_NullReference_Wrapper();
  }
  fVar1 = (float)RectTransform_get_anchoredPosition_0x6000f2b(*(long *)(param_2 + 0x50),0);
  if (ABS(param_1 - fVar1) < _UNK_0116c088) {
    return;
  }
  *(undefined4 *)(param_2 + 0xb8) = 0;
  uVar2 = 0xbf800000;
  if (0.0 <= param_1 - fVar1) {
    uVar2 = 0x3f800000;
  }
  *(undefined4 *)(param_2 + 0xb4) = uVar2;
  Fish_Item_UpdateFlip(param_2);
  return;
}

