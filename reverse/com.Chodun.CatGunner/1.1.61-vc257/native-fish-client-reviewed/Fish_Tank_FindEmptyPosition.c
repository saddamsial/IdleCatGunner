/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b63258, Ghidra VA 02c63258. */

undefined4
Fish_Tank_FindEmptyPosition
          (undefined1 param_1 [16],float param_2,float param_3,float param_4,long param_5,
          long param_6)

{
  long lVar1;
  int iVar2;
  float fVar3;
  float fVar4;
  undefined4 uVar5;
  undefined4 uVar6;
  undefined4 uVar7;
  float fVar8;
  float fVar9;
  float fVar10;
  float fVar11;
  
  lVar1 = Fish_Tank_get_TankRect();
  if ((lVar1 != 0) && (RectTransform_get_rect_0x6000f26(lVar1,0), param_6 != 0)) {
    fVar3 = (float)Fish_Item_GetScaledSize(param_6);
    fVar9 = fVar3 * 0.5 - param_3 * 0.5;
    fVar4 = param_3 * 0.5 - fVar3 * 0.5;
    fVar10 = param_2 * 0.5 - param_4 * 0.5;
    fVar11 = param_4 * 0.5 - param_2 * 0.5;
    fVar8 = 0.0;
    fVar3 = 0.0;
    if (fVar9 <= fVar4) {
      fVar8 = fVar4;
      fVar3 = fVar9;
    }
    fVar9 = 0.0;
    fVar4 = 0.0;
    if (fVar10 <= fVar11) {
      fVar9 = fVar10;
      fVar4 = fVar11;
    }
    uVar5 = Random_Range_0x6000ba6(fVar3,0);
    Random_Range_0x6000ba6(fVar9,fVar4,0);
    if (0 < *(int *)(param_5 + 0x2c)) {
      fVar10 = -1.0;
      iVar2 = 0;
      do {
        uVar6 = Random_Range_0x6000ba6(fVar3,fVar8,0);
        uVar7 = Random_Range_0x6000ba6(fVar9,fVar4,0);
        fVar11 = (float)Fish_Tank_GetNearestFishDistance(uVar6,uVar7,param_5,param_6);
        if (*(float *)(param_5 + 0x28) <= fVar11) {
          return uVar6;
        }
        iVar2 = iVar2 + 1;
        if (fVar11 <= fVar10) {
          fVar11 = fVar10;
          uVar6 = uVar5;
        }
        uVar5 = uVar6;
        fVar10 = fVar11;
      } while (iVar2 < *(int *)(param_5 + 0x2c));
    }
    return uVar5;
  }
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

