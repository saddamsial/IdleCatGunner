/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b41da8, Ghidra VA 02c41da8. */

/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */

undefined4
Cat_ApplySpread(undefined4 param_1,undefined1 param_2 [16],undefined1 param_3 [16],float param_4)

{
  float fVar1;
  
  if (_UNK_0116c088 <= param_4) {
    fVar1 = (float)Random_Range_0x6000ba6(-param_4,param_4,0);
    Quaternion_Internal_FromEulerRad_0x6000a4b(0,fVar1 * _UNK_0116c26c,0,0);
    param_1 = Quaternion_op_Multiply_0x6000a54(0);
  }
  return param_1;
}

