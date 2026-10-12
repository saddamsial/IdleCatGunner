/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b6285c, Ghidra VA 02c6285c. */

void Fish_Item_GetPosition(long param_1)

{
  Fish_Item_EnsureInit();
  if (*(long *)(param_1 + 0x50) != 0) {
    RectTransform_get_anchoredPosition_0x6000f2b(*(long *)(param_1 + 0x50),0);
    return;
  }
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

