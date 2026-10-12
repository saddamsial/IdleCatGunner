/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b2d494, Ghidra VA 02c2d494. */

bool Adventure_manager_Ticket_Use(long param_1,int param_2)

{
  int iVar1;
  undefined8 uVar2;
  
  if ((bRam000000000625c006 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e5d3c0);
    bRam000000000625c006 = 1;
  }
  Adventure_manager_Ticket_Refresh(param_1);
  iVar1 = *(int *)(param_1 + 0x58);
  if ((param_2 <= iVar1) && (*(int *)(param_1 + 0x58) = iVar1 - param_2, 0x13 < iVar1)) {
    if (*(int *)(*(long *)PTR_DAT_05e5d3c0 + 0xe4) == 0) {
      func_0x029f5bd0();
    }
    uVar2 = Time_manager_get_Now_0x6000579();
    *(undefined8 *)(param_1 + 0x60) = uVar2;
  }
  return param_2 <= iVar1;
}

