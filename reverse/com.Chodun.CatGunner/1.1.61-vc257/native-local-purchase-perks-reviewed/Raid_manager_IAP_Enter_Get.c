/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b57d68, Ghidra VA 02c57d68. */

undefined8 Raid_manager_IAP_Enter_Get(long param_1)

{
  Raid_manager_Ticket_Reload_0x6000900();
  *(undefined1 *)(param_1 + 0x75) = 1;
  SaveSystem_Save_0x600048a(0);
  if (*(char *)(param_1 + 0x77) == '\0') {
    *(undefined1 *)(param_1 + 0x76) = 1;
  }
  else {
    Raid_manager_Game_Enter_0x6000916(param_1,3);
  }
  return 1;
}

