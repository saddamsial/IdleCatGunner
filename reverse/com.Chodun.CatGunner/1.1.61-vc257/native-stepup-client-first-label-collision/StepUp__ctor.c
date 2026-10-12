/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2ba3adc, Ghidra VA 02ca3adc. */

void StepUp__ctor(long param_1)

{
  undefined *puVar1;
  undefined *puVar2;
  undefined8 uVar3;
  
  puVar2 = PTR_DAT_05e641b8;
  puVar1 = PTR_DAT_05e626b0;
  if ((bRam000000000625c4a1 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e626b0);
    func_0x029f5a50(PTR_DAT_05e641b8);
    bRam000000000625c4a1 = 1;
  }
  uVar3 = func_0x029f5b40(*(undefined8 *)puVar1,5);
  *(undefined8 *)(param_1 + 0x38) = uVar3;
  Managed_WriteBarrier();
  *(undefined8 *)(param_1 + 0x48) = *(undefined8 *)puVar2;
  Managed_WriteBarrier();
  MonoBehaviour__ctor_0x6000d5a(param_1,0);
  return;
}

