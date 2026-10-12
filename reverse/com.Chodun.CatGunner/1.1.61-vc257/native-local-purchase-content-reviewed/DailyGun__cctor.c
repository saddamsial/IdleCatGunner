/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b8ba24, Ghidra VA 02c8ba24. */

void DailyGun__cctor(void)

{
  undefined *puVar1;
  undefined *puVar2;
  undefined *puVar3;
  undefined *puVar4;
  undefined *puVar5;
  undefined8 uVar6;
  undefined8 *puVar7;
  undefined8 uStack_38;
  
  puVar5 = PTR_DAT_05e63f30;
  puVar4 = PTR_DAT_05e63f28;
  puVar3 = PTR_DAT_05e63f20;
  puVar2 = PTR_DAT_05e62660;
  puVar1 = PTR_DAT_05e5d790;
  if ((bRam000000000625c3b0 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e62660);
    func_0x029f5a50(PTR_DAT_05e5d790);
    func_0x029f5a50(PTR_DAT_05e63f20);
    func_0x029f5a50(PTR_DAT_05e63f30);
    func_0x029f5a50(PTR_DAT_05e63f28);
    bRam000000000625c3b0 = 1;
  }
  uVar6 = func_0x029f5b40(*(undefined8 *)puVar1,3);
  RuntimeHelpers_InitializeArray_0x6002429(uVar6,*(undefined8 *)puVar3,0);
  puVar7 = (undefined8 *)(*(long *)(*(long *)puVar2 + 0xb8) + 8);
  *puVar7 = uVar6;
  Managed_WriteBarrier(puVar7,uVar6);
  uVar6 = func_0x029f5b40(*(undefined8 *)puVar1,3);
  RuntimeHelpers_InitializeArray_0x6002429(uVar6,*(undefined8 *)puVar4,0);
  puVar7 = (undefined8 *)(*(long *)(*(long *)puVar2 + 0xb8) + 0x10);
  *puVar7 = uVar6;
  Managed_WriteBarrier(puVar7,uVar6);
  uVar6 = func_0x029f5b40(*(undefined8 *)puVar1,3);
  RuntimeHelpers_InitializeArray_0x6002429(uVar6,*(undefined8 *)puVar5,0);
  puVar7 = (undefined8 *)(*(long *)(*(long *)puVar2 + 0xb8) + 0x18);
  *puVar7 = uVar6;
  Managed_WriteBarrier(puVar7,uVar6);
  uStack_38 = 0;
  DateTime__ctor_0x60005f0(&uStack_38,0x7e8,1,1,0);
  *(undefined8 *)(*(long *)(*(long *)puVar2 + 0xb8) + 0x20) = uStack_38;
  return;
}

