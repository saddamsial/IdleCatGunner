/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x48c37c0, Ghidra VA 049c37c0. */

/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */

void ParticleImage_RotateOnAngle_0x60000f7(void)

{
  float in_s3;
  
  Quaternion_Internal_FromEulerRad_0x6000a4b(0,0,in_s3 * _UNK_0116c26c,0);
  Quaternion_op_Multiply_0x6000a54(0);
  return;
}

