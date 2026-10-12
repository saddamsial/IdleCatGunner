/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b5ea14, Ghidra VA 02c5ea14. */

void Fish_manager_ShowNewFishPopup(long param_1,undefined4 param_2)

{
  long lVar1;
  ulong uVar2;
  
  if (*(long *)(param_1 + 0x40) != 0) {
    lVar1 = Component_get_gameObject_0x6000c83(*(long *)(param_1 + 0x40),0);
    if (lVar1 != 0) {
      uVar2 = GameObject_get_activeInHierarchy_0x6000d00(lVar1,0);
      if ((uVar2 & 1) != 0) {
        if ((*(long *)(param_1 + 0x40) == 0) ||
           (lVar1 = Component_get_gameObject_0x6000c83(*(long *)(param_1 + 0x40),0), lVar1 == 0))
        goto LAB_02c5ea7c;
        GameObject_SetActive_0x6000cfe(lVar1,0,0);
      }
      if (*(long *)(param_1 + 0x40) != 0) {
        New_Fish_UI_Reload_0x6000a1d(*(long *)(param_1 + 0x40),param_2);
        return;
      }
    }
  }
LAB_02c5ea7c:
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

