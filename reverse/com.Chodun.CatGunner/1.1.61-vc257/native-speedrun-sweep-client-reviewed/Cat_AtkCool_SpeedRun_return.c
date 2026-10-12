/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b39be8, Ghidra VA 02c39be8. */

void Cat_AtkCool_SpeedRun_return(long param_1)

{
  if (*(long *)(param_1 + 0x48) != 0) {
    Cat_CalculateAtkCoolMax_0x6000730
              (*(undefined4 *)(*(long *)(param_1 + 0x48) + 0x40),param_1,0,0,0);
    return;
  }
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

