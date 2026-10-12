/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b59418, Ghidra VA 02c59418. */

void Raid_manager_EnsureBestArray(long param_1)

{
  int iVar1;
  undefined *puVar2;
  undefined *puVar3;
  int iVar4;
  long lVar5;
  long lVar6;
  long *plVar7;
  undefined8 uVar8;
  
  puVar3 = PTR_DAT_05e63728;
  if ((bRam000000000625c1c2 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e63728);
    func_0x029f5a50(PTR_DAT_05e5d790);
    bRam000000000625c1c2 = 1;
  }
  puVar2 = PTR_DAT_05e58a10;
  uVar8 = *(undefined8 *)puVar3;
  if (*(int *)(*(long *)(PTR_DAT_05e58a10 + 0xe0) + 0xe4) == 0) {
    func_0x029f5bd0();
  }
  uVar8 = Type_GetTypeFromHandle_0x6000b54(uVar8,0);
  if (*(int *)(*(long *)(puVar2 + 0x98) + 0xe4) == 0) {
    func_0x029f5bd0(*(long *)(puVar2 + 0x98));
  }
  lVar5 = Enum_GetValues_0x6000e08(uVar8,0);
  if (lVar5 != 0) {
    iVar4 = Array_get_Length_0x6000d2e(lVar5,0);
    plVar7 = (long *)(param_1 + 0xf8);
    if ((*plVar7 != 0) && (iVar4 == *(int *)(*plVar7 + 0x18))) {
      return;
    }
    lVar5 = func_0x029f5b40(*(undefined8 *)PTR_DAT_05e5d790,iVar4);
    lVar6 = *plVar7;
    if (lVar6 != 0) {
      iVar1 = *(int *)(lVar6 + 0x18);
      if (iVar4 <= *(int *)(lVar6 + 0x18)) {
        iVar1 = iVar4;
      }
      Array_Copy_0x6000d4a(lVar6,lVar5,iVar1,0);
    }
    *plVar7 = lVar5;
    Managed_WriteBarrier(plVar7,lVar5);
    return;
  }
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

