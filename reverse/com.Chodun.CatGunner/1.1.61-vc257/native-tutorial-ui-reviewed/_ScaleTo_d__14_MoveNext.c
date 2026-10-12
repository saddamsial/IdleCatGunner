/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2baef00, Ghidra VA 02caef00. */

undefined8 _ScaleTo_d__14_MoveNext(long param_1)

{
  char cVar1;
  long lVar2;
  long lVar3;
  undefined4 uVar4;
  float fVar5;
  float fVar6;
  float fVar7;
  float fVar8;
  float fVar9;
  
  lVar2 = *(long *)(param_1 + 0x20);
  if (*(int *)(param_1 + 0x10) == 1) {
    *(undefined4 *)(param_1 + 0x10) = 0xffffffff;
    if (lVar2 == 0) goto LAB_02caf0d8;
  }
  else {
    if (*(int *)(param_1 + 0x10) != 0) {
      return 0;
    }
    *(undefined4 *)(param_1 + 0x2c) = 0;
    *(undefined4 *)(param_1 + 0x10) = 0xffffffff;
    if ((lVar2 == 0) || (*(long *)(lVar2 + 0x48) == 0)) goto LAB_02caf0d8;
    uVar4 = Transform_get_localScale_0x6000f5d(*(long *)(lVar2 + 0x48),0);
    *(undefined4 *)(param_1 + 0x30) = uVar4;
  }
  fVar8 = *(float *)(param_1 + 0x2c);
  if (fVar8 < *(float *)(lVar2 + 0x44)) {
    fVar5 = (float)Time_get_deltaTime_0x6000ee5(0);
    cVar1 = cRam000000000625b279;
    fVar8 = fVar8 + fVar5;
    fVar5 = *(float *)(param_1 + 0x30);
    fVar9 = *(float *)(param_1 + 0x28);
    lVar3 = *(long *)(lVar2 + 0x48);
    fVar6 = fVar8 / *(float *)(lVar2 + 0x44);
    *(float *)(param_1 + 0x2c) = fVar8;
    fVar8 = 1.0;
    if (fVar6 <= 1.0) {
      fVar8 = fVar6;
    }
    fVar7 = 0.0;
    if (0.0 <= fVar6) {
      fVar7 = fVar8;
    }
    fVar8 = 0.0;
    if (0.0 <= fVar7) {
      fVar8 = fVar7;
    }
    fVar6 = fVar8 * fVar8 * 3.0 - fVar8 * fVar8 * (fVar8 + fVar8);
    fVar6 = fVar6 + (1.0 - fVar6) * 0.0;
    fVar8 = 1.0;
    if (fVar6 <= 1.0) {
      fVar8 = fVar6;
    }
    fVar7 = 0.0;
    if (0.0 <= fVar6) {
      fVar7 = fVar8;
    }
    if (cVar1 == '\0') {
      func_0x029f5a50(PTR_DAT_05e58bf8);
      cRam000000000625b279 = '\x01';
    }
    if (lVar3 != 0) {
      lVar2 = *(long *)(*(long *)PTR_DAT_05e58bf8 + 0xb8);
      fVar5 = fVar5 + (fVar9 - fVar5) * fVar7;
      Transform_set_localScale_0x6000f5e
                (fVar5 * *(float *)(lVar2 + 0xc),fVar5 * *(float *)(lVar2 + 0x10),
                 fVar5 * *(float *)(lVar2 + 0x14),lVar3,0);
      *(undefined8 *)(param_1 + 0x18) = 0;
      Managed_WriteBarrier((undefined8 *)(param_1 + 0x18),0);
      *(undefined4 *)(param_1 + 0x10) = 1;
      return 1;
    }
  }
  else {
    lVar2 = *(long *)(lVar2 + 0x48);
    if (cRam000000000625b279 == '\0') {
      func_0x029f5a50(PTR_DAT_05e58bf8);
      cRam000000000625b279 = '\x01';
    }
    if (lVar2 != 0) {
      fVar8 = *(float *)(param_1 + 0x28);
      lVar3 = *(long *)(*(long *)PTR_DAT_05e58bf8 + 0xb8);
      Transform_set_localScale_0x6000f5e
                (fVar8 * *(float *)(lVar3 + 0xc),fVar8 * *(float *)(lVar3 + 0x10),
                 *(float *)(lVar3 + 0x14) * fVar8,lVar2,0);
      return 0;
    }
  }
LAB_02caf0d8:
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

