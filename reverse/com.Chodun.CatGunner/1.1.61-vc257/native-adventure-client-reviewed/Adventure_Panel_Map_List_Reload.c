/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b356d8, Ghidra VA 02c356d8. */

void Adventure_Panel_Map_List_Reload(long param_1)

{
  long lVar1;
  long lVar2;
  
  lVar1 = *(long *)(param_1 + 0x50);
  if (lVar1 != 0) {
    lVar2 = 0;
    do {
      if ((int)*(uint *)(lVar1 + 0x18) <= (int)(uint)lVar2) {
        return;
      }
      if (*(uint *)(lVar1 + 0x18) <= (uint)lVar2) {
                    /* WARNING: Subroutine does not return */
        Throw_Index_Wrapper();
      }
      if (*(long *)(lVar1 + lVar2 * 8 + 0x20) == 0) break;
      Adventure_Map_item_Reload();
      lVar1 = *(long *)(param_1 + 0x50);
      lVar2 = lVar2 + 1;
    } while (lVar1 != 0);
  }
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

