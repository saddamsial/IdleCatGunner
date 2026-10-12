/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2ba3ffc, Ghidra VA 02ca3ffc. */

void StepUp_Hud__Time_Reload(long param_1)

{
  char cVar1;
  undefined *puVar2;
  long lVar3;
  undefined8 uVar4;
  long *plVar5;
  
  puVar2 = PTR_DAT_05e5e4b8;
  if ((bRam000000000625c4aa & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e5e4b8);
    bRam000000000625c4aa = 1;
  }
  lVar3 = *(long *)puVar2;
  if (*(int *)(lVar3 + 0xe4) == 0) {
    func_0x029f5bd0();
    lVar3 = *(long *)puVar2;
  }
  if ((**(long **)(lVar3 + 0xb8) != 0) &&
     (lVar3 = *(long *)(**(long **)(lVar3 + 0xb8) + 0x38), lVar3 != 0)) {
    if (*(int *)(lVar3 + 0x18) == 0) {
                    /* WARNING: Subroutine does not return */
      Throw_Index_Wrapper();
    }
    if (*(long *)(param_1 + 0x20) != 0) {
      cVar1 = *(char *)(lVar3 + 0x20);
      lVar3 = Component_get_gameObject_0x6000c83(*(long *)(param_1 + 0x20),0);
      if (lVar3 != 0) {
        GameObject_SetActive_0x6000cfe(lVar3,cVar1 != '\0',0);
        if ((*(long *)(param_1 + 0x28) != 0) &&
           (lVar3 = GameObject_get_gameObject_0x6000d0f(*(long *)(param_1 + 0x28),0), lVar3 != 0)) {
          GameObject_SetActive_0x6000cfe(lVar3,cVar1 == '\0',0);
          if (cVar1 == '\0') {
            return;
          }
          lVar3 = *(long *)puVar2;
          plVar5 = *(long **)(param_1 + 0x20);
          if (*(int *)(lVar3 + 0xe4) == 0) {
            func_0x029f5bd0();
            lVar3 = *(long *)puVar2;
          }
          if (**(long **)(lVar3 + 0xb8) != 0) {
            StepUp__Remain_Duration();
            uVar4 = StepUp_Hud__Hud_Time_str();
            if (plVar5 != (long *)0x0) {
                    /* WARNING: Could not recover jumptable at 0x02ca40fc. Too many branches */
                    /* WARNING: Treating indirect jump as call */
              (**(code **)(*plVar5 + 0x558))(plVar5,uVar4,*(undefined8 *)(*plVar5 + 0x560));
              return;
            }
          }
        }
      }
    }
  }
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

