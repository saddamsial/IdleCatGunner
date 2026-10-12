/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b8c580, Ghidra VA 02c8c580. */

undefined8 _Timer_Routine_d__7_MoveNext(long param_1)

{
  undefined *puVar1;
  undefined8 uVar2;
  ulong uVar3;
  long lVar4;
  long lVar5;
  long *plVar6;
  
  if ((bRam000000000625c3b6 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e62660);
    func_0x029f5a50(PTR_DAT_05e591c0);
    func_0x029f5a50(PTR_DAT_05e5bed0);
    bRam000000000625c3b6 = 1;
  }
  puVar1 = PTR_DAT_05e5bed0;
  lVar5 = *(long *)(param_1 + 0x20);
  if (*(int *)(param_1 + 0x10) == 1) {
    *(undefined4 *)(param_1 + 0x10) = 0xffffffff;
  }
  else {
    if (*(int *)(param_1 + 0x10) != 0) {
      return 0;
    }
    *(undefined4 *)(param_1 + 0x10) = 0xffffffff;
    uVar2 = func_0x029f5cec(*(undefined8 *)puVar1);
    WaitForSecondsRealtime__ctor_0x6000e2a(0x3f800000,uVar2,0);
    *(undefined8 *)(param_1 + 0x28) = uVar2;
    Managed_WriteBarrier((undefined8 *)(param_1 + 0x28),uVar2);
  }
  if (lVar5 != 0) {
    uVar2 = *(undefined8 *)(lVar5 + 0x28);
    if (*(int *)(*(long *)PTR_DAT_05e591c0 + 0xe4) == 0) {
      func_0x029f5bd0();
    }
    puVar1 = PTR_DAT_05e62660;
    uVar3 = Object_op_Inequality_0x6000ded(uVar2,0,0);
    if ((uVar3 & 1) != 0) {
      plVar6 = *(long **)(lVar5 + 0x28);
      if (*(int *)(*(long *)puVar1 + 0xe4) == 0) {
        func_0x029f5bd0();
      }
      DailyGun_Remain_return_0x6000cca();
      uVar2 = DailyGun_Remain_str_return_0x6000ccb();
      if (plVar6 == (long *)0x0) goto LAB_02c8c748;
      (**(code **)(*plVar6 + 0x558))(plVar6,uVar2,*(undefined8 *)(*plVar6 + 0x560));
    }
    lVar4 = *(long *)puVar1;
    if (*(int *)(lVar4 + 0xe4) == 0) {
      func_0x029f5bd0();
      lVar4 = *(long *)puVar1;
    }
    if (**(long **)(lVar4 + 0xb8) != 0) {
      DailyGun_Week_Refresh_0x6000ccf();
      if (**(long **)(*(long *)puVar1 + 0xb8) != 0) {
        uVar3 = String_op_Inequality_0x600025b
                          (*(undefined8 *)(lVar5 + 0x38),
                           *(undefined8 *)(**(long **)(*(long *)puVar1 + 0xb8) + 0x28),0);
        if ((uVar3 & 1) == 0) {
LAB_02c8c75c:
          *(undefined8 *)(param_1 + 0x18) = *(undefined8 *)(param_1 + 0x28);
          Managed_WriteBarrier((undefined8 *)(param_1 + 0x18));
          *(undefined4 *)(param_1 + 0x10) = 1;
          return 1;
        }
        lVar4 = *(long *)puVar1;
        if (*(int *)(lVar4 + 0xe4) == 0) {
          func_0x029f5bd0();
          lVar4 = *(long *)puVar1;
        }
        if (**(long **)(lVar4 + 0xb8) != 0) {
          *(undefined8 *)(lVar5 + 0x38) = *(undefined8 *)(**(long **)(lVar4 + 0xb8) + 0x28);
          Managed_WriteBarrier(lVar5 + 0x38);
          lVar4 = *(long *)(lVar5 + 0x20);
          if (lVar4 != 0) {
            uVar3 = 0;
            do {
              if ((long)(int)*(uint *)(lVar4 + 0x18) <= (long)uVar3) {
                DailyGun_popup_Panel_Reload(lVar5);
                goto LAB_02c8c75c;
              }
              if (*(uint *)(lVar4 + 0x18) <= uVar3) {
                    /* WARNING: Subroutine does not return */
                Throw_Index_Wrapper();
              }
              if (*(long *)(lVar4 + uVar3 * 8 + 0x20) != 0) {
                DailyGun_Item_First_Reload_0x6000cd7();
                lVar4 = *(long *)(lVar5 + 0x20);
              }
              uVar3 = uVar3 + 1;
            } while (lVar4 != 0);
          }
        }
      }
    }
  }
LAB_02c8c748:
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

