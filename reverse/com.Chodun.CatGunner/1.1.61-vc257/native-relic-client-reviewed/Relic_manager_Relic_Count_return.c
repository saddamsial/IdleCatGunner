/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b32eb4, Ghidra VA 02c32eb4. */

undefined4 Relic_manager_Relic_Count_return(void)

{
  long lVar1;
  
  lVar1 = Relic_manager_Relic_info_return();
  if (lVar1 != 0) {
    return *(undefined4 *)(lVar1 + 0x1c);
  }
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

