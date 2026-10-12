/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b545e0, Ghidra VA 02c545e0. */

undefined1 Raid_Mission_manager_get_Ticket_Active_Now(long param_1)

{
  Raid_Mission_manager_Season_Check();
  return *(undefined1 *)(param_1 + 0x48);
}

