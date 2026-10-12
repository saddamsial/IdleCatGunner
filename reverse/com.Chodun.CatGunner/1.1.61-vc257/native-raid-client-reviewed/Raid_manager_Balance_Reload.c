/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b57130, Ghidra VA 02c57130. */

void Raid_manager_Balance_Reload(long param_1)

{
  undefined8 *puVar1;
  int iVar2;
  undefined *puVar3;
  long lVar4;
  long *plVar5;
  ulong uVar6;
  long lVar7;
  undefined8 uStack_50;
  undefined8 uStack_48;
  undefined8 uStack_40;
  undefined8 uStack_38;
  
  puVar3 = PTR_DAT_05e5e070;
  if ((bRam000000000625c19f & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e63090);
    func_0x029f5a50(PTR_DAT_05e63698);
    func_0x029f5a50(PTR_DAT_05e5e070);
    bRam000000000625c19f = 1;
  }
  lVar4 = *(long *)puVar3;
  if (*(int *)(lVar4 + 0xe4) == 0) {
    func_0x029f5bd0();
    lVar4 = *(long *)puVar3;
  }
  lVar4 = *(long *)(*(long *)(lVar4 + 0xb8) + 0x28);
  if (lVar4 != 0) {
    iVar2 = *(int *)(lVar4 + 0x18);
    *(undefined4 *)(lVar4 + 0x18) = 0;
    *(int *)(lVar4 + 0x1c) = *(int *)(lVar4 + 0x1c) + 1;
    if (0 < iVar2) {
      Array_Clear_0x6000d48(*(undefined8 *)(lVar4 + 0x10),0,iVar2,0);
    }
    plVar5 = (long *)(param_1 + 0x28);
    lVar4 = *plVar5;
    if ((lVar4 == 0) || (*(long *)(lVar4 + 0x18) == 0)) {
      lVar4 = func_0x029f5b40(*(undefined8 *)PTR_DAT_05e63090,0x3c);
      *plVar5 = lVar4;
      Managed_WriteBarrier(plVar5,lVar4);
      lVar4 = *plVar5;
      if (lVar4 == 0) goto LAB_02c57264;
    }
    uVar6 = 0;
    lVar7 = 0x20;
    do {
      if ((long)*(int *)(lVar4 + 0x18) <= (long)uVar6) {
        return;
      }
      if (*(int *)(*(long *)puVar3 + 0xe4) == 0) {
        func_0x029f5bd0();
      }
      Raid_manager_Boss_Health_return(&uStack_50,uVar6 & 0xffffffff);
      if (*(uint *)(lVar4 + 0x18) <= uVar6) {
                    /* WARNING: Subroutine does not return */
        Throw_Index_Wrapper();
      }
      puVar1 = (undefined8 *)(lVar4 + lVar7);
      puVar1[1] = uStack_48;
      *puVar1 = uStack_50;
      puVar1[3] = uStack_38;
      puVar1[2] = uStack_40;
      Managed_WriteBarrier(puVar1,0);
      lVar4 = *plVar5;
      uVar6 = uVar6 + 1;
      lVar7 = lVar7 + 0x20;
    } while (lVar4 != 0);
  }
LAB_02c57264:
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

