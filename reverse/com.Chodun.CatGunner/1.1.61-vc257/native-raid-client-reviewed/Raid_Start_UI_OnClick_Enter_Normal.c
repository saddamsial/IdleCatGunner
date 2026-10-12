/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b5c28c, Ghidra VA 02c5c28c. */

void Raid_Start_UI_OnClick_Enter_Normal(void)

{
  undefined *puVar1;
  long lVar2;
  
  puVar1 = PTR_DAT_05e5e070;
  if ((bRam000000000625c1e6 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e5e070);
    bRam000000000625c1e6 = 1;
  }
  lVar2 = *(long *)puVar1;
  if (*(int *)(lVar2 + 0xe4) == 0) {
    func_0x029f5bd0();
    lVar2 = *(long *)puVar1;
  }
  if (**(long **)(lVar2 + 0xb8) != 0) {
    Raid_manager_Game_Enter_Normal(**(long **)(lVar2 + 0xb8),0);
    return;
  }
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

