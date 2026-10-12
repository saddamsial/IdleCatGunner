/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2a9e7b0, Ghidra VA 02b9e7b0. */

void Contents_Unlock_manager_Content_Btn_Fish(void)

{
  undefined *puVar1;
  ulong uVar2;
  long lVar3;
  
  puVar1 = PTR_DAT_05e5e4d0;
  if ((bRam000000000625b9ec & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e5e4d0);
    func_0x029f5a50(PTR_DAT_05e5dd38);
    bRam000000000625b9ec = 1;
  }
  if (*(int *)(*(long *)puVar1 + 0xe4) == 0) {
    func_0x029f5bd0();
  }
  uVar2 = Contents_Unlock_manager_Try_Open(2);
  puVar1 = PTR_DAT_05e5dd38;
  if ((uVar2 & 1) != 0) {
    if ((**(long **)(*(long *)PTR_DAT_05e5dd38 + 0xb8) != 0) &&
       (lVar3 = *(long *)(**(long **)(*(long *)PTR_DAT_05e5dd38 + 0xb8) + 0x48), lVar3 != 0)) {
      GameObject_SetActive_0x6000cfe(lVar3,1,0);
      if (**(long **)(*(long *)puVar1 + 0xb8) != 0) {
        Fish_manager_Gacha_Btn_UI_Reload_0x600099c(**(long **)(*(long *)puVar1 + 0xb8),0);
        return;
      }
    }
                    /* WARNING: Subroutine does not return */
    Throw_NullReference_Wrapper();
  }
  return;
}

