/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b54b9c, Ghidra VA 02c54b9c. */

void Raid_Mission_manager_Ticket_Purchase(long param_1,undefined8 param_2)

{
  undefined *puVar1;
  undefined *puVar2;
  ulong uVar3;
  long lVar4;
  long lVar5;
  undefined8 uVar6;
  
  if ((bRam000000000625c17e & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e591c0);
    func_0x029f5a50(PTR_DAT_05e5d920);
    bRam000000000625c17e = 1;
  }
  puVar1 = PTR_DAT_05e591c0;
  Raid_Mission_manager_Season_Check(param_1);
  puVar2 = PTR_DAT_05e5d920;
  if (*(char *)(param_1 + 0x48) == '\0') {
    if (*(int *)(*(long *)PTR_DAT_05e5d920 + 0xe4) == 0) {
      func_0x029f5bd0();
    }
    if (cRam000000000625b960 == '\0') {
      func_0x029f5a50(PTR_DAT_05e5d920);
      cRam000000000625b960 = '\x01';
    }
    lVar4 = *(long *)puVar2;
    if (*(int *)(lVar4 + 0xe4) == 0) {
      func_0x029f5bd0();
      lVar4 = *(long *)puVar2;
    }
    lVar5 = *(long *)puVar1;
    uVar6 = **(undefined8 **)(lVar4 + 0xb8);
    if (*(int *)(lVar5 + 0xe4) == 0) {
      func_0x029f5bd0(lVar5);
    }
    uVar3 = Object_op_Equality_0x6000dec(uVar6,0,0);
    if ((uVar3 & 1) != 0) {
      return;
    }
    if (*(int *)(*(long *)puVar2 + 0xe4) == 0) {
      func_0x029f5bd0();
    }
    if (cRam000000000625b960 == '\0') {
      func_0x029f5a50(PTR_DAT_05e5d920);
      cRam000000000625b960 = '\x01';
    }
    lVar4 = *(long *)puVar2;
    if (*(int *)(lVar4 + 0xe4) == 0) {
      func_0x029f5bd0();
      lVar4 = *(long *)puVar2;
    }
    if (**(long **)(lVar4 + 0xb8) != 0) {
      Shop_manager_Purchase_RaidMissionTicket_0x6000dc9(**(long **)(lVar4 + 0xb8),param_2,0);
      return;
    }
  }
  else {
    if (cRam000000000625ba57 == '\0') {
      func_0x029f5a50(PTR_DAT_05e5dd70);
      cRam000000000625ba57 = '\x01';
    }
    puVar2 = PTR_DAT_05e5dd70;
    uVar6 = **(undefined8 **)(*(long *)PTR_DAT_05e5dd70 + 0xb8);
    if (*(int *)(*(long *)puVar1 + 0xe4) == 0) {
      func_0x029f5bd0();
    }
    uVar3 = Object_op_Inequality_0x6000ded(uVar6,0,0);
    if ((uVar3 & 1) == 0) {
      return;
    }
    if (cRam000000000625ba57 == '\0') {
      func_0x029f5a50(PTR_DAT_05e5dd70);
      cRam000000000625ba57 = '\x01';
    }
    if (**(long **)(*(long *)puVar2 + 0xb8) != 0) {
      Sound_manager_PlaySfx_0x600054a(0x3f800000,**(long **)(*(long *)puVar2 + 0xb8),5,0,0);
      return;
    }
  }
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

