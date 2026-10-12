/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b350e4, Ghidra VA 02c350e4. */

undefined8 _RemainingTimer_d__19_MoveNext(long param_1)

{
  undefined *puVar1;
  long lVar2;
  undefined8 uVar3;
  ulong uVar4;
  long lVar5;
  long *plVar6;
  
  if ((bRam000000000625c05f & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e5dd28);
    func_0x029f5a50(PTR_DAT_05e5a180);
    func_0x029f5a50(PTR_DAT_05e5a710);
    bRam000000000625c05f = 1;
  }
  puVar1 = PTR_DAT_05e5dd28;
  if (1 < *(uint *)(param_1 + 0x10)) {
    return 0;
  }
  lVar5 = *(long *)(param_1 + 0x20);
  *(undefined4 *)(param_1 + 0x10) = 0xffffffff;
  lVar2 = *(long *)puVar1;
  if (*(int *)(lVar2 + 0xe4) == 0) {
    func_0x029f5bd0();
    lVar2 = *(long *)puVar1;
  }
  if ((lVar5 != 0) && (lVar2 = *(long *)(*(long *)(lVar2 + 0xb8) + 0x10), lVar2 != 0)) {
    uVar3 = Adventure_manager_Adventure_Remain_Duration_return
                      (lVar2,*(undefined4 *)(lVar5 + 0x90),*(undefined4 *)(lVar5 + 0x94),0);
    puVar1 = PTR_DAT_05e5a180;
    lVar2 = *(long *)PTR_DAT_05e5a180;
    if (*(int *)(lVar2 + 0xe4) == 0) {
      func_0x029f5bd0(lVar2);
      lVar2 = *(long *)puVar1;
    }
    uVar4 = TimeSpan_op_LessThanOrEqual_0x6000a96(uVar3,**(undefined8 **)(lVar2 + 0xb8),0);
    if ((uVar4 & 1) != 0) {
      Adventure_Map_info_item_Reload
                (lVar5,*(undefined4 *)(lVar5 + 0x90),*(undefined4 *)(lVar5 + 0x94));
      return 0;
    }
    plVar6 = *(long **)(lVar5 + 0x70);
    uVar3 = Adventure_Map_info_item_FormatDuration(uVar4,uVar3);
    if (plVar6 != (long *)0x0) {
      (**(code **)(*plVar6 + 0x558))(plVar6,uVar3,*(undefined8 *)(*plVar6 + 0x560));
      Adventure_Map_info_item_AD_Btn_Reload_0x60006c6(lVar5);
      uVar3 = func_0x029f5cec(*(undefined8 *)PTR_DAT_05e5a710);
      WaitForSeconds__ctor_0x6000e26(0x3f800000,uVar3,0);
      *(undefined8 *)(param_1 + 0x18) = uVar3;
      Managed_WriteBarrier((undefined8 *)(param_1 + 0x18),uVar3);
      *(undefined4 *)(param_1 + 0x10) = 1;
      return 1;
    }
  }
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

