/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b8bb7c, Ghidra VA 02c8bb7c. */

void DailyGun_Item_First_Reload(long param_1)

{
  undefined *puVar1;
  undefined *puVar2;
  undefined4 uVar3;
  ulong uVar4;
  long lVar5;
  long *plVar6;
  undefined8 uVar7;
  
  puVar2 = PTR_DAT_05e62660;
  if ((bRam000000000625c3b1 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e62660);
    func_0x029f5a50(PTR_DAT_05e591c0);
    bRam000000000625c3b1 = 1;
  }
  puVar1 = PTR_DAT_05e591c0;
  uVar3 = *(undefined4 *)(param_1 + 0x20);
  if (*(int *)(*(long *)puVar2 + 0xe4) == 0) {
    func_0x029f5bd0();
  }
  uVar3 = DailyGun_GunNum_return(uVar3);
  lVar5 = *(long *)puVar1;
  uVar7 = *(undefined8 *)(param_1 + 0x28);
  if (*(int *)(lVar5 + 0xe4) == 0) {
    func_0x029f5bd0(lVar5);
  }
  uVar4 = Object_op_Inequality_0x6000ded(uVar7,0,0);
  if ((uVar4 & 1) != 0) {
    if (*(long *)(param_1 + 0x28) == 0) goto LAB_02c8bccc;
    Gun_Item_Demo_Reload_0x6000b5a(*(long *)(param_1 + 0x28),uVar3,0);
  }
  uVar7 = *(undefined8 *)(param_1 + 0x30);
  if (*(int *)(*(long *)puVar1 + 0xe4) == 0) {
    func_0x029f5bd0();
  }
  uVar4 = Object_op_Inequality_0x6000ded(uVar7,0,0);
  if ((uVar4 & 1) == 0) {
    return;
  }
  lVar5 = *(long *)puVar2;
  plVar6 = *(long **)(param_1 + 0x30);
  if (*(int *)(lVar5 + 0xe4) == 0) {
    func_0x029f5bd0();
    lVar5 = *(long *)puVar2;
  }
  lVar5 = *(long *)(*(long *)(lVar5 + 0xb8) + 0x10);
  if (lVar5 != 0) {
    if (*(uint *)(lVar5 + 0x18) <= *(uint *)(param_1 + 0x20)) {
                    /* WARNING: Subroutine does not return */
      Throw_Index_Wrapper();
    }
    uVar7 = Int32_ToString_0x600080e(lVar5 + (long)(int)*(uint *)(param_1 + 0x20) * 4 + 0x20,0);
    if (plVar6 != (long *)0x0) {
                    /* WARNING: Could not recover jumptable at 0x02c8bcb8. Too many branches */
                    /* WARNING: Treating indirect jump as call */
      (**(code **)(*plVar6 + 0x558))(plVar6,uVar7,*(undefined8 *)(*plVar6 + 0x560));
      return;
    }
  }
LAB_02c8bccc:
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

