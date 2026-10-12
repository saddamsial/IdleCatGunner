/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b47888, Ghidra VA 02c47888. */

int Boss_manager_SkinNum_return(long param_1,int param_2)

{
  int iVar1;
  int iVar2;
  
  if (*(long *)(param_1 + 0x58) != 0) {
    iVar1 = *(int *)(*(long *)(param_1 + 0x58) + 0x18);
    iVar2 = 0;
    if (iVar1 != 0) {
      iVar2 = param_2 / iVar1;
    }
    return param_2 - iVar2 * iVar1;
  }
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

