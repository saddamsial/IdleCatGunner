/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2ba70d4, Ghidra VA 02ca70d4. */

void WeeklyShop_Menu_Btn_Reload(long param_1)

{
  uint uVar1;
  long lVar2;
  
  lVar2 = *(long *)(param_1 + 0x48);
  uVar1 = WeeklyShop_Is_VIP_Unlocked();
  if (lVar2 != 0) {
    GameObject_SetActive_0x6000cfe(lVar2,(uVar1 ^ 0xffffffff) & 1,0);
    return;
  }
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

