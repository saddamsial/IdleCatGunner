/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b2f6b8, Ghidra VA 02c2f6b8. */

void Adventure_Ticket_UI_Reload(long param_1)

{
  undefined *puVar1;
  undefined *puVar2;
  long lVar3;
  ulong uVar4;
  undefined8 uVar5;
  undefined8 uVar6;
  undefined4 uStack_28;
  undefined4 uStack_24;
  
  puVar1 = PTR_DAT_05e5dd28;
  if ((bRam000000000625c01f & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e5dd28);
    func_0x029f5a50(PTR_DAT_05e591c0);
    func_0x029f5a50(PTR_DAT_05e61f28);
    bRam000000000625c01f = 1;
  }
  puVar2 = PTR_DAT_05e591c0;
  lVar3 = *(long *)puVar1;
  if (*(int *)(lVar3 + 0xe4) == 0) {
    func_0x029f5bd0();
    lVar3 = *(long *)puVar1;
  }
  lVar3 = *(long *)(*(long *)(lVar3 + 0xb8) + 0x10);
  if (*(int *)(*(long *)puVar2 + 0xe4) == 0) {
    func_0x029f5bd0(*(long *)puVar2);
  }
  uVar4 = Object_op_Equality_0x6000dec(lVar3,0,0);
  puVar1 = PTR_DAT_05e58a10;
  if ((uVar4 & 1) == 0) {
    if (lVar3 == 0) {
                    /* WARNING: Subroutine does not return */
      Throw_NullReference_Wrapper();
    }
    uStack_24 = *(undefined4 *)(lVar3 + 0x58);
    uVar5 = func_0x029f5bd8(*(undefined8 *)(PTR_DAT_05e58a10 + 0x48),&uStack_24);
    uStack_28 = 0x14;
    uVar6 = func_0x029f5bd8(*(undefined8 *)(puVar1 + 0x48),&uStack_28);
    uVar5 = String_Format_0x600029d(*(undefined8 *)PTR_DAT_05e61f28,uVar5,uVar6,0);
    Adventure_Ticket_UI_Set_Texts(*(undefined8 *)(param_1 + 0x20),uVar5);
    if (*(int *)(lVar3 + 0x58) < 0x14) {
      Adventure_manager_Ticket_Remain_Duration_return(lVar3);
      uVar5 = Adventure_Ticket_UI_Format_Cooltime();
    }
    else {
      uVar5 = **(undefined8 **)(*(long *)(puVar1 + 0x90) + 0xb8);
    }
    Adventure_Ticket_UI_Set_Texts(*(undefined8 *)(param_1 + 0x28),uVar5);
  }
  return;
}

