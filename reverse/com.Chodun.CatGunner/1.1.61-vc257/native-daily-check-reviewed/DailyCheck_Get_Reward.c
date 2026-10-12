/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2a9f9a0, Ghidra VA 02b9f9a0. */

void DailyCheck_Get_Reward(long param_1,uint param_2)

{
  undefined4 uVar1;
  long lVar2;
  
  if ((bRam000000000625b9fc & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e5d338);
    bRam000000000625b9fc = 1;
  }
  lVar2 = *(long *)(param_1 + 0x48);
  if (lVar2 != 0) {
    if (param_2 < *(uint *)(lVar2 + 0x18)) {
      uVar1 = *(undefined4 *)(lVar2 + (long)(int)param_2 * 4 + 0x20);
      if (*(int *)(*(long *)PTR_DAT_05e5d338 + 0xe4) == 0) {
        func_0x029f5bd0();
      }
      Gamemanager_Get_Dia_0x6000078(uVar1,0);
      return;
    }
                    /* WARNING: Subroutine does not return */
    Throw_Index_Wrapper();
  }
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

