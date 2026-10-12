/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2a9f18c, Ghidra VA 02b9f18c. */

void DailyCheck_UI_reload(long param_1)

{
  uint uVar1;
  ulong uVar2;
  long lVar3;
  uint uVar4;
  
  if ((*(int *)(param_1 + 0x30) == 7) &&
     (uVar2 = DailyCheck_is_DateChange(param_1), (uVar2 & 1) != 0)) {
    *(undefined4 *)(param_1 + 0x30) = 0;
  }
  lVar3 = *(long *)(param_1 + 0x40);
  if (lVar3 != 0) {
    uVar4 = 0;
    do {
      if ((int)*(uint *)(lVar3 + 0x18) <= (int)uVar4) {
        if (*(long *)(param_1 + 0x20) != 0) {
          GameObject_SetActive_0x6000cfe(*(long *)(param_1 + 0x20),1,0);
          DailyCheck_Coupang_UI_Reload_0x60002cf(param_1);
          return;
        }
        break;
      }
      if (*(uint *)(lVar3 + 0x18) <= uVar4) {
                    /* WARNING: Subroutine does not return */
        Throw_Index_Wrapper();
      }
      lVar3 = *(long *)(lVar3 + (long)(int)uVar4 * 8 + 0x20);
      if ((int)uVar4 < (int)*(uint *)(param_1 + 0x30)) {
        uVar1 = 2;
      }
      else if (uVar4 == *(uint *)(param_1 + 0x30)) {
        uVar1 = DailyCheck_is_DateChange(param_1);
        uVar1 = uVar1 & 1;
      }
      else {
        uVar1 = 0;
      }
      if (lVar3 == 0) break;
      DailyCheck_Reward_Reload(lVar3,uVar1);
      lVar3 = *(long *)(param_1 + 0x40);
      uVar4 = uVar4 + 1;
    } while (lVar3 != 0);
  }
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

