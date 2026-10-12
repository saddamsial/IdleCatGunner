/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2ba5548, Ghidra VA 02ca5548. */

void IAP_PriceText_Refresh(long param_1)

{
  long *plVar1;
  undefined *puVar2;
  undefined *puVar3;
  ulong uVar4;
  long lVar5;
  long lVar6;
  undefined8 uVar7;
  
  puVar2 = PTR_DAT_05e591c0;
  if ((bRam000000000625c4be & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e64190);
    func_0x029f5a50(PTR_DAT_05e591c0);
    func_0x029f5a50(PTR_DAT_05e5d920);
    bRam000000000625c4be = 1;
  }
  uVar7 = *(undefined8 *)(param_1 + 0x38);
  if (*(int *)(*(long *)puVar2 + 0xe4) == 0) {
    func_0x029f5bd0();
  }
  puVar3 = PTR_DAT_05e5d920;
  uVar4 = Object_op_Equality_0x6000dec(uVar7,0,0);
  if ((uVar4 & 1) != 0) {
    uVar7 = func_0x02fe5f2c(param_1,*(undefined8 *)PTR_DAT_05e64190);
    *(undefined8 *)(param_1 + 0x38) = uVar7;
    Managed_WriteBarrier((undefined8 *)(param_1 + 0x38),uVar7);
  }
  if (*(int *)(*(long *)puVar3 + 0xe4) == 0) {
    func_0x029f5bd0();
  }
  if (cRam000000000625b960 == '\0') {
    func_0x029f5a50(PTR_DAT_05e5d920);
    cRam000000000625b960 = '\x01';
  }
  lVar5 = *(long *)puVar3;
  if (*(int *)(lVar5 + 0xe4) == 0) {
    func_0x029f5bd0();
    lVar5 = *(long *)puVar3;
  }
  lVar6 = *(long *)puVar2;
  lVar5 = **(long **)(lVar5 + 0xb8);
  if (*(int *)(lVar6 + 0xe4) == 0) {
    func_0x029f5bd0(lVar6);
  }
  uVar4 = Object_op_Equality_0x6000dec(lVar5,0,0);
  if ((uVar4 & 1) == 0) {
    uVar7 = IAP_PriceText_ResolveId_0x6000e5a(param_1,lVar5);
    if (lVar5 == 0) {
                    /* WARNING: Subroutine does not return */
      Throw_NullReference_Wrapper(uVar7,uVar7);
    }
    uVar7 = Shop_manager_Localized_Price_return_0x6000dbd(lVar5,uVar7,0);
    uVar4 = String_IsNullOrEmpty_0x6000277(uVar7,0);
    if ((uVar4 & 1) == 0) {
      plVar1 = *(long **)(param_1 + 0x38);
      uVar7 = String_Concat_0x6000299
                        (*(undefined8 *)(param_1 + 0x28),uVar7,*(undefined8 *)(param_1 + 0x30),0);
      if (plVar1 != (long *)0x0) {
                    /* WARNING: Could not recover jumptable at 0x02ca56e0. Too many branches */
                    /* WARNING: Treating indirect jump as call */
        (**(code **)(*plVar1 + 0x558))(plVar1,uVar7,*(undefined8 *)(*plVar1 + 0x560));
        return;
      }
                    /* WARNING: Subroutine does not return */
      Throw_NullReference_Wrapper();
    }
  }
  return;
}

