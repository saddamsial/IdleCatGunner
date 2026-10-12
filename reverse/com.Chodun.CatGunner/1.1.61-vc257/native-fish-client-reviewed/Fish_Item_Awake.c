/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b60d54, Ghidra VA 02c60d54. */

void Fish_Item_Awake(undefined1 param_1 [16],undefined4 param_2,undefined4 param_3,long param_4)

{
  long lVar1;
  undefined4 uVar2;
  
  Fish_Item_EnsureInit();
  lVar1 = Component_get_transform_0x6000c82(param_4,0);
  if (lVar1 != 0) {
    uVar2 = Transform_get_localScale_0x6000f5d(lVar1,0);
    *(undefined4 *)(param_4 + 0x9c) = uVar2;
    *(undefined4 *)(param_4 + 0xa0) = param_2;
    *(undefined4 *)(param_4 + 0xa4) = param_3;
    return;
  }
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

