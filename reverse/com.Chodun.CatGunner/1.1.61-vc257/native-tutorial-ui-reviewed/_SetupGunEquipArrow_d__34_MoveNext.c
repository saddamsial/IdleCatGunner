/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2bb07fc, Ghidra VA 02cb07fc. */

/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */

undefined8 _SetupGunEquipArrow_d__34_MoveNext(long param_1)

{
  int iVar1;
  undefined *puVar2;
  undefined *puVar3;
  uint uVar4;
  ulong uVar5;
  long lVar6;
  long lVar7;
  undefined4 uVar8;
  undefined8 *puVar9;
  undefined8 uVar10;
  long *plVar11;
  undefined8 uVar12;
  long lVar13;
  undefined8 uStack_78;
  undefined8 *puStack_70;
  long lStack_68;
  undefined8 uStack_60;
  undefined8 *puStack_58;
  long lStack_50;
  
  if ((bRam000000000625c545 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e5be98);
    func_0x029f5a50(PTR_DAT_05e63a90);
    func_0x029f5a50(PTR_DAT_05e63a98);
    func_0x029f5a50(PTR_DAT_05e63aa0);
    func_0x029f5a50(PTR_DAT_05e63aa8);
    func_0x029f5a50(PTR_DAT_05e5dd40);
    func_0x029f5a50(PTR_DAT_05e63ab0);
    func_0x029f5a50(PTR_DAT_05e591c0);
    func_0x029f5a50(PTR_DAT_05e5a710);
    bRam000000000625c545 = 1;
  }
  iVar1 = *(int *)(param_1 + 0x10);
  lVar13 = *(long *)(param_1 + 0x20);
  uStack_60 = 0;
  puStack_58 = (undefined8 *)0x0;
  lStack_50 = 0;
  if (iVar1 == 2) {
    *(undefined4 *)(param_1 + 0x10) = 0xffffffff;
    goto LAB_02cb0af8;
  }
  if (iVar1 != 1) {
    if (iVar1 != 0) {
      return 0;
    }
    *(undefined8 *)(param_1 + 0x18) = 0;
    *(undefined4 *)(param_1 + 0x10) = 0xffffffff;
    Managed_WriteBarrier((undefined8 *)(param_1 + 0x18),0);
    uVar8 = 1;
    goto LAB_02cb0c08;
  }
  puVar9 = (undefined8 *)(param_1 + 0x28);
  *puVar9 = 0;
  *(undefined4 *)(param_1 + 0x10) = 0xffffffff;
  Managed_WriteBarrier(puVar9,0);
  puVar3 = PTR_DAT_05e63aa8;
  puVar2 = PTR_DAT_05e591c0;
  uVar10 = **(undefined8 **)(*(long *)PTR_DAT_05e63aa8 + 0xb8);
  if (*(int *)(*(long *)PTR_DAT_05e591c0 + 0xe4) == 0) {
    func_0x029f5bd0();
  }
  uVar5 = Object_op_Inequality_0x6000ded(uVar10,0,0);
  if ((uVar5 & 1) != 0) {
    if ((**(long **)(*(long *)puVar3 + 0xb8) == 0) ||
       (lVar6 = *(long *)(**(long **)(*(long *)puVar3 + 0xb8) + 0x40), lVar6 == 0))
    goto LAB_02cb0c84;
    func_0x0452d690(&uStack_78,lVar6,*(undefined8 *)PTR_DAT_05e63ab0);
    puVar3 = PTR_DAT_05e63a98;
    puStack_58 = puStack_70;
    uStack_60 = uStack_78;
    lStack_50 = lStack_68;
    uStack_78 = 0;
    puStack_70 = &uStack_60;
    do {
      do {
        uVar5 = func_0x03fa4e10(&uStack_60,*(undefined8 *)puVar3);
        lVar6 = lStack_50;
        if ((uVar5 & 1) == 0) goto LAB_02cb09fc;
        if (*(int *)(*(long *)puVar2 + 0xe4) == 0) {
          func_0x029f5bd0();
        }
        uVar5 = Object_op_Inequality_0x6000ded(lVar6,0,0);
      } while ((uVar5 & 1) == 0);
      if (lVar6 == 0) {
                    /* WARNING: Subroutine does not return */
        Throw_NullReference_Wrapper();
      }
      lVar7 = Component_get_gameObject_0x6000c83(lVar6,0);
      if (lVar7 == 0) {
                    /* WARNING: Subroutine does not return */
        Throw_NullReference_Wrapper();
      }
      uVar5 = GameObject_get_activeSelf_0x6000cff(lVar7,0);
    } while ((uVar5 & 1) == 0);
    uVar10 = func_0x02fe5f2c(lVar6,*(undefined8 *)PTR_DAT_05e5be98);
    *puVar9 = uVar10;
    Managed_WriteBarrier(puVar9);
LAB_02cb09fc:
    func_0x03fa4e0c(&uStack_60,*(undefined8 *)PTR_DAT_05e63a90);
  }
  plVar11 = (long *)(param_1 + 0x30);
  *plVar11 = 0;
  Managed_WriteBarrier(plVar11,0);
  puVar3 = PTR_DAT_05e5dd40;
  uVar10 = **(undefined8 **)(*(long *)PTR_DAT_05e5dd40 + 0xb8);
  if (*(int *)(*(long *)puVar2 + 0xe4) == 0) {
    func_0x029f5bd0();
  }
  uVar5 = Object_op_Inequality_0x6000ded(uVar10,0,0);
  uVar10 = 0;
  if ((uVar5 & 1) != 0) {
    if (**(long **)(*(long *)puVar3 + 0xb8) == 0) goto LAB_02cb0c84;
    lVar6 = *(long *)(**(long **)(*(long *)puVar3 + 0xb8) + 0x98);
    if ((lVar6 == 0) || (*(int *)(lVar6 + 0x18) < 2)) {
      uVar10 = 0;
    }
    else {
      *plVar11 = *(long *)(lVar6 + 0x28);
      Managed_WriteBarrier(plVar11);
      lVar6 = *plVar11;
      if (*(int *)(*(long *)puVar2 + 0xe4) == 0) {
        func_0x029f5bd0();
      }
      uVar5 = Object_op_Inequality_0x6000ded(lVar6,0,0);
      uVar10 = 0;
      if ((uVar5 & 1) != 0) {
        if (*plVar11 == 0) goto LAB_02cb0c84;
        uVar10 = func_0x02fe5f2c(*plVar11,*(undefined8 *)PTR_DAT_05e5be98);
      }
    }
  }
  uVar12 = *puVar9;
  if (*(int *)(*(long *)puVar2 + 0xe4) == 0) {
    func_0x029f5bd0();
  }
  uVar5 = Object_op_Inequality_0x6000ded(uVar12,0,0);
  if ((uVar5 & 1) == 0) {
LAB_02cb0af8:
    if (lVar13 == 0) goto LAB_02cb0c84;
  }
  else {
    if (*(int *)(*(long *)puVar2 + 0xe4) == 0) {
      func_0x029f5bd0();
    }
    uVar5 = Object_op_Inequality_0x6000ded(uVar10,0,0);
    if ((uVar5 & 1) == 0) goto LAB_02cb0af8;
    if ((lVar13 == 0) || (*(long *)(lVar13 + 0x40) == 0)) goto LAB_02cb0c84;
    TutorialArrow_UI_SetTargets(*(long *)(lVar13 + 0x40),*puVar9,uVar10);
  }
  puVar2 = PTR_DAT_05e591c0;
  if (*(int *)(lVar13 + 0x60) != 4) {
    return 0;
  }
  uVar10 = *(undefined8 *)(param_1 + 0x30);
  if (*(int *)(*(long *)PTR_DAT_05e591c0 + 0xe4) == 0) {
    func_0x029f5bd0();
  }
  uVar5 = Object_op_Inequality_0x6000ded(uVar10,0,0);
  if ((uVar5 & 1) == 0) {
    if (*(long *)(lVar13 + 0x40) == 0) goto LAB_02cb0c84;
    lVar13 = Component_get_gameObject_0x6000c83(*(long *)(lVar13 + 0x40),0);
LAB_02cb0bb8:
    uVar4 = 0;
  }
  else {
    if ((*(long *)(param_1 + 0x30) == 0) ||
       (lVar6 = Component_get_gameObject_0x6000c83(*(long *)(param_1 + 0x30),0), lVar6 == 0))
    goto LAB_02cb0c84;
    uVar5 = GameObject_get_activeInHierarchy_0x6000d00(lVar6,0);
    if (*(long *)(lVar13 + 0x40) == 0) goto LAB_02cb0c84;
    lVar13 = Component_get_gameObject_0x6000c83(*(long *)(lVar13 + 0x40),0);
    if ((uVar5 & 1) == 0) goto LAB_02cb0bb8;
    uVar10 = *(undefined8 *)(param_1 + 0x28);
    if (*(int *)(*(long *)puVar2 + 0xe4) == 0) {
      func_0x029f5bd0();
    }
    uVar4 = Object_op_Inequality_0x6000ded(uVar10,0,0);
  }
  if (lVar13 != 0) {
    GameObject_SetActive_0x6000cfe(lVar13,uVar4 & 1,0);
    uVar10 = func_0x029f5cec(*(undefined8 *)PTR_DAT_05e5a710);
    WaitForSeconds__ctor_0x6000e26(_UNK_0116c060,uVar10,0);
    *(undefined8 *)(param_1 + 0x18) = uVar10;
    Managed_WriteBarrier((undefined8 *)(param_1 + 0x18),uVar10);
    uVar8 = 2;
LAB_02cb0c08:
    *(undefined4 *)(param_1 + 0x10) = uVar8;
    return 1;
  }
LAB_02cb0c84:
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

