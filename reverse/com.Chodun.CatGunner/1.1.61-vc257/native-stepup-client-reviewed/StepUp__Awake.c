/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2ba27e4, Ghidra VA 02ca27e4. */

void StepUp__Awake(undefined8 param_1)

{
  undefined *puVar1;
  long lVar2;
  
  puVar1 = PTR_DAT_05e5e4b8;
  if ((bRam000000000625c495 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e5e4b8);
    bRam000000000625c495 = 1;
  }
  lVar2 = *(long *)puVar1;
  if (*(int *)(lVar2 + 0xe4) == 0) {
    func_0x029f5bd0();
    lVar2 = *(long *)puVar1;
  }
  **(undefined8 **)(lVar2 + 0xb8) = param_1;
  Managed_WriteBarrier(*(undefined8 *)(*(long *)puVar1 + 0xb8),param_1);
  return;
}

