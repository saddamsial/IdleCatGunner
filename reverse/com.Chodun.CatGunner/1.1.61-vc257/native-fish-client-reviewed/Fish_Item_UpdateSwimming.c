/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b60dac, Ghidra VA 02c60dac. */

/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */

void Fish_Item_UpdateSwimming(undefined1 param_1 [16],float param_2,long param_3)

{
  float fVar1;
  float fVar2;
  float fVar3;
  undefined4 uVar4;
  float fVar5;
  float fVar6;
  
  if (*(long *)(param_3 + 0x50) != 0) {
    fVar1 = (float)RectTransform_get_anchoredPosition_0x6000f2b(*(long *)(param_3 + 0x50),0);
    fVar2 = *(float *)(param_3 + 0xb4);
    fVar5 = *(float *)(param_3 + 0xb8);
    fVar6 = *(float *)(param_3 + 0xbc);
    fVar3 = (float)Time_get_deltaTime_0x6000ee5(0);
    fVar1 = fVar1 + fVar2 * fVar6 * fVar3;
    param_2 = param_2 + fVar5 * fVar6 * fVar3;
    fVar2 = param_2;
    fVar3 = (float)Fish_Item_ClampToTank(fVar1,param_3);
    if (*(long *)(param_3 + 0x50) != 0) {
      RectTransform_set_anchoredPosition_0x6000f2c(*(long *)(param_3 + 0x50),0);
      fVar5 = _UNK_0116c174;
      if (_UNK_0116c174 < ABS(fVar3 - fVar1)) {
        *(float *)(param_3 + 0xb4) = -*(float *)(param_3 + 0xb4);
        Fish_Item_UpdateFlip(param_3);
      }
      if (fVar5 < ABS(fVar2 - param_2)) {
        *(float *)(param_3 + 0xb8) = -*(float *)(param_3 + 0xb8);
      }
      fVar1 = *(float *)(param_3 + 0xc0);
      fVar2 = (float)Time_get_deltaTime_0x6000ee5(0);
      fVar1 = fVar1 - fVar2;
      *(float *)(param_3 + 0xc0) = fVar1;
      if (fVar1 <= 0.0) {
        Fish_Item_PickNewDirection(param_3);
        uVar4 = Random_Range_0x6000ba6(0x40000000,0x40a00000,0);
        *(undefined4 *)(param_3 + 0xc0) = uVar4;
        uVar4 = Random_Range_0x6000ba6(0x41700000,0x420c0000,0);
        *(undefined4 *)(param_3 + 0xbc) = uVar4;
      }
      Fish_Item_UpdateSortOrder(param_3);
      return;
    }
  }
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

