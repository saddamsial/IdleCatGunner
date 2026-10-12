/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b9ca50, Ghidra VA 02c9ca50. */

void Shop_manager_Purchase_RaidMissionTicket(long param_1,undefined8 param_2)

{
  undefined *puVar1;
  undefined4 uVar2;
  ulong uVar3;
  undefined8 uVar4;
  
  if ((bRam000000000625c467 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e591c0);
    func_0x029f5a50(PTR_DAT_05e5e068);
    func_0x029f5a50(PTR_DAT_05e5d920);
    func_0x029f5a50(PTR_DAT_05e641d8);
    bRam000000000625c467 = 1;
  }
  puVar1 = PTR_DAT_05e5e068;
  if (*(long *)(param_1 + 0x20) == 0) {
    uVar4 = Alarm_get_StoreConnectFail_0x60012f8(0);
    if (*(int *)(*(long *)PTR_DAT_05e5d920 + 0xe4) == 0) {
      func_0x029f5bd0(*(long *)PTR_DAT_05e5d920);
    }
    Shop_manager_SafeAlert_0x6000da6(uVar4);
    return;
  }
  uVar4 = **(undefined8 **)(*(long *)PTR_DAT_05e5e068 + 0xb8);
  if (*(int *)(*(long *)PTR_DAT_05e591c0 + 0xe4) == 0) {
    func_0x029f5bd0();
  }
  uVar3 = Object_op_Equality_0x6000dec(uVar4,0,0);
  if ((uVar3 & 1) == 0) {
    if (**(long **)(*(long *)puVar1 + 0xb8) == 0) {
                    /* WARNING: Subroutine does not return */
      Throw_NullReference_Wrapper();
    }
    if (*(char *)(**(long **)(*(long *)puVar1 + 0xb8) + 0x48) == '\0') {
      *(undefined8 *)(param_1 + 0x30) = param_2;
      uVar4 = Managed_WriteBarrier((undefined8 *)(param_1 + 0x30),param_2);
      puVar1 = PTR_DAT_05e641d8;
      uVar2 = Shop_manager_ItemIdxFromProductId_0x6000da3(uVar4,*(undefined8 *)PTR_DAT_05e641d8);
      uVar4 = *(undefined8 *)puVar1;
      *(undefined4 *)(param_1 + 0x38) = uVar2;
      Shop_manager_BeginPurchase_0x6000d7d(param_1,uVar4);
      return;
    }
  }
  return;
}

