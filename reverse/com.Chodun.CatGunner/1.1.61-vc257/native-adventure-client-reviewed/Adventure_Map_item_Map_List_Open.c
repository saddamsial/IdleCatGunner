/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b3533c, Ghidra VA 02c3533c. */

void Adventure_Map_item_Map_List_Open(long param_1)

{
  if (*(long *)(param_1 + 0x28) != 0) {
    Adventure_Panel_Map_Info_List_Reload(*(long *)(param_1 + 0x28),*(undefined4 *)(param_1 + 0x20));
    return;
  }
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

