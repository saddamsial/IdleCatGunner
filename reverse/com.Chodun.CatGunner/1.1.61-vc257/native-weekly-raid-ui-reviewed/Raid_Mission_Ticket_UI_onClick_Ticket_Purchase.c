/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b554ec, Ghidra VA 02c554ec. */

void Raid_Mission_Ticket_UI_onClick_Ticket_Purchase(long param_1)

{
  undefined8 *puVar1;
  undefined *puVar2;
  undefined *puVar3;
  ulong uVar4;
  long lVar5;
  undefined8 uVar6;
  
  puVar3 = PTR_DAT_05e5e068;
  puVar2 = PTR_DAT_05e591c0;
  if ((bRam000000000625c189 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e591c0);
    func_0x029f5a50(PTR_DAT_05e5e068);
    func_0x029f5a50(PTR_DAT_05e59050);
    bRam000000000625c189 = 1;
  }
  uVar6 = **(undefined8 **)(*(long *)puVar3 + 0xb8);
  if (*(int *)(*(long *)puVar2 + 0xe4) == 0) {
    func_0x029f5bd0();
  }
  uVar4 = Object_op_Equality_0x6000dec(uVar6,0,0);
  if ((uVar4 & 1) != 0) {
    return;
  }
  uVar4 = String_IsNullOrEmpty_0x6000277(*(undefined8 *)(param_1 + 0x38),0);
  lVar5 = **(long **)(*(long *)puVar3 + 0xb8);
  if (lVar5 != 0) {
    puVar1 = (undefined8 *)PTR_DAT_05e59050;
    if ((uVar4 & 1) == 0) {
      puVar1 = (undefined8 *)(param_1 + 0x38);
    }
    Raid_Mission_manager_Ticket_Purchase(lVar5,*puVar1);
    return;
  }
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

