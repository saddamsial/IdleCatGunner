/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2ba4bec, Ghidra VA 02ca4bec. */

void StepUp_popup_Time_Reload(long param_1)

{
  undefined *puVar1;
  undefined *puVar2;
  ulong uVar3;
  long lVar4;
  long lVar5;
  long *plVar6;
  undefined8 uVar7;
  
  puVar1 = PTR_DAT_05e591c0;
  if ((bRam000000000625c4b3 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e591c0);
    func_0x029f5a50(PTR_DAT_05e5e4b8);
    bRam000000000625c4b3 = 1;
  }
  uVar7 = *(undefined8 *)(param_1 + 0x20);
  if (*(int *)(*(long *)puVar1 + 0xe4) == 0) {
    func_0x029f5bd0();
  }
  uVar3 = Object_op_Equality_0x6000dec(uVar7,0,0);
  puVar2 = PTR_DAT_05e5e4b8;
  if ((uVar3 & 1) == 0) {
    lVar4 = *(long *)PTR_DAT_05e5e4b8;
    if (*(int *)(lVar4 + 0xe4) == 0) {
      func_0x029f5bd0();
      lVar4 = *(long *)puVar2;
    }
    lVar5 = *(long *)puVar1;
    uVar7 = **(undefined8 **)(lVar4 + 0xb8);
    if (*(int *)(lVar5 + 0xe4) == 0) {
      func_0x029f5bd0(lVar5);
    }
    uVar3 = Object_op_Equality_0x6000dec(uVar7,0,0);
    if ((uVar3 & 1) == 0) {
      lVar4 = *(long *)puVar2;
      plVar6 = *(long **)(param_1 + 0x20);
      if (*(int *)(lVar4 + 0xe4) == 0) {
        func_0x029f5bd0();
        lVar4 = *(long *)puVar2;
      }
      if (**(long **)(lVar4 + 0xb8) != 0) {
        StepUp_Remain_Duration();
        uVar7 = StepUp_Remain_str_return();
        if (plVar6 != (long *)0x0) {
                    /* WARNING: Could not recover jumptable at 0x02ca4d04. Too many branches */
                    /* WARNING: Treating indirect jump as call */
          (**(code **)(*plVar6 + 0x558))(plVar6,uVar7,*(undefined8 *)(*plVar6 + 0x560));
          return;
        }
      }
                    /* WARNING: Subroutine does not return */
      Throw_NullReference_Wrapper();
    }
  }
  return;
}

