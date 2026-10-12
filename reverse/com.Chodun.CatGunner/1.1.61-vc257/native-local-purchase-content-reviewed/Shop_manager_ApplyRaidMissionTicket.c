/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b98870, Ghidra VA 02c98870. */

undefined8 Shop_manager_ApplyRaidMissionTicket(void)

{
  undefined *puVar1;
  undefined *puVar2;
  ulong uVar3;
  long lVar4;
  undefined8 uVar5;
  
  puVar2 = PTR_DAT_05e5e068;
  puVar1 = PTR_DAT_05e591c0;
  if ((bRam000000000625c468 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e58f08);
    func_0x029f5a50(PTR_DAT_05e591c0);
    func_0x029f5a50(PTR_DAT_05e5e068);
    func_0x029f5a50(PTR_DAT_05e64468);
    bRam000000000625c468 = 1;
  }
  uVar5 = **(undefined8 **)(*(long *)puVar2 + 0xb8);
  if (*(int *)(*(long *)puVar1 + 0xe4) == 0) {
    func_0x029f5bd0();
  }
  uVar3 = Object_op_Equality_0x6000dec(uVar5,0,0);
  puVar1 = PTR_DAT_05e64468;
  if ((uVar3 & 1) != 0) {
    if (*(int *)(*(long *)PTR_DAT_05e58f08 + 0xe4) == 0) {
      func_0x029f5bd0();
    }
    Debug_LogWarning_0x6000346(*(undefined8 *)puVar1,0);
    return 0;
  }
  lVar4 = **(long **)(*(long *)puVar2 + 0xb8);
  if (lVar4 != 0) {
    uVar5 = Raid_Mission_manager_Ticket_Apply_0x60008cb(lVar4,0);
    return uVar5;
  }
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

