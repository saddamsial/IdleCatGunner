/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b685d8, Ghidra VA 02c685d8. */

void Gun_manager_Set_Selected_Pause(long param_1,uint param_2,uint param_3)

{
  long lVar1;
  
  if ((((-1 < (int)param_2) && (lVar1 = *(long *)(param_1 + 0x28), lVar1 != 0)) &&
      ((int)param_2 < *(int *)(lVar1 + 0x18))) &&
     (*(int *)(lVar1 + (ulong)param_2 * 4 + 0x20) != -1)) {
    Gun_manager_Selected_Pause_Set_0x6000a51(param_1,param_2,param_3 & 1);
    Gun_manager_ReloadAllSlots(param_1);
    return;
  }
  return;
}

