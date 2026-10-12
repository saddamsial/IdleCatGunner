/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b6810c, Ghidra VA 02c6810c. */

void Gun_manager_Owned_Move(long param_1,uint param_2,uint param_3)

{
  bool bVar1;
  long lVar2;
  
  if (param_2 == param_3) {
    return;
  }
  lVar2 = *(long *)(param_1 + 0x40);
  if (lVar2 != 0) {
    if ((param_2 < *(uint *)(lVar2 + 0x18)) && (param_3 < *(uint *)(lVar2 + 0x18))) {
      bVar1 = false;
      *(undefined4 *)(lVar2 + 0x20 + (long)(int)param_3 * 4) =
           *(undefined4 *)(lVar2 + 0x20 + (long)(int)param_2 * 4);
      if ((-1 < (int)param_2) && (lVar2 = *(long *)(param_1 + 0x60), lVar2 != 0)) {
        if ((int)param_2 < *(int *)(lVar2 + 0x18)) {
          bVar1 = *(char *)(lVar2 + (ulong)param_2 + 0x20) != '\0';
        }
        else {
          bVar1 = false;
        }
      }
      Gun_manager_Owned_Pause_Set_0x6000a50(param_1,param_3,bVar1);
      lVar2 = *(long *)(param_1 + 0x40);
      if (lVar2 == 0) goto LAB_02c681dc;
      if (param_2 < *(uint *)(lVar2 + 0x18)) {
        *(undefined4 *)(lVar2 + (long)(int)param_2 * 4 + 0x20) = 0xffffffff;
        Gun_manager_Owned_Pause_Set_0x6000a50(param_1,param_2,0);
        return;
      }
    }
                    /* WARNING: Subroutine does not return */
    Throw_Index_Wrapper();
  }
LAB_02c681dc:
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

