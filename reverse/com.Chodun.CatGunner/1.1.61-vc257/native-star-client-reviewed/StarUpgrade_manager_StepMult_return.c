/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b6d790, Ghidra VA 02c6d790. */

/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */

undefined1  [16] StarUpgrade_manager_StepMult_return(int param_1)

{
  double dVar1;
  undefined1 auVar2 [16];
  
  if ((bRam000000000625c2a8 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e59000);
    bRam000000000625c2a8 = 1;
  }
  if (param_1 < 1) {
    dVar1 = 1.0;
  }
  else {
    if (*(int *)(*(long *)PTR_DAT_05e59000 + 0xe4) == 0) {
      func_0x029f5bd0();
    }
    dVar1 = (double)Math_Pow_0x60008ae(_UNK_01170928,(double)(param_1 + -1),0);
    dVar1 = dVar1 * 1.5;
  }
  auVar2._8_8_ = 0;
  auVar2._0_8_ = dVar1;
  return auVar2;
}

