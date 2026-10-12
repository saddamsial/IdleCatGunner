/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b2db58, Ghidra VA 02c2db58. */

bool Adventure_manager_is_Unlock_return(long param_1,uint param_2)

{
  int iVar1;
  undefined *puVar2;
  long lVar3;
  
  puVar2 = PTR_DAT_05e5dd28;
  if ((bRam000000000625c00b & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e5dd28);
    bRam000000000625c00b = 1;
  }
  lVar3 = *(long *)puVar2;
  iVar1 = *(int *)(param_1 + 0x30);
  if (*(int *)(lVar3 + 0xe4) == 0) {
    func_0x029f5bd0();
    lVar3 = *(long *)puVar2;
  }
  lVar3 = *(long *)(*(long *)(lVar3 + 0xb8) + 8);
  if (lVar3 != 0) {
    if (param_2 < *(uint *)(lVar3 + 0x18)) {
      return *(int *)(lVar3 + (long)(int)param_2 * 4 + 0x20) <= iVar1;
    }
                    /* WARNING: Subroutine does not return */
    Throw_Index_Wrapper();
  }
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

