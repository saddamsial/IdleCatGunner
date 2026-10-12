/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2ba1b1c, Ghidra VA 02ca1b1c. */

void StarGem_Pig__cctor(void)

{
  undefined *puVar1;
  undefined *puVar2;
  undefined *puVar3;
  undefined *puVar4;
  undefined8 uVar5;
  undefined8 *puVar6;
  
  puVar4 = PTR_DAT_05e648d0;
  puVar3 = PTR_DAT_05e63f20;
  puVar2 = PTR_DAT_05e5e3e0;
  puVar1 = PTR_DAT_05e5d790;
  if ((bRam000000000625c488 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e5d790);
    func_0x029f5a50(PTR_DAT_05e5e3e0);
    func_0x029f5a50(PTR_DAT_05e648d0);
    func_0x029f5a50(PTR_DAT_05e63f20);
    bRam000000000625c488 = 1;
  }
  uVar5 = func_0x029f5b40(*(undefined8 *)puVar1,3);
  RuntimeHelpers_InitializeArray_0x6002429(uVar5,*(undefined8 *)puVar4,0);
  puVar6 = (undefined8 *)(*(long *)(*(long *)puVar2 + 0xb8) + 8);
  *puVar6 = uVar5;
  Managed_WriteBarrier(puVar6,uVar5);
  uVar5 = func_0x029f5b40(*(undefined8 *)puVar1,3);
  RuntimeHelpers_InitializeArray_0x6002429(uVar5,*(undefined8 *)puVar3,0);
  puVar6 = (undefined8 *)(*(long *)(*(long *)puVar2 + 0xb8) + 0x10);
  *puVar6 = uVar5;
  Managed_WriteBarrier(puVar6,uVar5);
  return;
}

