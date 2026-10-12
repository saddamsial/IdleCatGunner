/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b361c4, Ghidra VA 02c361c4. */

void Adventure_Pet_Slot_OnClick(long param_1)

{
  if (*(int *)(param_1 + 0x24) == 1) {
    if ((*(long *)(param_1 + 0x48) != 0) && (*(long *)(*(long *)(param_1 + 0x48) + 0x50) != 0)) {
      Adventure_PetSelect_popup_Open();
      return;
    }
  }
  else {
    if (*(int *)(param_1 + 0x24) != 0) {
      return;
    }
    if (*(long *)(param_1 + 0x48) != 0) {
      Adventure_Enter_popup_UnSelectAt(*(long *)(param_1 + 0x48),*(undefined4 *)(param_1 + 0x20));
      return;
    }
  }
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

