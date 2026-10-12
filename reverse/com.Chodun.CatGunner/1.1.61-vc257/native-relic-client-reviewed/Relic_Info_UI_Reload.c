/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b310cc, Ghidra VA 02c310cc. */

void Relic_Info_UI_Reload(long param_1,long param_2)

{
  int iVar1;
  int iVar2;
  uint uVar3;
  undefined *puVar4;
  undefined *puVar5;
  undefined *puVar6;
  undefined8 uVar7;
  undefined8 uVar8;
  long lVar9;
  undefined4 *puVar10;
  int iVar11;
  undefined4 *puVar12;
  undefined4 *puVar13;
  undefined4 *puVar14;
  long *plVar15;
  undefined8 uStack_80;
  undefined8 uStack_78;
  undefined8 uStack_70;
  undefined8 uStack_68;
  int iStack_58;
  int iStack_54;
  
  if ((bRam000000000625c039 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e5d4d8);
    func_0x029f5a50(PTR_DAT_05e61f18);
    func_0x029f5a50(PTR_DAT_05e63080);
    func_0x029f5a50(PTR_DAT_05e61f28);
    func_0x029f5a50(PTR_DAT_05e63088);
    bRam000000000625c039 = 1;
  }
  *(long *)(param_1 + 0x20) = param_2;
  uStack_78 = 0;
  uStack_80 = 0;
  uStack_68 = 0;
  uStack_70 = 0;
  Managed_WriteBarrier((long *)(param_1 + 0x20),param_2);
  if ((*(long *)(param_1 + 0x28) == 0) ||
     (Relic_Item_Demo_Reload(*(long *)(param_1 + 0x28),param_2), puVar6 = PTR_DAT_05e61f18,
     puVar5 = PTR_DAT_05e5d4d8, param_2 == 0)) goto LAB_02c31428;
  iVar2 = *(int *)(param_2 + 0x18);
  uVar3 = *(uint *)(param_2 + 0x10);
  iStack_54 = iVar2;
  if (*(int *)(*(long *)PTR_DAT_05e5d4d8 + 0xe4) == 0) {
    func_0x029f5bd0();
    iStack_54 = *(int *)(param_2 + 0x18);
  }
  puVar4 = PTR_DAT_05e58a10;
  plVar15 = *(long **)(param_1 + 0x38);
  iVar1 = iStack_54 * 2 + 2;
  iStack_54 = iStack_54 + 1;
  if (0x31 < iVar1) {
    iVar1 = 0x32;
  }
  if (iVar1 < 3) {
    iVar1 = 2;
  }
  uVar7 = func_0x029f5bd8(*(undefined8 *)(PTR_DAT_05e58a10 + 0x48),&iStack_54);
  uVar7 = String_Format_0x600029c(*(undefined8 *)puVar6,uVar7,0);
  if (plVar15 == (long *)0x0) goto LAB_02c31428;
  iVar11 = 300;
  if (8 < uVar3) {
    iVar11 = 0x32;
  }
  (**(code **)(*plVar15 + 0x558))(plVar15,uVar7,*(undefined8 *)(*plVar15 + 0x560));
  plVar15 = *(long **)(param_1 + 0x40);
  if (iVar2 < iVar11) {
    iStack_54 = *(int *)(param_2 + 0x1c);
    uVar7 = func_0x029f5bd8(*(undefined8 *)(puVar4 + 0x48),&iStack_54);
    iStack_58 = iVar1;
    uVar8 = func_0x029f5bd8(*(undefined8 *)(puVar4 + 0x48),&iStack_58);
    uVar7 = String_Format_0x600029d(*(undefined8 *)PTR_DAT_05e61f28,uVar7,uVar8,0);
    if (plVar15 == (long *)0x0) goto LAB_02c31428;
    (**(code **)(*plVar15 + 0x558))(plVar15,uVar7,*(undefined8 *)(*plVar15 + 0x560));
    if (*(long *)(param_1 + 0x50) == 0) goto LAB_02c31428;
    SlicedFilledImage_set_fillAmount_0x60005d0
              ((float)*(int *)(param_2 + 0x1c) / (float)iVar1,*(long *)(param_1 + 0x50),0);
    plVar15 = *(long **)(param_1 + 0x58);
    if (*(int *)(param_2 + 0x1c) < iVar1) goto LAB_02c31310;
    puVar10 = (undefined4 *)(param_1 + 0x60);
    puVar12 = (undefined4 *)(param_1 + 100);
    puVar13 = (undefined4 *)(param_1 + 0x68);
    puVar14 = (undefined4 *)(param_1 + 0x6c);
  }
  else {
    if (plVar15 == (long *)0x0) goto LAB_02c31428;
    (**(code **)(*plVar15 + 0x558))
              (plVar15,*(undefined8 *)PTR_DAT_05e63080,*(undefined8 *)(*plVar15 + 0x560));
    if (*(long *)(param_1 + 0x50) == 0) goto LAB_02c31428;
    SlicedFilledImage_set_fillAmount_0x60005d0(0x3f800000,*(long *)(param_1 + 0x50),0);
    plVar15 = *(long **)(param_1 + 0x58);
LAB_02c31310:
    puVar10 = (undefined4 *)(param_1 + 0x70);
    puVar12 = (undefined4 *)(param_1 + 0x74);
    puVar13 = (undefined4 *)(param_1 + 0x78);
    puVar14 = (undefined4 *)(param_1 + 0x7c);
  }
  puVar6 = PTR_DAT_05e63088;
  if (plVar15 != (long *)0x0) {
    (**(code **)(*plVar15 + 0x2a8))
              (*puVar10,*puVar12,*puVar13,*puVar14,plVar15,*(undefined8 *)(*plVar15 + 0x2b0));
    plVar15 = *(long **)(param_1 + 0x48);
    if (*(int *)(*(long *)puVar5 + 0xe4) == 0) {
      func_0x029f5bd0();
    }
    uVar7 = Relic_manager_Relic_Explain_return(param_2);
    Relic_manager_Relic_Value_return(&uStack_80,param_2);
    uVar8 = InfVal_InfVal_change_0x60000a8(&uStack_80,0);
    uVar8 = String_Concat_0x6000298(*(undefined8 *)puVar6,uVar8,0);
    uVar7 = String_Format_0x600029c(uVar7,uVar8,0);
    if (plVar15 != (long *)0x0) {
      (**(code **)(*plVar15 + 0x558))(plVar15,uVar7,*(undefined8 *)(*plVar15 + 0x560));
      plVar15 = *(long **)(param_1 + 0x30);
      uVar7 = Relic_manager_Relic_Name_return(param_2);
      if (plVar15 != (long *)0x0) {
        (**(code **)(*plVar15 + 0x558))(plVar15,uVar7,*(undefined8 *)(*plVar15 + 0x560));
        lVar9 = Component_get_gameObject_0x6000c83(param_1,0);
        if (lVar9 != 0) {
          GameObject_SetActive_0x6000cfe(lVar9,1,0);
          return;
        }
      }
    }
  }
LAB_02c31428:
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

