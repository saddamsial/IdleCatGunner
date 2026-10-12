/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b53f28, Ghidra VA 02c53f28. */

void Raid_Mission_manager_Ticket_Popup_Open(long param_1)

{
  ulong uVar1;
  undefined8 uVar2;
  
  if ((bRam000000000625c173 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e591c0);
    bRam000000000625c173 = 1;
  }
  Raid_Mission_manager_Season_Check(param_1);
  if (*(char *)(param_1 + 0x48) == '\0') {
    uVar2 = *(undefined8 *)(param_1 + 0x58);
    if (*(int *)(*(long *)PTR_DAT_05e591c0 + 0xe4) == 0) {
      func_0x029f5bd0();
    }
    uVar1 = Object_op_Inequality_0x6000ded(uVar2,0,0);
    if ((uVar1 & 1) != 0) {
      if (*(long *)(param_1 + 0x58) != 0) {
        GameObject_SetActive_0x6000cfe(*(long *)(param_1 + 0x58),1,0);
        return;
      }
                    /* WARNING: Subroutine does not return */
      Throw_NullReference_Wrapper();
    }
  }
  return;
}

