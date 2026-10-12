/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b17ae0, Ghidra VA 02c17ae0. */

void Follow_Update(long param_1)

{
  long lVar1;
  
  lVar1 = Component_get_transform_0x6000c82(param_1,0);
  if ((*(long *)(param_1 + 0x20) != 0) &&
     (Transform_get_position_0x6000f4d(*(long *)(param_1 + 0x20),0), lVar1 != 0)) {
    Transform_set_position_0x6000f4e(lVar1,0);
    return;
  }
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

