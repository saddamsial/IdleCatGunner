/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b62880, Ghidra VA 02c62880. */

float Fish_Item_GetScaledSize
                (undefined1 param_1 [16],undefined1 param_2 [16],float param_3,long param_4)

{
  float fVar1;
  
  Fish_Item_EnsureInit();
  if (*(long *)(param_4 + 0x50) != 0) {
    fVar1 = (float)Transform_get_localScale_0x6000f5d(*(long *)(param_4 + 0x50),0);
    if (*(long *)(param_4 + 0x50) != 0) {
      RectTransform_get_rect_0x6000f26(*(long *)(param_4 + 0x50),0);
      if (*(long *)(param_4 + 0x50) != 0) {
        RectTransform_get_rect_0x6000f26(*(long *)(param_4 + 0x50),0);
        return fVar1 * param_3;
      }
    }
  }
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

