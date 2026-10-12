/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b26b18, Ghidra VA 02c26b18. */

void Dia_Attraction_Dia_Spawn(long param_1,long param_2,undefined4 param_3)

{
  long lVar1;
  
  if ((bRam000000000625bfb2 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e62d28);
    bRam000000000625bfb2 = 1;
  }
  if (*(long *)(param_1 + 0x28) != 0) {
    if (*(int *)(*(long *)(param_1 + 0x28) + 0x18) == 0) {
      return;
    }
    if (param_2 != 0) {
      lVar1 = *(long *)(param_1 + 0x20);
      Transform_get_position_0x6000f4d(param_2,0);
      if (lVar1 != 0) {
        ParticleImage_EmitAtWorldPosition_0x60000e9(lVar1,param_3,0);
        return;
      }
    }
  }
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

