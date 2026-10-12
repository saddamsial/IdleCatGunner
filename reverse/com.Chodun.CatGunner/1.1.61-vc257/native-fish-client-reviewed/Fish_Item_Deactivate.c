/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b5fb98, Ghidra VA 02c5fb98. */

void Fish_Item_Deactivate(long param_1)

{
  long lVar1;
  
  *(undefined2 *)(param_1 + 0x48) = 0;
  *(undefined2 *)(param_1 + 0x84) = 0;
  *(undefined8 *)(param_1 + 0x40) = 0xffffffffffffffff;
  Fish_Item_EndAutoMerge();
  Fish_Item_Fusion_Alert_Off(param_1);
  lVar1 = Component_get_gameObject_0x6000c83(param_1,0);
  if (lVar1 != 0) {
    GameObject_SetActive_0x6000cfe(lVar1,0,0);
    return;
  }
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

