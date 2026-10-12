/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b50c48, Ghidra VA 02c50c48. */

void Monster_Start_UI_Game_Sweep(void)

{
  undefined *puVar1;
  long lVar2;
  ulong uVar3;
  
  puVar1 = PTR_DAT_05e5dd58;
  if ((bRam000000000625c159 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e5dd58);
    bRam000000000625c159 = 1;
  }
  lVar2 = *(long *)puVar1;
  if (*(int *)(lVar2 + 0xe4) == 0) {
    func_0x029f5bd0();
    lVar2 = *(long *)puVar1;
  }
  if (*(long *)(*(long *)(lVar2 + 0xb8) + 8) != 0) {
    uVar3 = Monster_manager_is_SweepAble();
    if ((uVar3 & 1) == 0) {
      return;
    }
    lVar2 = *(long *)puVar1;
    if (*(int *)(lVar2 + 0xe4) == 0) {
      func_0x029f5bd0();
      lVar2 = *(long *)puVar1;
    }
    if (*(long *)(*(long *)(lVar2 + 0xb8) + 8) != 0) {
      Monster_manager_Game_Sweep();
      return;
    }
  }
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

