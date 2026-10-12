/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b540a4, Ghidra VA 02c540a4. */

void Raid_Mission_manager_Ticket_Popup_Close(long param_1)

{
  undefined *puVar1;
  ulong uVar2;
  undefined8 uVar3;
  
  puVar1 = PTR_DAT_05e591c0;
  if ((bRam000000000625c174 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e591c0);
    bRam000000000625c174 = 1;
  }
  uVar3 = *(undefined8 *)(param_1 + 0x58);
  if (*(int *)(*(long *)puVar1 + 0xe4) == 0) {
    func_0x029f5bd0();
  }
  uVar2 = Object_op_Inequality_0x6000ded(uVar3,0,0);
  if ((uVar2 & 1) != 0) {
    if (*(long *)(param_1 + 0x58) != 0) {
      GameObject_SetActive_0x6000cfe(*(long *)(param_1 + 0x58),0,0);
      return;
    }
                    /* WARNING: Subroutine does not return */
    Throw_NullReference_Wrapper();
  }
  return;
}

