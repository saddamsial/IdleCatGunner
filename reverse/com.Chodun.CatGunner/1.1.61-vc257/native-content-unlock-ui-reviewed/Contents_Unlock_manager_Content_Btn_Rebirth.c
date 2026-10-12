/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2a9e650, Ghidra VA 02b9e650. */

void Contents_Unlock_manager_Content_Btn_Rebirth(void)

{
  undefined *puVar1;
  ulong uVar2;
  long lVar3;
  
  puVar1 = PTR_DAT_05e5e4d0;
  if ((bRam000000000625b9ea & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e5e4d0);
    func_0x029f5a50(PTR_DAT_05e5dd60);
    bRam000000000625b9ea = 1;
  }
  if (*(int *)(*(long *)puVar1 + 0xe4) == 0) {
    func_0x029f5bd0();
  }
  uVar2 = Contents_Unlock_manager_Try_Open(0);
  if ((uVar2 & 1) != 0) {
    if ((**(long **)(*(long *)PTR_DAT_05e5dd60 + 0xb8) != 0) &&
       (lVar3 = *(long *)(**(long **)(*(long *)PTR_DAT_05e5dd60 + 0xb8) + 0x38), lVar3 != 0)) {
      Rebirth_Panel_UI_Reload_0x6000ca4(lVar3,0);
      return;
    }
                    /* WARNING: Subroutine does not return */
    Throw_NullReference_Wrapper();
  }
  return;
}

