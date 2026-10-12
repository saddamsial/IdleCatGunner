/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b40a90, Ghidra VA 02c40a90. */

/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */

void Cat_ApplySeparationDrift(float param_1,long param_2)

{
  undefined *puVar1;
  float *pfVar2;
  long lVar3;
  float fVar4;
  float fVar5;
  float fVar6;
  float fVar7;
  float fVar8;
  float fVar9;
  float fVar10;
  float fVar11;
  float fVar12;
  undefined8 uVar13;
  float fVar14;
  
  if ((bRam000000000625c0a5 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e631d8);
    func_0x029f5a50(PTR_DAT_05e61878);
    bRam000000000625c0a5 = 1;
  }
  fVar7 = *(float *)(param_2 + 0x1d0);
  fVar8 = *(float *)(param_2 + 0x1d8);
  fVar10 = fVar7 * fVar7 + fVar8 * fVar8;
  if (fVar10 < _UNK_0116c268) {
    return;
  }
  if (cRam000000000625b52e == '\0') {
    func_0x029f5a50(PTR_DAT_05e59000);
    cRam000000000625b52e = '\x01';
  }
  if (*(int *)(*(long *)PTR_DAT_05e59000 + 0xe4) == 0) {
    func_0x029f5bd0();
  }
  puVar1 = PTR_DAT_05e631d8;
  fVar10 = SQRT(fVar10);
  if (fVar10 <= _UNK_0116c240) {
    if (cRam000000000625b26f == '\0') {
      func_0x029f5a50(PTR_DAT_05e58bf8);
      cRam000000000625b26f = '\x01';
    }
    pfVar2 = *(float **)(*(long *)PTR_DAT_05e58bf8 + 0xb8);
    fVar7 = *pfVar2;
    fVar11 = pfVar2[1];
    fVar8 = pfVar2[2];
  }
  else {
    fVar7 = fVar7 / fVar10;
    fVar11 = 0.0 / fVar10;
    fVar8 = fVar8 / fVar10;
  }
  if (*(int *)(*(long *)puVar1 + 0xe4) == 0) {
    func_0x029f5bd0();
  }
  fVar11 = (float)Cat_ScreenSpeedMultiplier_0x600072b(fVar7,fVar11,fVar8);
  fVar4 = *(float *)(param_2 + 0x20);
  uVar13 = *(undefined8 *)(param_2 + 0x230);
  fVar9 = *(float *)(param_2 + 0x228);
  fVar6 = *(float *)(param_2 + 0x238);
  fVar10 = (float)Time_get_deltaTime_0x6000ee5(0);
  fVar9 = fVar9 * fVar10;
  lVar3 = *(long *)(param_2 + 0x30);
  fVar10 = 1.0;
  if (fVar9 <= 1.0) {
    fVar10 = fVar9;
  }
  fVar12 = (float)uVar13;
  fVar14 = (float)((ulong)uVar13 >> 0x20);
  fVar5 = 0.0;
  if (0.0 <= fVar9) {
    fVar5 = fVar10;
  }
  uVar13 = CONCAT44(fVar14 + (0.0 - fVar14) * fVar5,
                    fVar12 + (fVar11 * fVar7 * fVar4 * param_1 - fVar12) * fVar5);
  *(undefined8 *)(param_2 + 0x230) = uVar13;
  *(float *)(param_2 + 0x238) = fVar6 + (fVar11 * fVar8 * fVar4 * param_1 - fVar6) * fVar5;
  if (lVar3 != 0) {
    Rigidbody_get_linearVelocity_0x6000095(lVar3,0);
    Rigidbody_set_linearVelocity_0x6000096(uVar13,lVar3,0);
    if (*(long *)(param_2 + 0x38) != 0) {
      Animator_SetBool_0x6000033(*(long *)(param_2 + 0x38),*(undefined8 *)PTR_DAT_05e61878,1,0);
      return;
    }
  }
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

