/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b38be8, Ghidra VA 02c38be8. */

/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */

float Cat_ScreenSpeedMultiplier(undefined4 param_1,undefined4 param_2,undefined4 param_3)

{
  undefined *puVar1;
  long lVar2;
  float fVar3;
  float fVar4;
  
  puVar1 = PTR_DAT_05e631d8;
  if ((bRam000000000625c086 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e631d8);
    bRam000000000625c086 = 1;
  }
  lVar2 = *(long *)puVar1;
  if (*(int *)(lVar2 + 0xe4) == 0) {
    func_0x029f5bd0();
    lVar2 = *(long *)puVar1;
  }
  lVar2 = *(long *)(lVar2 + 0xb8);
  fVar4 = *(float *)(lVar2 + 0x4c);
  fVar3 = (float)Quaternion_op_Multiply_0x6000a54
                           (*(undefined4 *)(lVar2 + 0x44),*(undefined4 *)(lVar2 + 0x48),fVar4,
                            *(undefined4 *)(lVar2 + 0x50),param_1,param_2,param_3,0);
  fVar4 = SQRT(fVar3 * fVar3 + fVar4 * fVar4 * _UNK_0116c1b8 * _UNK_0116c1b8);
  fVar3 = 1.0;
  if (_UNK_0116c200 <= fVar4) {
    lVar2 = *(long *)puVar1;
    if (*(int *)(lVar2 + 0xe4) == 0) {
      func_0x029f5bd0(0x3f800000);
      lVar2 = *(long *)puVar1;
    }
    fVar3 = (1.0 / *(float *)(*(long *)(lVar2 + 0xb8) + 0x60)) / fVar4;
  }
  return fVar3;
}

