/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b8b80c, Ghidra VA 02c8b80c. */

void DailyGun_popup_Panel_Reload(long param_1)

{
  long lVar1;
  ulong uVar2;
  
  lVar1 = *(long *)(param_1 + 0x20);
  if (lVar1 != 0) {
    uVar2 = 0;
    do {
      if ((long)(int)*(uint *)(lVar1 + 0x18) <= (long)uVar2) {
        return;
      }
      if (*(uint *)(lVar1 + 0x18) <= uVar2) {
                    /* WARNING: Subroutine does not return */
        Throw_Index_Wrapper();
      }
      if (*(long *)(lVar1 + uVar2 * 8 + 0x20) != 0) {
        DailyGun_Item_Reload_0x6000cd8();
        lVar1 = *(long *)(param_1 + 0x20);
      }
      uVar2 = uVar2 + 1;
    } while (lVar1 != 0);
  }
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

