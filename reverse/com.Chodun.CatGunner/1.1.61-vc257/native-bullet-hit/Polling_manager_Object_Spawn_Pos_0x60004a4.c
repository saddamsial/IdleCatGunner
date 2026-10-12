/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b17e2c, Ghidra VA 02c17e2c. */

void Polling_manager_Object_Spawn_Pos_0x60004a4(void)

{
  long lVar1;
  
  lVar1 = Polling_manager_Object_Polling();
  if (lVar1 != 0) {
    GameObject_SetActive_0x6000cfe(lVar1,1,0);
    return;
  }
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

