/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2ba3b6c, Ghidra VA 02ca3b6c. */

void StepUp__cctor(void)

{
  undefined *puVar1;
  undefined *puVar2;
  undefined *puVar3;
  undefined *puVar4;
  undefined8 uVar5;
  undefined8 *puVar6;
  
  puVar4 = PTR_DAT_05e64918;
  puVar3 = PTR_DAT_05e64910;
  puVar2 = PTR_DAT_05e5e4b8;
  puVar1 = PTR_DAT_05e5d790;
  if ((bRam000000000625c4a2 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e5d790);
    func_0x029f5a50(PTR_DAT_05e5e4b8);
    func_0x029f5a50(PTR_DAT_05e64918);
    func_0x029f5a50(PTR_DAT_05e64910);
    bRam000000000625c4a2 = 1;
  }
  uVar5 = func_0x029f5b40(*(undefined8 *)puVar1,5);
  RuntimeHelpers_InitializeArray_0x6002429(uVar5,*(undefined8 *)puVar3,0);
  puVar6 = (undefined8 *)(*(long *)(*(long *)puVar2 + 0xb8) + 8);
  *puVar6 = uVar5;
  Managed_WriteBarrier(puVar6,uVar5);
  uVar5 = func_0x029f5b40(*(undefined8 *)puVar1,5);
  RuntimeHelpers_InitializeArray_0x6002429(uVar5,*(undefined8 *)puVar4,0);
  puVar6 = (undefined8 *)(*(long *)(*(long *)puVar2 + 0xb8) + 0x10);
  *puVar6 = uVar5;
  Managed_WriteBarrier(puVar6,uVar5);
  return;
}

