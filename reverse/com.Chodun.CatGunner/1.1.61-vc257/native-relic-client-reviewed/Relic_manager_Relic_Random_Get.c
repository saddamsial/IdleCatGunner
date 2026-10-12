/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b32ab4, Ghidra VA 02c32ab4. */

void Relic_manager_Relic_Random_Get(void)

{
  long lVar1;
  
  lVar1 = Relic_manager_Relic_PickByType();
  if (lVar1 != 0) {
    if (*(char *)(lVar1 + 0x20) == '\0') {
      *(undefined1 *)(lVar1 + 0x20) = 1;
    }
    else {
      *(int *)(lVar1 + 0x1c) = *(int *)(lVar1 + 0x1c) + 1;
    }
    return;
  }
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

