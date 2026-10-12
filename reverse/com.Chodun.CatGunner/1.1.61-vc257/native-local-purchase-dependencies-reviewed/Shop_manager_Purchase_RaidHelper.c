/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b9cb98, Ghidra VA 02c9cb98. */

void Shop_manager_Purchase_RaidHelper(long param_1,undefined8 param_2)

{
  undefined *puVar1;
  undefined *puVar2;
  undefined4 uVar3;
  long lVar4;
  ulong uVar5;
  undefined8 uVar6;
  
  if ((bRam000000000625c469 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e591c0);
    func_0x029f5a50(PTR_DAT_05e5e070);
    func_0x029f5a50(PTR_DAT_05e5d920);
    func_0x029f5a50(PTR_DAT_05e64268);
    bRam000000000625c469 = 1;
  }
  puVar2 = PTR_DAT_05e5e070;
  puVar1 = PTR_DAT_05e591c0;
  if (*(long *)(param_1 + 0x20) == 0) {
    uVar6 = Alarm_get_StoreConnectFail_0x60012f8(0);
    if (*(int *)(*(long *)PTR_DAT_05e5d920 + 0xe4) == 0) {
      func_0x029f5bd0(*(long *)PTR_DAT_05e5d920);
    }
    Shop_manager_SafeAlert_0x6000da6(uVar6);
    return;
  }
  lVar4 = *(long *)PTR_DAT_05e5e070;
  if (*(int *)(lVar4 + 0xe4) == 0) {
    func_0x029f5bd0();
    lVar4 = *(long *)puVar2;
  }
  uVar6 = **(undefined8 **)(lVar4 + 0xb8);
  if (*(int *)(*(long *)puVar1 + 0xe4) == 0) {
    func_0x029f5bd0(*(long *)puVar1);
  }
  uVar5 = Object_op_Equality_0x6000dec(uVar6,0,0);
  if ((uVar5 & 1) == 0) {
    lVar4 = *(long *)puVar2;
    if (*(int *)(lVar4 + 0xe4) == 0) {
      func_0x029f5bd0();
      lVar4 = *(long *)puVar2;
    }
    if (**(long **)(lVar4 + 0xb8) == 0) {
                    /* WARNING: Subroutine does not return */
      Throw_NullReference_Wrapper();
    }
    uVar5 = Raid_manager_get_Is_Helper_Active_0x6000930(**(long **)(lVar4 + 0xb8),0);
    if ((uVar5 & 1) == 0) {
      *(undefined8 *)(param_1 + 0x30) = param_2;
      uVar6 = Managed_WriteBarrier((undefined8 *)(param_1 + 0x30),param_2);
      puVar1 = PTR_DAT_05e64268;
      uVar3 = Shop_manager_ItemIdxFromProductId_0x6000da3(uVar6,*(undefined8 *)PTR_DAT_05e64268);
      uVar6 = *(undefined8 *)puVar1;
      *(undefined4 *)(param_1 + 0x38) = uVar3;
      Shop_manager_BeginPurchase_0x6000d7d(param_1,uVar6);
      return;
    }
  }
  return;
}

