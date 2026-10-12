/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b4ffe4, Ghidra VA 02c4ffe4. */

void Monster_manager__cctor(void)

{
  undefined *puVar1;
  undefined *puVar2;
  undefined *puVar3;
  undefined *puVar4;
  undefined *puVar5;
  undefined8 uVar6;
  undefined8 *puVar7;
  
  puVar5 = PTR_DAT_05e63550;
  puVar4 = PTR_DAT_05e63548;
  puVar3 = PTR_DAT_05e5dd58;
  puVar2 = PTR_DAT_05e5d790;
  puVar1 = PTR_DAT_05e5d5e8;
  if ((bRam000000000625c150 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e5d790);
    func_0x029f5a50(PTR_DAT_05e5dd58);
    func_0x029f5a50(PTR_DAT_05e5d5e8);
    func_0x029f5a50(PTR_DAT_05e63550);
    func_0x029f5a50(PTR_DAT_05e63548);
    bRam000000000625c150 = 1;
  }
  uVar6 = *(undefined8 *)puVar2;
  **(undefined4 **)(*(long *)puVar3 + 0xb8) = 0x1e;
  uVar6 = func_0x029f5b40(uVar6,5);
  RuntimeHelpers_InitializeArray_0x6002429(uVar6,*(undefined8 *)puVar4,0);
  puVar7 = (undefined8 *)(*(long *)(*(long *)puVar3 + 0xb8) + 0x10);
  *puVar7 = uVar6;
  Managed_WriteBarrier(puVar7,uVar6);
  uVar6 = func_0x029f5b40(*(undefined8 *)puVar1,5);
  RuntimeHelpers_InitializeArray_0x6002429(uVar6,*(undefined8 *)puVar5,0);
  puVar7 = (undefined8 *)(*(long *)(*(long *)puVar3 + 0xb8) + 0x18);
  *puVar7 = uVar6;
  Managed_WriteBarrier(puVar7,uVar6);
  return;
}

