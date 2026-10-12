/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b53e54, Ghidra VA 02c53e54. */

void Raid_Mission_UI_Open(undefined8 param_1)

{
  long lVar1;
  
  lVar1 = Component_get_gameObject_0x6000c83(param_1,0);
  if (lVar1 != 0) {
    GameObject_SetActive_0x6000cfe(lVar1,1,0);
    Raid_Mission_UI_Reload(param_1);
    return;
  }
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

