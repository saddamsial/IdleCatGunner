/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b58814, Ghidra VA 02c58814. */

void Raid_manager_Gun_UnSelect(long param_1,uint param_2)

{
  int iVar1;
  long lVar2;
  long lVar3;
  long lVar4;
  
  lVar2 = *(long *)(param_1 + 0x88);
  if (lVar2 != 0) {
    if (*(uint *)(lVar2 + 0x18) <= param_2) {
LAB_02c588c0:
                    /* WARNING: Subroutine does not return */
      Throw_Index_Wrapper();
    }
    lVar4 = (long)(int)param_2;
    if ((*(int *)(lVar2 + lVar4 * 4 + 0x20) == -1) ||
       (iVar1 = Raid_manager_GetEquippedCount(), iVar1 < 2)) {
      return;
    }
    lVar2 = *(long *)(param_1 + 0x88);
    if (lVar2 != 0) {
      if (*(uint *)(lVar2 + 0x18) <= param_2) goto LAB_02c588c0;
      lVar3 = *(long *)(param_1 + 0x90);
      *(undefined4 *)(lVar2 + lVar4 * 4 + 0x20) = 0xffffffff;
      if (lVar3 != 0) {
        if (*(uint *)(lVar3 + 0x18) <= param_2) goto LAB_02c588c0;
        lVar2 = *(long *)(param_1 + 0x30);
        *(undefined4 *)(lVar3 + lVar4 * 4 + 0x20) = 0xffffffff;
        if (lVar2 != 0) {
          Raid_Start_UI_Reload_Slots(lVar2,0);
          return;
        }
      }
    }
  }
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

