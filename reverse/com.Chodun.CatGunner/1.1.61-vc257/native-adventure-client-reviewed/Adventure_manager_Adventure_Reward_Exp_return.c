/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b2e2ec, Ghidra VA 02c2e2ec. */

int Adventure_manager_Adventure_Reward_Exp_return(void)

{
  int iVar1;
  
  iVar1 = Adventure_manager_Adventure_Duration_return();
  return iVar1 * 10;
}

