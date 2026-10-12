/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b60024, Ghidra VA 02c60024. */

void Fish_DeleteZone_Show(long param_1)

{
  if (*(long *)(param_1 + 0x58) != 0) {
    CanvasGroup_set_alpha_0x6000003(0x3f800000,*(long *)(param_1 + 0x58),0);
    if (*(long *)(param_1 + 0x58) != 0) {
      CanvasGroup_set_interactable_0x6000005(*(long *)(param_1 + 0x58),0,0);
      if (*(long *)(param_1 + 0x58) != 0) {
        CanvasGroup_set_blocksRaycasts_0x6000007(*(long *)(param_1 + 0x58),0,0);
        Fish_DeleteZone_SetHighlight(param_1,0);
        return;
      }
    }
  }
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

