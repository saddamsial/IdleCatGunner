/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b54d8c, Ghidra VA 02c54d8c. */

undefined8 Raid_Mission_manager_Ticket_Apply(long param_1)

{
  long lVar1;
  
  if ((bRam000000000625c17f & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e58f08);
    func_0x029f5a50(PTR_DAT_05e5e068);
    func_0x029f5a50(PTR_DAT_05e63610);
    bRam000000000625c17f = 1;
  }
  Raid_Mission_manager_Season_Check(param_1);
  if (*(char *)(param_1 + 0x48) == '\0') {
    *(undefined1 *)(param_1 + 0x48) = 1;
    SaveSystem_Save_0x600048a(0);
    if (*(int *)(*(long *)PTR_DAT_05e58f08 + 0xe4) == 0) {
      func_0x029f5bd0();
    }
    Debug_Log_0x600033c(*(undefined8 *)PTR_DAT_05e63610,0);
    Raid_Mission_manager_Ticket_Popup_Close(param_1);
    lVar1 = *(long *)(*(long *)(*(long *)PTR_DAT_05e5e068 + 0xb8) + 8);
    if (lVar1 != 0) {
      (**(code **)(lVar1 + 0x18))(*(undefined8 *)(lVar1 + 0x40),*(undefined8 *)(lVar1 + 0x28));
    }
  }
  return 1;
}

