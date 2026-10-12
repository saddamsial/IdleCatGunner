/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b2fae0, Ghidra VA 02c2fae0. */

undefined8 _Ticket_Check_Routine_d__5_MoveNext(long param_1)

{
  undefined *puVar1;
  undefined *puVar2;
  undefined8 uVar3;
  long lVar4;
  ulong uVar5;
  long lVar6;
  
  if ((bRam000000000625c022 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e5dd28);
    func_0x029f5a50(PTR_DAT_05e591c0);
    func_0x029f5a50(PTR_DAT_05e5a710);
    bRam000000000625c022 = 1;
  }
  puVar1 = PTR_DAT_05e5a710;
  lVar6 = *(long *)(param_1 + 0x20);
  if (*(int *)(param_1 + 0x10) == 1) {
    *(undefined4 *)(param_1 + 0x10) = 0xffffffff;
  }
  else {
    if (*(int *)(param_1 + 0x10) != 0) {
      return 0;
    }
    *(undefined4 *)(param_1 + 0x10) = 0xffffffff;
    uVar3 = func_0x029f5cec(*(undefined8 *)puVar1);
    WaitForSeconds__ctor_0x6000e26(0x3f800000,uVar3,0);
    *(undefined8 *)(param_1 + 0x28) = uVar3;
    Managed_WriteBarrier((undefined8 *)(param_1 + 0x28),uVar3);
  }
  puVar2 = PTR_DAT_05e5dd28;
  puVar1 = PTR_DAT_05e591c0;
  lVar4 = *(long *)PTR_DAT_05e5dd28;
  if (*(int *)(lVar4 + 0xe4) == 0) {
    func_0x029f5bd0();
    lVar4 = *(long *)puVar2;
  }
  uVar3 = *(undefined8 *)(*(long *)(lVar4 + 0xb8) + 0x10);
  if (*(int *)(*(long *)puVar1 + 0xe4) == 0) {
    func_0x029f5bd0(*(long *)puVar1);
  }
  uVar5 = Object_op_Inequality_0x6000ded(uVar3,0,0);
  if ((uVar5 & 1) != 0) {
    lVar4 = *(long *)puVar2;
    if (*(int *)(lVar4 + 0xe4) == 0) {
      func_0x029f5bd0();
      lVar4 = *(long *)puVar2;
    }
    if ((*(long *)(*(long *)(lVar4 + 0xb8) + 0x10) == 0) ||
       (Adventure_manager_Ticket_Refresh(), lVar6 == 0)) {
                    /* WARNING: Subroutine does not return */
      Throw_NullReference_Wrapper();
    }
    Adventure_Ticket_UI_Reload(lVar6);
  }
  *(undefined8 *)(param_1 + 0x18) = *(undefined8 *)(param_1 + 0x28);
  Managed_WriteBarrier((undefined8 *)(param_1 + 0x18));
  *(undefined4 *)(param_1 + 0x10) = 1;
  return 1;
}

