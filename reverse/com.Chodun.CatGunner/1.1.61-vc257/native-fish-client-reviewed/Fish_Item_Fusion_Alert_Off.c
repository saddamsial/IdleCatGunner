/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b613b8, Ghidra VA 02c613b8. */

void Fish_Item_Fusion_Alert_Off(long param_1)

{
  long lVar1;
  
  if ((*(long *)(param_1 + 0x28) != 0) &&
     (lVar1 = Component_get_gameObject_0x6000c83(*(long *)(param_1 + 0x28),0), lVar1 != 0)) {
    GameObject_SetActive_0x6000cfe(lVar1,0,0);
    return;
  }
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

