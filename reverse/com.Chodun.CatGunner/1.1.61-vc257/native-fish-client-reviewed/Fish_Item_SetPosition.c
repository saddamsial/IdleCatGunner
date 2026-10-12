/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b6298c, Ghidra VA 02c6298c. */

void Fish_Item_SetPosition(undefined4 param_1,undefined4 param_2,long param_3)

{
  long lVar1;
  
  Fish_Item_EnsureInit();
  lVar1 = *(long *)(param_3 + 0x50);
  Fish_Item_ClampToTank(param_1,param_2,param_3);
  if (lVar1 != 0) {
    RectTransform_set_anchoredPosition_0x6000f2c(lVar1,0);
    Fish_Item_UpdateSortOrder(param_3);
    return;
  }
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

