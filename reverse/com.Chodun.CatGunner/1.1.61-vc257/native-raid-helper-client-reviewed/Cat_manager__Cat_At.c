/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b43fcc, Ghidra VA 02c43fcc. */

undefined8 Cat_manager__Cat_At(long param_1,uint param_2)

{
  long lVar1;
  undefined8 *puVar2;
  
  lVar1 = *(long *)(param_1 + 0x20);
  if (lVar1 == 0) {
    if ((int)param_2 < 0) {
                    /* WARNING: Subroutine does not return */
      Throw_NullReference_Wrapper();
    }
  }
  else if ((int)param_2 < (int)*(uint *)(lVar1 + 0x18)) {
    if (*(uint *)(lVar1 + 0x18) <= param_2) {
                    /* WARNING: Subroutine does not return */
      Throw_Index_Wrapper();
    }
    puVar2 = (undefined8 *)(lVar1 + (long)(int)param_2 * 8 + 0x20);
    goto LAB_02c43ffc;
  }
  puVar2 = (undefined8 *)(param_1 + 0x28);
LAB_02c43ffc:
  return *puVar2;
}

