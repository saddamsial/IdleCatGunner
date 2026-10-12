/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2a9e9ac, Ghidra VA 02b9e9ac. */

void Contents_Unlock_manager_Content_Btn_Monster(void)

{
  undefined *puVar1;
  ulong uVar2;
  long lVar3;
  
  puVar1 = PTR_DAT_05e5e4d0;
  if ((bRam000000000625b9ef & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e5e4d0);
    func_0x029f5a50(PTR_DAT_05e5dd58);
    bRam000000000625b9ef = 1;
  }
  if (*(int *)(*(long *)puVar1 + 0xe4) == 0) {
    func_0x029f5bd0();
  }
  uVar2 = Contents_Unlock_manager_Try_Open(5);
  puVar1 = PTR_DAT_05e5dd58;
  if ((uVar2 & 1) != 0) {
    lVar3 = *(long *)PTR_DAT_05e5dd58;
    if (*(int *)(lVar3 + 0xe4) == 0) {
      func_0x029f5bd0();
      lVar3 = *(long *)puVar1;
    }
    lVar3 = *(long *)(*(long *)(lVar3 + 0xb8) + 8);
    if ((lVar3 != 0) && (lVar3 = *(long *)(lVar3 + 0x38), lVar3 != 0)) {
      Monster_Start_UI_Reload_0x6000882(lVar3,0);
      return;
    }
                    /* WARNING: Subroutine does not return */
    Throw_NullReference_Wrapper();
  }
  return;
}

