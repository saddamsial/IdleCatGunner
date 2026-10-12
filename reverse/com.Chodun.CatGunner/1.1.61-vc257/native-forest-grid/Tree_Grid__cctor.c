/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2bac838, Ghidra VA 02cac838. */

/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */

void Tree_Grid__cctor(void)

{
  undefined *puVar1;
  undefined *puVar2;
  undefined *puVar3;
  undefined8 uVar4;
  undefined8 uStack_40;
  undefined8 uStack_38;
  
  puVar3 = PTR_DAT_05e64a88;
  puVar2 = PTR_DAT_05e620e0;
  puVar1 = PTR_DAT_05e620d8;
  if ((bRam000000000625c516 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e620d8);
    func_0x029f5a50(PTR_DAT_05e64a88);
    func_0x029f5a50(PTR_DAT_05e620e0);
    bRam000000000625c516 = 1;
  }
  uStack_38 = _UNK_0116e148;
  uStack_40 = _UNK_0116e140;
  uVar4 = func_0x029f5b48(*(undefined8 *)puVar1,&uStack_40);
  RuntimeHelpers_InitializeArray_0x6002429(uVar4,*(undefined8 *)puVar2,0);
  **(undefined8 **)(*(long *)puVar3 + 0xb8) = uVar4;
  func_0x029f59f4(*(undefined8 *)(*(long *)puVar3 + 0xb8),uVar4);
  return;
}

