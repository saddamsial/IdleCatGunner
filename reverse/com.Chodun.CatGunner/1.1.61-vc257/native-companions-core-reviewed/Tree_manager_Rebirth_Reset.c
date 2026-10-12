/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2badd84, Ghidra VA 02cadd84. */

void Tree_manager_Rebirth_Reset(long param_1)

{
  *(undefined8 *)(param_1 + 0x28) = 0;
  Tree_manager_Game_Exit_0x6000f03();
  Tree_manager_Game_Start_0x6000eff(param_1);
  return;
}

