/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b2f504, Ghidra VA 02c2f504. */

void Adventure_manager__cctor(void)

{
  undefined *puVar1;
  undefined *puVar2;
  undefined *puVar3;
  undefined8 uVar4;
  undefined8 *puVar5;
  
  puVar3 = PTR_DAT_05e63020;
  puVar2 = PTR_DAT_05e5dd28;
  puVar1 = PTR_DAT_05e5d790;
  if ((bRam000000000625c01d & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e5dd28);
    func_0x029f5a50(PTR_DAT_05e5d790);
    func_0x029f5a50(PTR_DAT_05e63020);
    bRam000000000625c01d = 1;
  }
  uVar4 = func_0x029f5b40(*(undefined8 *)puVar1,5);
  RuntimeHelpers_InitializeArray_0x6002429(uVar4,*(undefined8 *)puVar3,0);
  puVar5 = (undefined8 *)(*(long *)(*(long *)puVar2 + 0xb8) + 8);
  *puVar5 = uVar4;
  Managed_WriteBarrier(puVar5,uVar4);
  return;
}

