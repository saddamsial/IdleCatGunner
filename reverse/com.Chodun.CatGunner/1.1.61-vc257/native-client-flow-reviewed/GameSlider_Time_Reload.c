/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b7a5cc, Ghidra VA 02c7a5cc. */

void GameSlider_Time_Reload(long param_1)

{
  if (*(long *)(param_1 + 0x30) != 0) {
    SlicedFilledImage_set_fillAmount_0x60005d0(*(long *)(param_1 + 0x30),0);
    return;
  }
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

