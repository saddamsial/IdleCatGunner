/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b2e7d4, Ghidra VA 02c2e7d4. */

undefined1 Adventure_manager_HasAnyFinish_return(long param_1,uint param_2)

{
  int iVar1;
  long lVar2;
  int iVar3;
  
  lVar2 = *(long *)(param_1 + 0x20);
  if (lVar2 != 0) {
    if (*(uint *)(lVar2 + 0x18) <= param_2) {
                    /* WARNING: Subroutine does not return */
      Throw_Index_Wrapper();
    }
    lVar2 = *(long *)(lVar2 + (long)(int)param_2 * 8 + 0x20);
    if (lVar2 != 0) {
      lVar2 = *(long *)(lVar2 + 0x18);
      if ((lVar2 != 0) && (0 < *(int *)(lVar2 + 0x18))) {
        iVar3 = 0;
        do {
          iVar1 = Adventure_manager_Map_Status_return(param_1,param_2,iVar3);
          if (iVar1 == 3) {
            return 1;
          }
          iVar3 = iVar3 + 1;
        } while (iVar3 < *(int *)(lVar2 + 0x18));
      }
      return 0;
    }
  }
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

