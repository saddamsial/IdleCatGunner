/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x48badc4, Ghidra VA 049badc4. */

/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */

void Particle_RotatePointAroundCenter
               (undefined1 param_1 [16],undefined1 param_2 [16],float param_3,float param_4,
               float param_5)

{
  Quaternion_Internal_FromEulerRad_0x6000a4b
            (param_3 * _UNK_0116c26c,param_4 * _UNK_0116c26c,param_5 * _UNK_0116c26c,0);
  Quaternion_op_Multiply_0x6000a54(0);
  return;
}

