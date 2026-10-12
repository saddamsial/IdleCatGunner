/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2ba2784, Ghidra VA 02ca2784. */

void StepUp__get_is_Started(long param_1)

{
  undefined *puVar1;
  undefined8 uVar2;
  
  puVar1 = PTR_DAT_05e597d0;
  if ((bRam000000000625c494 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e597d0);
    bRam000000000625c494 = 1;
  }
  uVar2 = *(undefined8 *)(param_1 + 0x40);
  if (*(int *)(*(long *)puVar1 + 0xe4) == 0) {
    func_0x029f5bd0();
  }
  DateTime_op_Inequality_0x600063c(uVar2,0,0);
  return;
}

