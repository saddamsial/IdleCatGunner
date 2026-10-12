/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b4c0fc, Ghidra VA 02c4c0fc. */

void Mine_Start_UI_Game_Sweep(void)

{
  undefined *puVar1;
  
  puVar1 = PTR_DAT_05e5dd48;
  if ((bRam000000000625c129 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e5dd48);
    bRam000000000625c129 = 1;
  }
  if (**(long **)(*(long *)puVar1 + 0xb8) != 0) {
    Mine_manager_Game_Sweep();
    return;
  }
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

