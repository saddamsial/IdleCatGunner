/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b676c4, Ghidra VA 02c676c4. */

void GunTypeCode___cctor(void)

{
  undefined *puVar1;
  undefined *puVar2;
  undefined *puVar3;
  undefined8 uVar4;
  
  puVar3 = PTR_DAT_05e63a50;
  puVar2 = PTR_DAT_05e63a48;
  puVar1 = PTR_DAT_05e632d0;
  if ((bRam000000000625c25d & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e632d0);
    func_0x029f5a50(PTR_DAT_05e63a48);
    func_0x029f5a50(PTR_DAT_05e63a50);
    bRam000000000625c25d = 1;
  }
  uVar4 = func_0x029f5b40(*(undefined8 *)puVar2,7);
  RuntimeHelpers_InitializeArray_0x6002429(uVar4,*(undefined8 *)puVar3,0);
  **(undefined8 **)(*(long *)puVar1 + 0xb8) = uVar4;
  Managed_WriteBarrier(*(undefined8 *)(*(long *)puVar1 + 0xb8),uVar4);
  return;
}

