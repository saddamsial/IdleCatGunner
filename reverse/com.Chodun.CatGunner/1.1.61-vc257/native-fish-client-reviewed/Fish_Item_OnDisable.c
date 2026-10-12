/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b60ec4, Ghidra VA 02c60ec4. */

void Fish_Item_OnDisable(long param_1)

{
  long lVar1;
  
  if (*(char *)(param_1 + 0x84) != '\0') {
    Fish_Item_ForceEndDrag(param_1);
  }
  Fish_Item_StopPressCoroutine(param_1);
  lVar1 = Component_get_transform_0x6000c82(param_1,0);
  if (lVar1 != 0) {
    Transform_set_localScale_0x6000f5e
              (*(undefined4 *)(param_1 + 0x9c),*(undefined4 *)(param_1 + 0xa0),
               *(undefined4 *)(param_1 + 0xa4),lVar1,0);
    *(undefined1 *)(param_1 + 0xb0) = 0;
    Fish_Item_EndAutoMerge(param_1);
    return;
  }
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

