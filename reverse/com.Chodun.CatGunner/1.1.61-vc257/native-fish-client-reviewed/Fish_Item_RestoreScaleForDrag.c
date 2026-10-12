/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b61e88, Ghidra VA 02c61e88. */

void Fish_Item_RestoreScaleForDrag(long param_1)

{
  long lVar1;
  
  Fish_Item_StopPressCoroutine();
  lVar1 = Component_get_transform_0x6000c82(param_1,0);
  if (lVar1 != 0) {
    Transform_set_localScale_0x6000f5e
              (*(undefined4 *)(param_1 + 0x9c),*(undefined4 *)(param_1 + 0xa0),
               *(undefined4 *)(param_1 + 0xa4),lVar1,0);
    return;
  }
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

