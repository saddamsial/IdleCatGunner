/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2baebb0, Ghidra VA 02caebb0. */

undefined8 _MoveLoop_d__13_MoveNext(undefined1 param_1 [16],undefined4 param_2,long param_3)

{
  int iVar1;
  undefined8 uVar2;
  ulong uVar3;
  undefined4 uVar4;
  long lVar5;
  long lVar6;
  long lVar7;
  undefined4 extraout_s0;
  float fVar8;
  float fVar9;
  float fVar10;
  float fVar11;
  float fVar12;
  
  if ((bRam000000000625c533 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e5a710);
    bRam000000000625c533 = 1;
  }
  iVar1 = *(int *)(param_3 + 0x10);
  lVar6 = *(long *)(param_3 + 0x20);
  uVar2 = 0;
  if (iVar1 < 2) {
    if (iVar1 == 0) {
      *(undefined4 *)(param_3 + 0x10) = 0xffffffff;
      goto joined_r0x02caedc0;
    }
    if (iVar1 != 1) {
      return 0;
    }
    *(undefined4 *)(param_3 + 0x10) = 0xffffffff;
    if (lVar6 == 0) goto LAB_02caeeb0;
    uVar3 = TutorialArrow_UI_IsValid(0,*(undefined8 *)(lVar6 + 0x20));
    if (((uVar3 & 1) != 0) &&
       (uVar3 = TutorialArrow_UI_IsValid(uVar3,*(undefined8 *)(lVar6 + 0x28)), (uVar3 & 1) != 0)) {
      uVar2 = *(undefined8 *)(lVar6 + 0x20);
      *(undefined4 *)(param_3 + 0x28) = 0;
      uVar2 = TutorialArrow_UI_GetTargetPos(lVar6,uVar2);
      *(undefined4 *)(param_3 + 0x2c) = extraout_s0;
      *(undefined4 *)(param_3 + 0x30) = param_2;
      goto LAB_02caec70;
    }
LAB_02caee6c:
    uVar2 = 0;
  }
  else {
    if (iVar1 == 2) {
      *(undefined4 *)(param_3 + 0x10) = 0xffffffff;
      if (lVar6 == 0) goto LAB_02caeeb0;
LAB_02caec70:
      fVar11 = *(float *)(lVar6 + 0x30);
      if (fVar11 <= *(float *)(param_3 + 0x28)) {
        uVar2 = TutorialArrow_UI_ScaleTo(0x3f800000,lVar6);
        *(undefined8 *)(param_3 + 0x18) = uVar2;
        Managed_WriteBarrier();
        uVar4 = 3;
      }
      else {
        uVar3 = TutorialArrow_UI_IsValid(uVar2,*(undefined8 *)(lVar6 + 0x20));
        if (((uVar3 & 1) == 0) ||
           (uVar3 = TutorialArrow_UI_IsValid(uVar3,*(undefined8 *)(lVar6 + 0x28)), (uVar3 & 1) == 0)
           ) goto LAB_02caee6c;
        fVar10 = *(float *)(param_3 + 0x28);
        fVar8 = (float)Time_get_deltaTime_0x6000ee5(0);
        fVar10 = fVar10 + fVar8;
        uVar2 = *(undefined8 *)(lVar6 + 0x28);
        fVar12 = *(float *)(lVar6 + 0x30);
        *(float *)(param_3 + 0x28) = fVar10;
        fVar8 = (float)TutorialArrow_UI_GetTargetPos(lVar6,uVar2);
        if (*(long *)(lVar6 + 0x48) == 0) goto LAB_02caeeb0;
        fVar10 = fVar10 / fVar12;
        fVar12 = 1.0;
        if (fVar10 <= 1.0) {
          fVar12 = fVar10;
        }
        fVar9 = 0.0;
        if (0.0 <= fVar10) {
          fVar9 = fVar12;
        }
        fVar10 = 0.0;
        if (0.0 <= fVar9) {
          fVar10 = fVar9;
        }
        fVar12 = fVar10 * fVar10 * 3.0 - fVar10 * fVar10 * (fVar10 + fVar10);
        fVar12 = fVar12 + (1.0 - fVar12) * 0.0;
        fVar10 = 1.0;
        if (fVar12 <= 1.0) {
          fVar10 = fVar12;
        }
        fVar9 = 0.0;
        if (0.0 <= fVar12) {
          fVar9 = fVar10;
        }
        RectTransform_set_anchoredPosition_0x6000f2c
                  (*(float *)(param_3 + 0x2c) + fVar9 * (fVar8 - *(float *)(param_3 + 0x2c)),
                   *(float *)(param_3 + 0x30) + fVar9 * (fVar11 - *(float *)(param_3 + 0x30)),
                   *(long *)(lVar6 + 0x48),0);
        *(undefined8 *)(param_3 + 0x18) = 0;
        Managed_WriteBarrier((undefined8 *)(param_3 + 0x18),0);
        uVar4 = 2;
      }
    }
    else {
      if (iVar1 == 3) {
        *(undefined4 *)(param_3 + 0x10) = 0xffffffff;
        if (lVar6 == 0) goto LAB_02caeeb0;
        fVar11 = *(float *)(lVar6 + 0x34);
        if (0.0 < fVar11) {
          uVar2 = func_0x029f5cec(*(undefined8 *)PTR_DAT_05e5a710);
          WaitForSeconds__ctor_0x6000e26(fVar11,uVar2,0);
          *(undefined8 *)(param_3 + 0x18) = uVar2;
          Managed_WriteBarrier((undefined8 *)(param_3 + 0x18),uVar2);
          uVar4 = 4;
          goto LAB_02caee94;
        }
      }
      else {
        if (iVar1 != 4) {
          return 0;
        }
        *(undefined4 *)(param_3 + 0x10) = 0xffffffff;
      }
      *(undefined8 *)(param_3 + 0x2c) = 0;
joined_r0x02caedc0:
      if (lVar6 == 0) goto LAB_02caeeb0;
      uVar3 = TutorialArrow_UI_IsValid(0,*(undefined8 *)(lVar6 + 0x20));
      if (((uVar3 & 1) == 0) ||
         (uVar3 = TutorialArrow_UI_IsValid(uVar3,*(undefined8 *)(lVar6 + 0x28)), (uVar3 & 1) == 0))
      goto LAB_02caee6c;
      lVar7 = *(long *)(lVar6 + 0x48);
      TutorialArrow_UI_GetTargetPos(lVar6,*(undefined8 *)(lVar6 + 0x20));
      if (lVar7 == 0) {
LAB_02caeeb0:
                    /* WARNING: Subroutine does not return */
        Throw_NullReference_Wrapper();
      }
      RectTransform_set_anchoredPosition_0x6000f2c(lVar7,0);
      lVar7 = *(long *)(lVar6 + 0x48);
      if (cRam000000000625b279 == '\0') {
        func_0x029f5a50(PTR_DAT_05e58bf8);
        cRam000000000625b279 = '\x01';
      }
      if (lVar7 == 0) goto LAB_02caeeb0;
      lVar5 = *(long *)(*(long *)PTR_DAT_05e58bf8 + 0xb8);
      Transform_set_localScale_0x6000f5e
                (*(undefined4 *)(lVar5 + 0xc),*(undefined4 *)(lVar5 + 0x10),
                 *(undefined4 *)(lVar5 + 0x14),lVar7,0);
      uVar2 = TutorialArrow_UI_ScaleTo(*(undefined4 *)(lVar6 + 0x40),lVar6);
      *(undefined8 *)(param_3 + 0x18) = uVar2;
      Managed_WriteBarrier();
      uVar4 = 1;
    }
LAB_02caee94:
    uVar2 = 1;
    *(undefined4 *)(param_3 + 0x10) = uVar4;
  }
  return uVar2;
}

