/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b29820, Ghidra VA 02c29820. */

float SlicedFilledImage_GetAdjustedBorders
                (float param_1,float param_2,float param_3,float param_4,undefined1 param_5 [16],
                undefined1 param_6 [16],float param_7,float param_8,undefined8 param_9)

{
  bool bVar1;
  bool bVar2;
  long lVar3;
  undefined8 uVar4;
  undefined8 uVar5;
  int iVar6;
  float *pfVar7;
  float fVar8;
  float fVar9;
  float fStack_38;
  float fStack_34;
  
  fStack_38 = param_4;
  fStack_34 = param_3;
  lVar3 = Graphic_get_rectTransform_0x60000f6(param_9,0);
  if (lVar3 == 0) {
LAB_02c299a4:
                    /* WARNING: Subroutine does not return */
    Throw_NullReference_Wrapper();
  }
  RectTransform_get_rect_0x6000f26(lVar3,0);
  iVar6 = 2;
  bVar1 = true;
  do {
    fVar8 = param_3;
    if (!bVar1) {
      fVar8 = param_4;
    }
    if (fVar8 != 0.0) {
      pfVar7 = &fStack_34;
      fVar8 = param_7 / param_3;
      if (!bVar1) {
        pfVar7 = &fStack_38;
        fVar8 = param_8 / param_4;
      }
      iVar6 = 2;
      if (!bVar1) {
        iVar6 = 3;
      }
      fVar9 = (param_7 / param_3) * param_1;
      if (!bVar1) {
        fVar9 = param_1;
        param_2 = (param_8 / param_4) * param_2;
      }
      param_1 = fVar9;
      *pfVar7 = fVar8 * *pfVar7;
    }
    fVar8 = param_1;
    if (!bVar1) {
      fVar8 = param_2;
    }
    if (iVar6 == 2) {
      pfVar7 = &fStack_34;
    }
    else {
      if (iVar6 != 3) {
        func_0x029f5a64(PTR_DAT_05e5a220);
        uVar4 = func_0x029f5cec();
        uVar5 = func_0x029f5a64(PTR_DAT_05e62dc0);
        IndexOutOfRangeException__ctor_0x60007e4(uVar4,uVar5,0);
        uVar5 = func_0x029f5a64(PTR_DAT_05e62dc8);
        func_0x029f5bc0(uVar4,uVar5);
        goto LAB_02c299a4;
      }
      pfVar7 = &fStack_38;
    }
    fVar8 = fVar8 + *pfVar7;
    fVar9 = param_7;
    if (!bVar1) {
      fVar9 = param_8;
    }
    if ((fVar9 < fVar8) && (fVar8 != 0.0)) {
      if (bVar1) {
        fVar8 = param_7 / fVar8;
        pfVar7 = &fStack_34;
        param_1 = fVar8 * param_1;
        fVar9 = fStack_34;
      }
      else {
        fVar8 = param_8 / fVar8;
        pfVar7 = &fStack_38;
        param_2 = fVar8 * param_2;
        fVar9 = fStack_38;
      }
      *pfVar7 = fVar8 * fVar9;
    }
    iVar6 = 3;
    bVar2 = !bVar1;
    bVar1 = false;
    if (bVar2) {
      return param_1;
    }
  } while( true );
}

