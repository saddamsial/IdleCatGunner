/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b38458, Ghidra VA 02c38458. */

void Buff_Btn_Reload(long param_1)

{
  undefined *puVar1;
  uint uVar2;
  long lVar3;
  undefined8 uVar4;
  long *plVar5;
  
  puVar1 = PTR_DAT_05e5d4c0;
  if ((bRam000000000625c07f & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e5d4c0);
    bRam000000000625c07f = 1;
  }
  lVar3 = *(long *)puVar1;
  if (*(int *)(lVar3 + 0xe4) == 0) {
    func_0x029f5bd0();
    lVar3 = *(long *)puVar1;
  }
  if (**(long **)(lVar3 + 0xb8) != 0) {
    uVar2 = Buff_manager_IsBuffActive(**(long **)(lVar3 + 0xb8),*(undefined4 *)(param_1 + 0x20));
    if (*(long *)(param_1 + 0x28) != 0) {
      GameObject_SetActive_0x6000cfe(*(long *)(param_1 + 0x28),uVar2 & 1,0);
      if (*(long *)(param_1 + 0x30) != 0) {
        GameObject_SetActive_0x6000cfe(*(long *)(param_1 + 0x30),(uVar2 ^ 0xffffffff) & 1,0);
        if ((~uVar2 & 1) != 0) {
          return;
        }
        lVar3 = *(long *)puVar1;
        plVar5 = *(long **)(param_1 + 0x38);
        if (*(int *)(lVar3 + 0xe4) == 0) {
          func_0x029f5bd0();
          lVar3 = *(long *)puVar1;
        }
        if (**(long **)(lVar3 + 0xb8) != 0) {
          Buff_manager_GetBuffRemainingTime
                    (**(long **)(lVar3 + 0xb8),*(undefined4 *)(param_1 + 0x20));
          uVar4 = Buff_manager_FormatRemaining();
          if (plVar5 != (long *)0x0) {
                    /* WARNING: Could not recover jumptable at 0x02c38548. Too many branches */
                    /* WARNING: Treating indirect jump as call */
            (**(code **)(*plVar5 + 0x558))(plVar5,uVar4,*(undefined8 *)(*plVar5 + 0x560));
            return;
          }
        }
      }
    }
  }
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

