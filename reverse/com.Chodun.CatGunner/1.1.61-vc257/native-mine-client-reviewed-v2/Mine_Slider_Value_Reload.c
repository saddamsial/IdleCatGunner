/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b4a758, Ghidra VA 02c4a758. */

void Mine_Slider_Value_Reload(long param_1)

{
  if (*(long *)(param_1 + 0x20) != 0) {
    SlicedFilledImage_set_fillAmount_0x60005d0(*(long *)(param_1 + 0x20),0);
    return;
  }
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

