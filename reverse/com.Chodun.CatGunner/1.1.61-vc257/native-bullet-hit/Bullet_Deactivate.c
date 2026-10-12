/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b66e3c, Ghidra VA 02c66e3c. */

void Bullet_Deactivate(undefined8 param_1)

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

