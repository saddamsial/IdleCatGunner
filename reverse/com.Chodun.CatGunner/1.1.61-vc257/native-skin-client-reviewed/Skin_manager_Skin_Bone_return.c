/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2ba8438, Ghidra VA 02ca8438. */

undefined8 Skin_manager_Skin_Bone_return(long param_1)

{
  long lVar1;
  
  lVar1 = *(long *)(param_1 + 0x58);
  if (lVar1 == 0) {
                    /* WARNING: Subroutine does not return */
    Throw_NullReference_Wrapper();
  }
  if (*(uint *)(param_1 + 0x30) < *(uint *)(lVar1 + 0x18)) {
    return *(undefined8 *)(lVar1 + (long)(int)*(uint *)(param_1 + 0x30) * 8 + 0x20);
  }
                    /* WARNING: Subroutine does not return */
  Throw_Index_Wrapper();
}

