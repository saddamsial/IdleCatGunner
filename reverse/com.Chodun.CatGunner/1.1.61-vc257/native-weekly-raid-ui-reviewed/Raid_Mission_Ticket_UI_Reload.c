/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b552ec, Ghidra VA 02c552ec. */

void Raid_Mission_Ticket_UI_Reload(long param_1)

{
  char cVar1;
  undefined *puVar2;
  undefined *puVar3;
  ulong uVar4;
  long lVar5;
  undefined8 uVar6;
  long *plVar7;
  undefined4 uStack_24;
  
  puVar3 = PTR_DAT_05e5e068;
  puVar2 = PTR_DAT_05e591c0;
  if ((bRam000000000625c188 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e591c0);
    func_0x029f5a50(PTR_DAT_05e5e068);
    bRam000000000625c188 = 1;
  }
  uStack_24 = 0;
  lVar5 = **(long **)(*(long *)puVar3 + 0xb8);
  if (*(int *)(*(long *)puVar2 + 0xe4) == 0) {
    func_0x029f5bd0();
  }
  uVar4 = Object_op_Equality_0x6000dec(lVar5,0,0);
  if ((uVar4 & 1) == 0) {
    uVar6 = *(undefined8 *)(param_1 + 0x20);
    if (*(int *)(*(long *)puVar2 + 0xe4) == 0) {
      func_0x029f5bd0();
    }
    uVar4 = Object_op_Inequality_0x6000ded(uVar6,0,0);
    if ((uVar4 & 1) == 0) {
      if (lVar5 == 0) goto LAB_02c5546c;
    }
    else {
      if (lVar5 == 0) goto LAB_02c5546c;
      plVar7 = *(long **)(param_1 + 0x20);
      uStack_24 = Raid_Mission_manager_get_ReClaimable_Reward(lVar5);
      uVar6 = Int32_ToString_0x600080e(&uStack_24,0);
      if (plVar7 == (long *)0x0) goto LAB_02c5546c;
      (**(code **)(*plVar7 + 0x558))(plVar7,uVar6,*(undefined8 *)(*plVar7 + 0x560));
    }
    cVar1 = *(char *)(lVar5 + 0x48);
    uVar6 = *(undefined8 *)(param_1 + 0x28);
    if (*(int *)(*(long *)puVar2 + 0xe4) == 0) {
      func_0x029f5bd0();
    }
    uVar4 = Object_op_Inequality_0x6000ded(uVar6,0,0);
    if ((uVar4 & 1) != 0) {
      if (*(long *)(param_1 + 0x28) == 0) goto LAB_02c5546c;
      GameObject_SetActive_0x6000cfe(*(long *)(param_1 + 0x28),cVar1 == '\0',0);
    }
    uVar6 = *(undefined8 *)(param_1 + 0x30);
    if (*(int *)(*(long *)puVar2 + 0xe4) == 0) {
      func_0x029f5bd0();
    }
    uVar4 = Object_op_Inequality_0x6000ded(uVar6,0,0);
    if ((uVar4 & 1) != 0) {
      if (*(long *)(param_1 + 0x30) == 0) {
LAB_02c5546c:
                    /* WARNING: Subroutine does not return */
        Throw_NullReference_Wrapper();
      }
      GameObject_SetActive_0x6000cfe(*(long *)(param_1 + 0x30),cVar1 != '\0',0);
    }
  }
  return;
}

