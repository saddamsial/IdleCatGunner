/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b683a0, Ghidra VA 02c683a0. */

void Gun_manager_Set_Owned_Pause(long param_1,uint param_2,uint param_3)

{
  long lVar1;
  
  if (-1 < (int)param_2) {
    lVar1 = *(long *)(param_1 + 0x40);
    if (lVar1 == 0) {
                    /* WARNING: Subroutine does not return */
      Throw_NullReference_Wrapper();
    }
    if (((int)param_2 < *(int *)(lVar1 + 0x18)) &&
       (*(int *)(lVar1 + (ulong)param_2 * 4 + 0x20) != -1)) {
      if ((*(uint *)(param_1 + 0xc0) == 0xffffffff) || (*(uint *)(param_1 + 0xc0) != param_2)) {
        Gun_manager_Owned_Pause_Set_0x6000a50(param_1,param_2,param_3 & 1);
        Gun_manager_ReloadGunUI_0x6000a6b(param_1);
        return;
      }
    }
  }
  return;
}

