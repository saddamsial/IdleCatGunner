/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2a9eb0c, Ghidra VA 02b9eb0c. */

void Contents_Unlock_manager_Content_Btn_Raid(void)

{
  undefined *puVar1;
  ulong uVar2;
  long lVar3;
  
  puVar1 = PTR_DAT_05e5e4d0;
  if ((bRam000000000625b9f1 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e5e4d0);
    func_0x029f5a50(PTR_DAT_05e5e070);
    bRam000000000625b9f1 = 1;
  }
  if (*(int *)(*(long *)puVar1 + 0xe4) == 0) {
    func_0x029f5bd0();
  }
  uVar2 = Contents_Unlock_manager_Try_Open(7);
  puVar1 = PTR_DAT_05e5e070;
  if ((uVar2 & 1) != 0) {
    lVar3 = *(long *)PTR_DAT_05e5e070;
    if (*(int *)(lVar3 + 0xe4) == 0) {
      func_0x029f5bd0();
      lVar3 = *(long *)puVar1;
    }
    if (**(long **)(lVar3 + 0xb8) != 0) {
      Raid_manager_Panel_Open_0x60008fd(**(long **)(lVar3 + 0xb8),0);
      return;
    }
                    /* WARNING: Subroutine does not return */
    Throw_NullReference_Wrapper();
  }
  return;
}

