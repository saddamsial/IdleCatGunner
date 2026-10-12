/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b6e654, Ghidra VA 02c6e654. */

void StarUpgrade_popup_Open(long param_1,undefined4 param_2,undefined1 param_3)

{
  long lVar1;
  
  *(undefined4 *)(param_1 + 0x98) = param_2;
  *(undefined1 *)(param_1 + 0x9c) = param_3;
  lVar1 = Component_get_gameObject_0x6000c83(param_1,0);
  if (lVar1 != 0) {
    GameObject_SetActive_0x6000cfe(lVar1,1,0);
    StarUpgrade_popup_Reload(param_1);
    return;
  }
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

