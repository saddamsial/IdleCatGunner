/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2a9ebb4, Ghidra VA 02b9ebb4. */

void Contents_Unlock_manager__cctor(void)

{
  undefined *puVar1;
  undefined *puVar2;
  undefined *puVar3;
  undefined8 uVar4;
  undefined8 *puVar5;
  long lVar6;
  long lVar7;
  long lVar8;
  long *plVar9;
  undefined *puVar10;
  
  puVar3 = PTR_DAT_05e5e4e8;
  puVar2 = PTR_DAT_05e5e4e0;
  puVar10 = PTR_DAT_05e5e4d0;
  puVar1 = PTR_DAT_05e5d790;
  if ((bRam000000000625b9f2 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e5e4f0);
    func_0x029f5a50(PTR_DAT_05e5e4e8);
    func_0x029f5a50(PTR_DAT_05e5e4d0);
    func_0x029f5a50(PTR_DAT_05e5d790);
    func_0x029f5a50(PTR_DAT_05e5e4e0);
    bRam000000000625b9f2 = 1;
  }
  uVar4 = func_0x029f5b40(*(undefined8 *)puVar1,8);
  RuntimeHelpers_InitializeArray_0x6002429(uVar4,*(undefined8 *)puVar2,0);
  puVar5 = (undefined8 *)(*(long *)(*(long *)puVar10 + 0xb8) + 8);
  *puVar5 = uVar4;
  Managed_WriteBarrier(puVar5,uVar4);
  puVar1 = PTR_DAT_05e58a10;
  uVar4 = *(undefined8 *)puVar3;
  if (*(int *)(*(long *)(PTR_DAT_05e58a10 + 0xe0) + 0xe4) == 0) {
    func_0x029f5bd0();
  }
  uVar4 = Type_GetTypeFromHandle_0x6000b54(uVar4,0);
  if (*(int *)(*(long *)(puVar1 + 0x98) + 0xe4) == 0) {
    func_0x029f5bd0(*(long *)(puVar1 + 0x98));
  }
  lVar6 = Enum_GetValues_0x6000e08(uVar4,0);
  puVar1 = PTR_DAT_05e5e4f0;
  if (lVar6 == 0) {
    lVar7 = 0;
    plVar9 = (long *)(*(long *)(*(long *)puVar10 + 0xb8) + 0x10);
    *plVar9 = 0;
LAB_02b9ed04:
    Managed_WriteBarrier(plVar9,lVar7);
    return;
  }
  uVar4 = *(undefined8 *)PTR_DAT_05e5e4f0;
  lVar7 = func_0x029f5bd4(lVar6,uVar4);
  if (lVar7 == 0) {
    func_0x029f607c(lVar6,uVar4);
  }
  else {
    lVar8 = *(long *)puVar10;
    puVar10 = *(undefined **)puVar1;
    plVar9 = (long *)(*(long *)(lVar8 + 0xb8) + 0x10);
    *plVar9 = lVar7;
    lVar7 = func_0x029f5bd4(lVar6,puVar10);
    if (lVar7 != 0) goto LAB_02b9ed04;
  }
  uVar4 = func_0x029f607c(lVar6,puVar10);
  Object__ctor_0x600100e(uVar4,0);
  return;
}

