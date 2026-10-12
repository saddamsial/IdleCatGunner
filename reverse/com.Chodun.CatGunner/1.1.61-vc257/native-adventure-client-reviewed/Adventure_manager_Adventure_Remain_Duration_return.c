/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b2dfb8, Ghidra VA 02c2dfb8. */

void Adventure_manager_Adventure_Remain_Duration_return(long param_1,uint param_2,uint param_3)

{
  undefined *puVar1;
  undefined *puVar2;
  undefined8 uVar3;
  undefined8 uVar4;
  long lVar5;
  
  if ((bRam000000000625c00a & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e597d0);
    func_0x029f5a50(PTR_DAT_05e5d3c0);
    bRam000000000625c00a = 1;
  }
  puVar2 = PTR_DAT_05e5d3c0;
  puVar1 = PTR_DAT_05e597d0;
  lVar5 = *(long *)(param_1 + 0x20);
  if (lVar5 != 0) {
    if (param_2 < *(uint *)(lVar5 + 0x18)) {
      lVar5 = *(long *)(lVar5 + (long)(int)param_2 * 8 + 0x20);
      if ((lVar5 == 0) || (lVar5 = *(long *)(lVar5 + 0x18), lVar5 == 0)) goto LAB_02c2e0a4;
      if (param_3 < *(uint *)(lVar5 + 0x18)) {
        uVar3 = Adventure_manager_Adventure_End_dateTime_return
                          (param_1,*(undefined8 *)(lVar5 + (long)(int)param_3 * 8 + 0x20),param_3);
        if (*(int *)(*(long *)puVar2 + 0xe4) == 0) {
          func_0x029f5bd0(*(long *)puVar2);
        }
        uVar4 = Time_manager_get_Now_0x6000579();
        if (*(int *)(*(long *)puVar1 + 0xe4) == 0) {
          func_0x029f5bd0(*(long *)puVar1);
        }
        DateTime_op_Subtraction_0x600063a(uVar3,uVar4,0);
        return;
      }
    }
                    /* WARNING: Subroutine does not return */
    Throw_Index_Wrapper();
  }
LAB_02c2e0a4:
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

