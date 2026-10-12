/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b87630, Ghidra VA 02c87630. */

void Rebirth_manager_Rebirth_Upgrade(long param_1,uint param_2)

{
  ulong uVar1;
  long lVar2;
  
  if ((bRam000000000625c384 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e5d338);
    bRam000000000625c384 = 1;
  }
  lVar2 = *(long *)(param_1 + 0x20);
  if (lVar2 != 0) {
    if (*(uint *)(lVar2 + 0x18) <= param_2) {
                    /* WARNING: Subroutine does not return */
      Throw_Index_Wrapper();
    }
    if (*(long *)(lVar2 + (long)(int)param_2 * 8 + 0x20) != 0) {
      uVar1 = Rebirth_Upgrade_Info_Upgrade();
      if ((param_2 == 2) && ((uVar1 & 1) != 0)) {
        if (*(int *)(*(long *)PTR_DAT_05e5d338 + 0xe4) == 0) {
          func_0x029f5bd0();
        }
        Gamemanager_InvalidateMoneyCache_0x6000071(0);
      }
      if (*(long *)(param_1 + 0x38) != 0) {
        Rebirth_Panel_UI_Reload_0x6000ca4();
        return;
      }
    }
  }
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

