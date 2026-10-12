/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b483b4, Ghidra VA 02c483b4. */

void Boss_Start_UI_Game_Sweep(void)

{
  undefined *puVar1;
  long lVar2;
  ulong uVar3;
  
  puVar1 = PTR_DAT_05e5dd30;
  if ((bRam000000000625c0f8 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e5dd30);
    bRam000000000625c0f8 = 1;
  }
  lVar2 = *(long *)puVar1;
  if (*(int *)(lVar2 + 0xe4) == 0) {
    func_0x029f5bd0();
    lVar2 = *(long *)puVar1;
  }
  if (*(long *)(*(long *)(lVar2 + 0xb8) + 8) != 0) {
    uVar3 = Boss_manager_is_SweepAble();
    if ((uVar3 & 1) == 0) {
      return;
    }
    lVar2 = *(long *)puVar1;
    if (*(int *)(lVar2 + 0xe4) == 0) {
      func_0x029f5bd0();
      lVar2 = *(long *)puVar1;
    }
    if (*(long *)(*(long *)(lVar2 + 0xb8) + 8) != 0) {
      Boss_manager_Game_Sweep();
      return;
    }
  }
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

