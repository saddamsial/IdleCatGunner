/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b0a104, Ghidra VA 02c0a104. */

/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */

void OfflineProgressSimulator__cctor(void)

{
  undefined *puVar1;
  undefined *puVar2;
  undefined *puVar3;
  undefined *puVar4;
  undefined *puVar5;
  undefined *puVar6;
  undefined8 uVar7;
  undefined8 *puVar8;
  undefined8 uStack_50;
  undefined8 uStack_48;
  
  puVar6 = PTR_DAT_05e620e0;
  puVar5 = PTR_DAT_05e620d8;
  puVar4 = PTR_DAT_05e620d0;
  puVar3 = PTR_DAT_05e620c8;
  puVar2 = PTR_DAT_05e620c0;
  puVar1 = PTR_DAT_05e62040;
  if ((bRam000000000625be8f & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e620c0);
    func_0x029f5a50(PTR_DAT_05e62040);
    func_0x029f5a50(PTR_DAT_05e620d8);
    func_0x029f5a50(PTR_DAT_05e620d0);
    func_0x029f5a50(PTR_DAT_05e620e0);
    func_0x029f5a50(PTR_DAT_05e620c8);
    bRam000000000625be8f = 1;
  }
  uVar7 = func_0x029f5b40(*(undefined8 *)puVar2,4);
  RuntimeHelpers_InitializeArray_0x6002429(uVar7,*(undefined8 *)puVar3,0);
  **(undefined8 **)(*(long *)puVar1 + 0xb8) = uVar7;
  Managed_WriteBarrier(*(undefined8 *)(*(long *)puVar1 + 0xb8),uVar7);
  uVar7 = func_0x029f5b40(*(undefined8 *)puVar2,4);
  RuntimeHelpers_InitializeArray_0x6002429(uVar7,*(undefined8 *)puVar4,0);
  puVar8 = (undefined8 *)(*(long *)(*(long *)puVar1 + 0xb8) + 8);
  *puVar8 = uVar7;
  Managed_WriteBarrier(puVar8,uVar7);
  uStack_48 = _UNK_0116e148;
  uStack_50 = _UNK_0116e140;
  uVar7 = func_0x029f5b48(*(undefined8 *)puVar5,&uStack_50);
  RuntimeHelpers_InitializeArray_0x6002429(uVar7,*(undefined8 *)puVar6,0);
  puVar8 = (undefined8 *)(*(long *)(*(long *)puVar1 + 0xb8) + 0x10);
  *puVar8 = uVar7;
  Managed_WriteBarrier(puVar8,uVar7);
  return;
}

