/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b424cc, Ghidra VA 02c424cc. */

float Cat_CalcBulletSpawnPos(undefined1 param_1 [16],float param_2,long param_3)

{
  undefined *puVar1;
  long lVar2;
  float fVar3;
  
  if ((bRam000000000625c0b7 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e631d8);
    bRam000000000625c0b7 = 1;
  }
  puVar1 = PTR_DAT_05e631d8;
  if (*(long *)(param_3 + 0xe0) != 0) {
    fVar3 = (float)Transform_get_position_0x6000f4d(*(long *)(param_3 + 0xe0),0);
    lVar2 = *(long *)puVar1;
    if (*(int *)(lVar2 + 0xe4) == 0) {
      func_0x029f5bd0();
      lVar2 = *(long *)puVar1;
    }
    return fVar3 + ((2.0 - param_2) / *(float *)(*(long *)(lVar2 + 0xb8) + 0x3c)) *
                   *(float *)(*(long *)(lVar2 + 0xb8) + 0x38);
  }
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

