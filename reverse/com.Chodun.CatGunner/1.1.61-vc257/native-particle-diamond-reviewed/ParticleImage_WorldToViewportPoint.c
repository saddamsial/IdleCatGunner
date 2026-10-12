/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x48bafe0, Ghidra VA 049bafe0. */

void ParticleImage_WorldToViewportPoint(undefined4 param_1,undefined4 param_2,undefined4 param_3)

{
  long lVar1;
  
  lVar1 = ParticleImage_get_mainCamera_0x60000ca();
  if (lVar1 != 0) {
    Camera_WorldToViewportPoint_0x60002aa(param_1,param_2,param_3,lVar1,0);
    return;
  }
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

