/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b39c0c, Ghidra VA 02c39c0c. */

void Cat_AtkCool_Boss_return(long param_1)

{
  if (*(long *)(param_1 + 0x48) != 0) {
    Cat_CalculateAtkCoolMax(*(undefined4 *)(*(long *)(param_1 + 0x48) + 0x40),param_1,1,0,0);
    return;
  }
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

