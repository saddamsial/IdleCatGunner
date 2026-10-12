/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b59f38, Ghidra VA 02c59f38. */

void Raid_manager__cctor(void)

{
  undefined *puVar1;
  undefined *puVar2;
  undefined *puVar3;
  undefined *puVar4;
  undefined *puVar5;
  undefined8 uVar6;
  undefined8 *puVar7;
  long lVar8;
  long lVar9;
  undefined8 uStack_60;
  undefined8 uStack_58;
  undefined8 uStack_50;
  undefined8 uStack_48;
  
  puVar5 = PTR_DAT_05e63750;
  puVar4 = PTR_DAT_05e63748;
  puVar3 = PTR_DAT_05e63740;
  puVar2 = PTR_DAT_05e5e070;
  puVar1 = PTR_DAT_05e5d790;
  if ((bRam000000000625c1d0 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e5d790);
    func_0x029f5a50(PTR_DAT_05e63748);
    func_0x029f5a50(PTR_DAT_05e63740);
    func_0x029f5a50(PTR_DAT_05e5e070);
    func_0x029f5a50(PTR_DAT_05e63750);
    bRam000000000625c1d0 = 1;
  }
  InfVal_op_Implicit_0x600003f(&uStack_60,10000000,0);
  lVar8 = *(long *)puVar2;
  lVar9 = *(long *)(lVar8 + 0xb8);
  *(undefined8 *)(lVar9 + 0x10) = uStack_58;
  *(undefined8 *)(lVar9 + 8) = uStack_60;
  *(undefined8 *)(lVar9 + 0x20) = uStack_48;
  *(undefined8 *)(lVar9 + 0x18) = uStack_50;
  Managed_WriteBarrier(*(long *)(lVar8 + 0xb8) + 8,0);
  uVar6 = func_0x029f5cec(*(undefined8 *)puVar3);
  func_0x044bd82c(uVar6,*(undefined8 *)puVar4);
  puVar7 = (undefined8 *)(*(long *)(*(long *)puVar2 + 0xb8) + 0x28);
  *puVar7 = uVar6;
  Managed_WriteBarrier(puVar7,uVar6);
  uVar6 = func_0x029f5b40(*(undefined8 *)puVar1,3);
  RuntimeHelpers_InitializeArray_0x6002429(uVar6,*(undefined8 *)puVar5,0);
  puVar7 = (undefined8 *)(*(long *)(*(long *)puVar2 + 0xb8) + 0x30);
  *puVar7 = uVar6;
  Managed_WriteBarrier(puVar7,uVar6);
  return;
}

