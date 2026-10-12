/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b17d84, Ghidra VA 02c17d84. */

long Polling_manager_Object_Polling(long param_1,uint param_2)

{
  ulong uVar1;
  long lVar2;
  
  lVar2 = *(long *)(param_1 + 0x20);
  if (lVar2 != 0) {
    if (*(uint *)(lVar2 + 0x18) <= param_2) {
                    /* WARNING: Subroutine does not return */
      Throw_Index_Wrapper();
    }
    lVar2 = Object_struct_Object_Polling_0x60004a8(lVar2 + (long)(int)param_2 * 0x18 + 0x20);
    if (lVar2 != 0) {
      uVar1 = GameObject_get_activeInHierarchy_0x6000d00(lVar2,0);
      if ((uVar1 & 1) != 0) {
        GameObject_SetActive_0x6000cfe(lVar2,1,0);
      }
      return lVar2;
    }
  }
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

