/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b57758, Ghidra VA 02c57758. */

void Raid_manager_Game_Enter_Normal(long param_1)

{
  Raid_manager_Ticket_Reload();
  if (*(int *)(param_1 + 0x70) < 2) {
    *(int *)(param_1 + 0x70) = *(int *)(param_1 + 0x70) + 1;
    Raid_manager_Game_Enter(param_1,1);
    return;
  }
  if (cRam000000000625ba57 == '\0') {
    func_0x029f5a50(PTR_DAT_05e5dd70);
    cRam000000000625ba57 = '\x01';
  }
  if (**(long **)(*(long *)PTR_DAT_05e5dd70 + 0xb8) != 0) {
    Sound_manager_PlaySfx_0x600054a(0x3f800000,**(long **)(*(long *)PTR_DAT_05e5dd70 + 0xb8),5,0,0);
    if (*(long *)(param_1 + 0x30) != 0) {
      Raid_Start_UI_Reload_Entry(*(long *)(param_1 + 0x30),0);
      return;
    }
  }
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

