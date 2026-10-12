/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b8b2d0, Ghidra VA 02c8b2d0. */

void DailyGun_Week_Refresh(long param_1)

{
  undefined *puVar1;
  undefined *puVar2;
  undefined8 uVar3;
  ulong uVar4;
  uint uVar5;
  ulong uVar6;
  long lVar7;
  undefined4 *puVar8;
  undefined8 uStack_28;
  
  puVar1 = PTR_DAT_05e5d3c0;
  if ((bRam000000000625c3aa & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e62660);
    func_0x029f5a50(PTR_DAT_05e597d0);
    func_0x029f5a50(PTR_DAT_05e5d3c0);
    func_0x029f5a50(PTR_DAT_05e5d3e0);
    bRam000000000625c3aa = 1;
  }
  puVar2 = PTR_DAT_05e62660;
  uStack_28 = 0;
  if (*(int *)(*(long *)puVar1 + 0xe4) == 0) {
    func_0x029f5bd0();
  }
  puVar1 = PTR_DAT_05e597d0;
  uVar3 = Time_manager_get_Now_0x6000579(0);
  if (*(int *)(*(long *)puVar2 + 0xe4) == 0) {
    func_0x029f5bd0(*(long *)puVar2);
  }
  puVar2 = PTR_DAT_05e5d3e0;
  uStack_28 = DailyGun_WeekStart_return(uVar3);
  if (*(int *)(*(long *)puVar1 + 0xe4) == 0) {
    func_0x029f5bd0(*(long *)puVar1);
  }
  uVar3 = DateTime_ToString_0x600062f(&uStack_28,*(undefined8 *)puVar2,0);
  uVar4 = String_op_Equality_0x600025a(*(undefined8 *)(param_1 + 0x28),uVar3,0);
  if ((uVar4 & 1) == 0) {
    *(undefined8 *)(param_1 + 0x28) = uVar3;
    Managed_WriteBarrier((undefined8 *)(param_1 + 0x28),uVar3);
    lVar7 = *(long *)(param_1 + 0x20);
    if (lVar7 == 0) {
                    /* WARNING: Subroutine does not return */
      Throw_NullReference_Wrapper();
    }
    uVar5 = (uint)*(ulong *)(lVar7 + 0x18);
    if (0 < (int)uVar5) {
      uVar4 = (ulong)(uVar5 & ((int)uVar5 >> 0x1f ^ 0xffffffffU));
      uVar6 = *(ulong *)(lVar7 + 0x18) & 0xffffffff;
      puVar8 = (undefined4 *)(lVar7 + 0x20);
      do {
        if (uVar6 == 0) {
                    /* WARNING: Subroutine does not return */
          Throw_Index_Wrapper();
        }
        uVar4 = uVar4 - 1;
        uVar6 = uVar6 - 1;
        *puVar8 = 0;
        puVar8 = puVar8 + 1;
      } while (uVar4 != 0);
    }
    SaveSystem_Save_0x600048a(0);
  }
  return;
}

