/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b36dcc, Ghidra VA 02c36dcc. */

/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */

undefined8 _LerpFill_d__21_MoveNext(long param_1)

{
  undefined4 uVar1;
  long lVar2;
  float fVar3;
  float fVar4;
  float fVar5;
  int iVar6;
  double dVar7;
  int iVar8;
  double dVar9;
  double dStack_28;
  
  lVar2 = *(long *)(param_1 + 0x20);
  if (*(int *)(param_1 + 0x10) == 1) {
    fVar3 = *(float *)(param_1 + 0x3c);
    fVar4 = *(float *)(param_1 + 0x40);
    *(undefined4 *)(param_1 + 0x10) = 0xffffffff;
  }
  else {
    if (*(int *)(param_1 + 0x10) != 0) {
      return 0;
    }
    *(undefined4 *)(param_1 + 0x10) = 0xffffffff;
    if (lVar2 == 0) goto LAB_02c36fdc;
    fVar4 = 0.0;
    *(undefined4 *)(param_1 + 0x40) = 0;
    fVar3 = ABS(*(float *)(param_1 + 0x28) - *(float *)(param_1 + 0x2c));
    if (fVar3 <= _UNK_0116c088) {
      fVar3 = _UNK_0116c088;
    }
    fVar3 = *(float *)(lVar2 + 0x8c) * fVar3;
    *(float *)(param_1 + 0x3c) = fVar3;
  }
  if (fVar3 <= fVar4) {
    if ((lVar2 != 0) && (*(long *)(lVar2 + 0x48) != 0)) {
      SlicedFilledImage_set_fillAmount_0x60005d0
                (*(undefined4 *)(param_1 + 0x28),*(long *)(lVar2 + 0x48),0);
      Adventure_Reward_popup_UpdateSliderText
                (lVar2,*(undefined4 *)(param_1 + 0x30),*(undefined4 *)(param_1 + 0x38));
      return 0;
    }
LAB_02c36fdc:
                    /* WARNING: Subroutine does not return */
    Throw_NullReference_Wrapper();
  }
  fVar3 = (float)Time_get_unscaledDeltaTime_0x6000ee8(0);
  *(float *)(param_1 + 0x40) = fVar4 + fVar3;
  if ((lVar2 == 0) || (*(long *)(lVar2 + 0x48) == 0)) goto LAB_02c36fdc;
  fVar4 = (fVar4 + fVar3) / *(float *)(param_1 + 0x3c);
  fVar3 = 1.0;
  if (fVar4 <= 1.0) {
    fVar3 = fVar4;
  }
  fVar5 = 0.0;
  if (0.0 <= fVar4) {
    fVar5 = fVar3;
  }
  fVar3 = 0.0;
  if (0.0 <= fVar5) {
    fVar3 = fVar5;
  }
  SlicedFilledImage_set_fillAmount_0x60005d0
            (*(float *)(param_1 + 0x2c) +
             (*(float *)(param_1 + 0x28) - *(float *)(param_1 + 0x2c)) * fVar3,
             *(long *)(lVar2 + 0x48),0);
  iVar6 = *(int *)(param_1 + 0x34);
  iVar8 = *(int *)(param_1 + 0x38);
  uVar1 = *(undefined4 *)(param_1 + 0x30);
  if (cRam000000000625b95a == '\0') {
    func_0x029f5a50(PTR_DAT_05e59000);
    cRam000000000625b95a = '\x01';
  }
  fVar3 = ((float)iVar8 - (float)iVar6) * fVar3 + (float)iVar6;
  if (*(int *)(*(long *)PTR_DAT_05e59000 + 0xe4) == 0) {
    func_0x029f5bd0();
  }
  dVar9 = (double)fVar3;
  dVar7 = (double)func_0x05afb230(dVar9,&dStack_28);
  if (0.0 <= fVar3) {
    if (dVar7 != 0.5) {
      dStack_28 = (double)(long)(dVar9 + 0.5);
      goto LAB_02c36f8c;
    }
    dVar7 = 1.0;
  }
  else {
    if (dVar7 != -0.5) {
      dStack_28 = (double)(long)(dVar9 + -0.5);
      goto LAB_02c36f8c;
    }
    dVar7 = -1.0;
  }
  if (((long)dStack_28 & 1U) != 0) {
    dStack_28 = dStack_28 + dVar7;
  }
LAB_02c36f8c:
  iVar6 = -0x80000000;
  if (dStack_28 != INFINITY) {
    iVar6 = (int)dStack_28;
  }
  Adventure_Reward_popup_UpdateSliderText(lVar2,uVar1,iVar6);
  *(undefined8 *)(param_1 + 0x18) = 0;
  Managed_WriteBarrier((undefined8 *)(param_1 + 0x18),0);
  *(undefined4 *)(param_1 + 0x10) = 1;
  return 1;
}

