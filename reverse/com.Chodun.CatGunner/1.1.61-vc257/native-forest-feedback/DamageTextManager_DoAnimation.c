/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2a83764, Ghidra VA 02b83764. */

bool DamageTextManager_DoAnimation(float param_1,long param_2,long param_3,uint param_4)

{
  uint uVar1;
  uint uVar2;
  bool bVar3;
  bool bVar4;
  long lVar5;
  float fVar6;
  float fVar7;
  float fVar8;
  float fVar9;
  float fVar10;
  float fVar11;
  float fVar12;
  float fVar13;
  
  if ((param_3 != 0) && (lVar5 = *(long *)(param_3 + 0x68), lVar5 != 0)) {
    fVar13 = *(float *)(param_3 + 0x60);
    param_1 = param_1 - *(float *)(param_3 + 0x5c);
    fVar6 = param_1 / fVar13;
    fVar9 = 1.0;
    if (fVar6 <= 1.0) {
      fVar9 = fVar6;
    }
    fVar7 = (float)DamageTextAnimationCurve_EvalBaked_0x60000c9(fVar9,*(undefined8 *)(lVar5 + 0x48))
    ;
    fVar6 = 1.0;
    if (fVar7 <= 1.0) {
      fVar6 = fVar7;
    }
    fVar8 = 0.5;
    if (0.0 <= fVar7) {
      fVar8 = fVar6 * 255.0 + 0.5;
    }
    fVar6 = (float)DamageTextAnimationCurve_EvalBaked_0x60000c9(fVar9,*(undefined8 *)(lVar5 + 0x50))
    ;
    fVar7 = (float)DamageTextAnimationCurve_EvalBaked_0x60000c9(fVar9,*(undefined8 *)(lVar5 + 0x38))
    ;
    fVar9 = (float)DamageTextAnimationCurve_EvalBaked_0x60000c9(fVar9,*(undefined8 *)(lVar5 + 0x40))
    ;
    bVar3 = false;
    bVar4 = false;
    fVar12 = fVar6 * 64.0;
    uVar1 = 0;
    if (fVar7 * 8.0 != INFINITY) {
      uVar1 = (int)(fVar7 * 8.0);
    }
    uVar2 = 0;
    if (fVar9 * 8.0 != INFINITY) {
      uVar2 = (int)(fVar9 * 8.0);
    }
    fVar10 = 255.0;
    if (fVar12 <= 255.0) {
      fVar10 = fVar12;
    }
    fVar11 = 0.0;
    if (0.0 <= fVar12) {
      fVar11 = fVar10;
    }
    if ((param_4 & 1) == 0) {
      bVar3 = (uint)*(byte *)(param_3 + 0x44) != ((int)fVar8 & 0xffU);
      if (((uint)*(byte *)(param_3 + 0x74) == ((int)fVar11 & 0xffU)) &&
         ((uint)*(ushort *)(param_3 + 0x70) == (uVar1 & 0xffff))) {
        bVar4 = (uint)*(ushort *)(param_3 + 0x72) != (uVar2 & 0xffff);
      }
      else {
        bVar4 = true;
      }
    }
    *(char *)(param_3 + 0x44) = (char)(int)fVar8;
    *(float *)(param_3 + 0x3c) = fVar9;
    *(float *)(param_3 + 0x40) = fVar6;
    *(float *)(param_3 + 0x38) = fVar7;
    *(char *)(param_3 + 0x74) = (char)(int)fVar11;
    *(short *)(param_3 + 0x70) = (short)uVar1;
    *(short *)(param_3 + 0x72) = (short)uVar2;
    if (((bVar3 != false) || (bVar4 != false)) || ((param_4 & 1) != 0)) {
      DamageTextObject_ApplyAnimation
                (*(undefined4 *)(param_2 + 0x40),*(undefined4 *)(param_2 + 0x44),
                 *(undefined4 *)(param_2 + 0x48),*(undefined4 *)(param_2 + 0x4c),
                 *(undefined4 *)(param_2 + 0x50),*(undefined4 *)(param_2 + 0x54),param_3,bVar4,bVar3
                 ,param_4 & 1);
    }
    return fVar13 <= param_1;
  }
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

