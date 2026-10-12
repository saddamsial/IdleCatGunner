/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x48c3ad0, Ghidra VA 049c3ad0. */

void ParticleImage_EmitAtWorldPosition
               (undefined4 param_1,undefined4 param_2,undefined4 param_3,undefined8 param_4,
               undefined4 param_5)

{
  long lVar1;
  
  lVar1 = Component_get_transform_0x6000c82(param_4,0);
  if (lVar1 != 0) {
    Transform_InverseTransformPoint_0x6000f79(param_1,param_2,param_3,lVar1,0);
    ParticleImage_EmitAtLocalPosition(param_4,param_5);
    return;
  }
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

