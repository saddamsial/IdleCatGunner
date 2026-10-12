/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b7ab2c, Ghidra VA 02c7ab2c. */

void Pet_Dummy_Hide(undefined8 param_1)

{
  long lVar1;
  
  lVar1 = Component_get_gameObject_0x6000c83(param_1,0);
  if (lVar1 != 0) {
    GameObject_SetActive_0x6000cfe(lVar1,0,0);
    return;
  }
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

