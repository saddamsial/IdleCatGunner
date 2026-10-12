/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2ba08f4, Ghidra VA 02ca08f4. */

void StarGem_Pig_UI__Reload(long param_1)

{
  int iVar1;
  undefined *puVar2;
  undefined *puVar3;
  undefined4 uVar4;
  int iVar5;
  int iVar6;
  uint uVar7;
  long lVar8;
  ulong uVar9;
  undefined8 uVar10;
  bool bVar11;
  long lVar12;
  undefined8 uVar13;
  long *plVar14;
  undefined4 uStack_4c;
  int iStack_48;
  undefined4 uStack_44;
  
  puVar2 = PTR_DAT_05e5e3e0;
  if ((bRam000000000625c48f & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e591c0);
    func_0x029f5a50(PTR_DAT_05e648b8);
    func_0x029f5a50(PTR_DAT_05e5e3e0);
    func_0x029f5a50(PTR_DAT_05e61f18);
    func_0x029f5a50(PTR_DAT_05e61f28);
    bRam000000000625c48f = 1;
  }
  puVar3 = PTR_DAT_05e591c0;
  lVar8 = *(long *)puVar2;
  if (*(int *)(lVar8 + 0xe4) == 0) {
    func_0x029f5bd0();
    lVar8 = *(long *)puVar2;
  }
  lVar8 = **(long **)(lVar8 + 0xb8);
  if (*(int *)(*(long *)puVar3 + 0xe4) == 0) {
    func_0x029f5bd0(*(long *)puVar3);
  }
  uVar9 = Object_op_Equality_0x6000dec(lVar8,0,0);
  if ((uVar9 & 1) == 0) {
    if (lVar8 == 0) {
LAB_02ca0d5c:
                    /* WARNING: Subroutine does not return */
      Throw_NullReference_Wrapper();
    }
    uVar4 = StarGem_Pig__get_Capacity_Now(lVar8);
    iVar6 = *(int *)(lVar8 + 0x24);
    iVar5 = StarGem_Pig__get_Capacity_Now(lVar8);
    iVar1 = iVar6;
    if (iVar5 <= iVar6) {
      iVar1 = iVar5;
    }
    uVar13 = *(undefined8 *)(param_1 + 0x20);
    iVar5 = 0;
    if (-1 < iVar6) {
      iVar5 = iVar1;
    }
    if (*(int *)(*(long *)puVar3 + 0xe4) == 0) {
      func_0x029f5bd0();
    }
    uVar9 = Object_op_Inequality_0x6000ded(uVar13,0,0);
    if ((uVar9 & 1) != 0) {
      uStack_44 = *(undefined4 *)(lVar8 + 0x20);
      plVar14 = *(long **)(param_1 + 0x20);
      uVar13 = func_0x029f5bd8(*(undefined8 *)(PTR_DAT_05e58a10 + 0x48),&uStack_44);
      uVar13 = String_Format_0x600029c(*(undefined8 *)PTR_DAT_05e61f18,uVar13,0);
      if (plVar14 == (long *)0x0) goto LAB_02ca0d5c;
      (**(code **)(*plVar14 + 0x558))(plVar14,uVar13,*(undefined8 *)(*plVar14 + 0x560));
    }
    uVar13 = *(undefined8 *)(param_1 + 0x28);
    if (*(int *)(*(long *)puVar3 + 0xe4) == 0) {
      func_0x029f5bd0();
    }
    uVar9 = Object_op_Inequality_0x6000ded(uVar13,0,0);
    puVar2 = PTR_DAT_05e58a10;
    if ((uVar9 & 1) != 0) {
      plVar14 = *(long **)(param_1 + 0x28);
      iStack_48 = iVar5;
      uVar13 = func_0x029f5bd8(*(undefined8 *)(PTR_DAT_05e58a10 + 0x48),&iStack_48);
      uStack_4c = uVar4;
      uVar10 = func_0x029f5bd8(*(undefined8 *)(puVar2 + 0x48),&uStack_4c);
      uVar13 = String_Format_0x600029d(*(undefined8 *)PTR_DAT_05e61f28,uVar13,uVar10,0);
      if (plVar14 == (long *)0x0) goto LAB_02ca0d5c;
      (**(code **)(*plVar14 + 0x558))(plVar14,uVar13,*(undefined8 *)(*plVar14 + 0x560));
    }
    uVar13 = *(undefined8 *)(param_1 + 0x38);
    if (*(int *)(*(long *)puVar3 + 0xe4) == 0) {
      func_0x029f5bd0();
    }
    uVar9 = Object_op_Inequality_0x6000ded(uVar13,0,0);
    if ((uVar9 & 1) != 0) {
      lVar12 = *(long *)(param_1 + 0x38);
      StarGem_Pig__get_Fill_Ratio(lVar8);
      if (lVar12 == 0) goto LAB_02ca0d5c;
      SlicedFilledImage_set_fillAmount_0x60005d0(lVar12,0);
    }
    uVar13 = *(undefined8 *)(param_1 + 0x30);
    if (*(int *)(*(long *)puVar3 + 0xe4) == 0) {
      func_0x029f5bd0();
    }
    uVar9 = Object_op_Inequality_0x6000ded(uVar13,0,0);
    if ((uVar9 & 1) != 0) {
      plVar14 = *(long **)(param_1 + 0x30);
      uVar4 = *(undefined4 *)(lVar8 + 0x20);
      if (*(int *)(*(long *)PTR_DAT_05e648b8 + 0xe4) == 0) {
        func_0x029f5bd0();
      }
      uVar13 = StarGem_Pig_UI__Price_str_return(uVar4);
      if (plVar14 == (long *)0x0) goto LAB_02ca0d5c;
      (**(code **)(*plVar14 + 0x558))(plVar14,uVar13,*(undefined8 *)(*plVar14 + 0x560));
    }
    if (*(int *)(lVar8 + 0x20) < 3) {
      bVar11 = false;
    }
    else {
      iVar1 = *(int *)(lVar8 + 0x28);
      iVar6 = StarGem_Pig__get_PurchaseMax_Now(lVar8);
      bVar11 = iVar6 <= iVar1;
    }
    uVar13 = *(undefined8 *)(param_1 + 0x50);
    if (*(int *)(*(long *)puVar3 + 0xe4) == 0) {
      func_0x029f5bd0();
    }
    uVar9 = Object_op_Inequality_0x6000ded(uVar13,0,0);
    if ((uVar9 & 1) != 0) {
      if (*(long *)(param_1 + 0x50) == 0) goto LAB_02ca0d5c;
      GameObject_SetActive_0x6000cfe(*(long *)(param_1 + 0x50),bVar11 ^ 1,0);
    }
    uVar13 = *(undefined8 *)(param_1 + 0x58);
    if (*(int *)(*(long *)puVar3 + 0xe4) == 0) {
      func_0x029f5bd0();
    }
    uVar9 = Object_op_Inequality_0x6000ded(uVar13,0,0);
    if ((uVar9 & 1) != 0) {
      if (*(long *)(param_1 + 0x58) == 0) goto LAB_02ca0d5c;
      GameObject_SetActive_0x6000cfe(*(long *)(param_1 + 0x58),bVar11,0);
    }
    if (bVar11 == false) {
      uVar7 = StarGem_Pig__get_Is_Purchasable(lVar8);
      uVar13 = *(undefined8 *)(param_1 + 0x40);
      if (*(int *)(*(long *)puVar3 + 0xe4) == 0) {
        func_0x029f5bd0(*(long *)puVar3);
      }
      uVar9 = Object_op_Inequality_0x6000ded(uVar13,0,0);
      if ((uVar9 & 1) != 0) {
        if (*(long *)(param_1 + 0x40) == 0) goto LAB_02ca0d5c;
        GameObject_SetActive_0x6000cfe(*(long *)(param_1 + 0x40),uVar7 & 1,0);
      }
      uVar13 = *(undefined8 *)(param_1 + 0x48);
      if (*(int *)(*(long *)puVar3 + 0xe4) == 0) {
        func_0x029f5bd0();
      }
      uVar9 = Object_op_Inequality_0x6000ded(uVar13,0,0);
      if ((uVar9 & 1) != 0) {
        if (*(long *)(param_1 + 0x48) == 0) goto LAB_02ca0d5c;
        GameObject_SetActive_0x6000cfe(*(long *)(param_1 + 0x48),(uVar7 ^ 0xffffffff) & 1,0);
      }
      if ((uVar7 & 1) != 0) {
        uVar13 = *(undefined8 *)(param_1 + 0x60);
        if (*(int *)(*(long *)puVar3 + 0xe4) == 0) {
          func_0x029f5bd0();
        }
        uVar9 = Object_op_Inequality_0x6000ded(uVar13,0,0);
        if ((uVar9 & 1) != 0) {
          plVar14 = *(long **)(param_1 + 0x60);
          uVar4 = *(undefined4 *)(lVar8 + 0x20);
          if (*(int *)(*(long *)PTR_DAT_05e648b8 + 0xe4) == 0) {
            func_0x029f5bd0();
          }
          uVar13 = StarGem_Pig_UI__Sale_str_return(uVar4);
          if (plVar14 == (long *)0x0) goto LAB_02ca0d5c;
          (**(code **)(*plVar14 + 0x558))(plVar14,uVar13,*(undefined8 *)(*plVar14 + 0x560));
        }
      }
    }
  }
  return;
}

