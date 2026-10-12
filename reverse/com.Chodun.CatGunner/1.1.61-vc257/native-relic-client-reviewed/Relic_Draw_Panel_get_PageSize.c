/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b30434, Ghidra VA 02c30434. */

int Relic_Draw_Panel_get_PageSize(long param_1)

{
  int iVar1;
  int iVar2;
  
  if ((*(long *)(param_1 + 0x28) != 0) && (*(long *)(param_1 + 0x38) != 0)) {
    iVar1 = *(int *)(*(long *)(param_1 + 0x28) + 0x18);
    iVar2 = *(int *)(*(long *)(param_1 + 0x38) + 0x18);
    if (iVar2 <= iVar1) {
      iVar1 = iVar2;
    }
    return iVar1;
  }
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

