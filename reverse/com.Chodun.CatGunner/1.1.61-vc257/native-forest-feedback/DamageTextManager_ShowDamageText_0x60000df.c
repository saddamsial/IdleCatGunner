/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2a83de8, Ghidra VA 02b83de8. */

void DamageTextManager_ShowDamageText_0x60000df
               (undefined8 param_1,undefined4 param_2,undefined8 param_3,long param_4)

{
  if (param_4 != 0) {
    Transform_get_position_0x6000f4d(param_4,0);
    DamageTextManager_ShowDamageText_0x60000e1(param_1,param_2,param_3);
    return;
  }
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

