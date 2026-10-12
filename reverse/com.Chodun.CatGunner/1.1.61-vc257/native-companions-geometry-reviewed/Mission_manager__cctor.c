/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2aa6bcc, Ghidra VA 02ba6bcc. */

void Mission_manager__cctor(void)

{
  undefined *puVar1;
  undefined *puVar2;
  undefined *puVar3;
  undefined8 uVar4;
  undefined8 *puVar5;
  
  puVar3 = PTR_DAT_05e5e7a8;
  puVar2 = PTR_DAT_05e5dd50;
  puVar1 = PTR_DAT_05e5d790;
  if ((bRam000000000625ba55 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e5d790);
    func_0x029f5a50(PTR_DAT_05e5dd50);
    func_0x029f5a50(PTR_DAT_05e5e7a8);
    bRam000000000625ba55 = 1;
  }
  uVar4 = func_0x029f5b40(*(undefined8 *)puVar1,8);
  RuntimeHelpers_InitializeArray_0x6002429(uVar4,*(undefined8 *)puVar3,0);
  puVar5 = (undefined8 *)(*(long *)(*(long *)puVar2 + 0xb8) + 0x10);
  *puVar5 = uVar4;
  Managed_WriteBarrier(puVar5,uVar4);
  return;
}

