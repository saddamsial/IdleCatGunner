/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x48c3814, Ghidra VA 049c3814. */

/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */

undefined4 ParticleImage_RotateOnAngle_0x60000f6(float param_1)

{
  undefined1 auStack_8 [4];
  undefined4 uStack_4;
  
  func_0x05afb270(param_1 * _UNK_0116c26c,&uStack_4,auStack_8);
  return uStack_4;
}

