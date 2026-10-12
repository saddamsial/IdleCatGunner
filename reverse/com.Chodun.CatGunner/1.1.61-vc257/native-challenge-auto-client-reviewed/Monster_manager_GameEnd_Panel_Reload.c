/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b4e810, Ghidra VA 02c4e810. */

void Monster_manager_GameEnd_Panel_Reload(long param_1)

{
  undefined *puVar1;
  uint uVar2;
  undefined8 uVar3;
  long *plVar4;
  int iStack_24;
  
  if ((bRam000000000625c14c & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e5d920);
    bRam000000000625c14c = 1;
  }
  plVar4 = *(long **)(param_1 + 0x148);
  iStack_24 = 0;
  uVar3 = Int32_ToString_0x600080e(param_1 + 0x13c,0);
  if (plVar4 != (long *)0x0) {
    (**(code **)(*plVar4 + 0x558))(plVar4,uVar3,*(undefined8 *)(*plVar4 + 0x560));
    plVar4 = *(long **)(param_1 + 0x150);
    iStack_24 = *(int *)(param_1 + 0x13c) << 1;
    uVar3 = Int32_ToString_0x600080e(&iStack_24,0);
    puVar1 = PTR_DAT_05e5d920;
    if (plVar4 != (long *)0x0) {
      (**(code **)(*plVar4 + 0x558))(plVar4,uVar3,*(undefined8 *)(*plVar4 + 0x560));
      if (*(int *)(*(long *)puVar1 + 0xe4) == 0) {
        func_0x029f5bd0();
      }
      uVar2 = Shop_manager_get_Is_RewardBonus_Auto(0);
      if (*(long *)(param_1 + 0x158) != 0) {
        GameObject_SetActive_0x6000cfe(*(long *)(param_1 + 0x158),(uVar2 ^ 1) & 1,0);
        if (*(long *)(param_1 + 0x160) != 0) {
          GameObject_SetActive_0x6000cfe(*(long *)(param_1 + 0x160),uVar2 & 1,0);
          if (*(long *)(param_1 + 0x168) != 0) {
            GameObject_SetActive_0x6000cfe(*(long *)(param_1 + 0x168),(uVar2 ^ 1) & 1,0);
            return;
          }
        }
      }
    }
  }
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

