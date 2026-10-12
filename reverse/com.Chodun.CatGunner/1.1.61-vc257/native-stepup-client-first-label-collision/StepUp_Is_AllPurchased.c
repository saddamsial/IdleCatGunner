/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2ba2b00, Ghidra VA 02ca2b00. */

bool StepUp_Is_AllPurchased(long param_1)

{
  ulong uVar1;
  ulong uVar2;
  bool bVar3;
  long lVar4;
  
  lVar4 = *(long *)(param_1 + 0x38);
  if (lVar4 == 0) {
                    /* WARNING: Subroutine does not return */
    Throw_NullReference_Wrapper();
  }
  bVar3 = false;
  uVar2 = 0;
  while( true ) {
    if (*(uint *)(lVar4 + 0x18) == uVar2) {
                    /* WARNING: Subroutine does not return */
      Throw_Index_Wrapper();
    }
    if (*(char *)(lVar4 + 0x20 + uVar2) == '\0') break;
    uVar1 = uVar2 + 1;
    bVar3 = 3 < uVar2;
    uVar2 = uVar1;
    if (uVar1 == 5) {
      return bVar3;
    }
  }
  return bVar3;
}

