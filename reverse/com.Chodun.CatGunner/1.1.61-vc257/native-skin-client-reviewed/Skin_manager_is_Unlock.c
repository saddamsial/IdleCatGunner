/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2ba7ac4, Ghidra VA 02ca7ac4. */

bool Skin_manager_is_Unlock(long param_1,uint param_2)

{
  bool bVar1;
  long lVar2;
  
  if (param_2 == 0) {
    bVar1 = true;
  }
  else {
    lVar2 = *(long *)(param_1 + 0x28);
    if (lVar2 == 0) {
                    /* WARNING: Subroutine does not return */
      Throw_NullReference_Wrapper();
    }
    if (*(uint *)(lVar2 + 0x18) <= param_2) {
                    /* WARNING: Subroutine does not return */
      Throw_Index_Wrapper();
    }
    bVar1 = *(char *)(lVar2 + (int)param_2 + 0x20) != '\0';
  }
  return bVar1;
}

