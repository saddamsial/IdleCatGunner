/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b4091c, Ghidra VA 02c4091c. */

/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */

float Cat_GetApproachPosition
                (float param_1,undefined1 param_2 [16],float param_3,float param_4,
                undefined8 param_5)

{
  undefined *puVar1;
  long lVar2;
  float fVar3;
  float fVar4;
  float fVar5;
  
  fVar4 = param_3;
  lVar2 = Component_get_transform_0x6000c82(param_5,0);
  if (lVar2 != 0) {
    fVar3 = (float)Transform_get_position_0x6000f4d(lVar2,0);
    puVar1 = PTR_DAT_05e58bf8;
    fVar3 = fVar3 - param_1;
    fVar4 = fVar4 - param_3;
    fVar5 = 0.0;
    if (fVar3 * fVar3 + fVar4 * fVar4 < _UNK_0116c268) {
      if (cRam000000000625b95b == '\0') {
        func_0x029f5a50(PTR_DAT_05e58bf8);
        cRam000000000625b95b = '\x01';
      }
      lVar2 = *(long *)(*(long *)puVar1 + 0xb8);
      fVar3 = *(float *)(lVar2 + 0x3c);
      fVar5 = *(float *)(lVar2 + 0x40);
      fVar4 = *(float *)(lVar2 + 0x44);
    }
    if (cRam000000000625b52e == '\0') {
      func_0x029f5a50(PTR_DAT_05e59000);
      cRam000000000625b52e = '\x01';
    }
    if (*(int *)(*(long *)PTR_DAT_05e59000 + 0xe4) == 0) {
      func_0x029f5bd0();
    }
    fVar4 = SQRT(fVar4 * fVar4 + fVar3 * fVar3 + fVar5 * fVar5);
    if (fVar4 <= _UNK_0116c240) {
      if (cRam000000000625b26f == '\0') {
        func_0x029f5a50(PTR_DAT_05e58bf8);
        cRam000000000625b26f = '\x01';
      }
      fVar3 = **(float **)(*(long *)puVar1 + 0xb8);
    }
    else {
      fVar3 = fVar3 / fVar4;
    }
    return param_1 + fVar3 * param_4;
  }
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

