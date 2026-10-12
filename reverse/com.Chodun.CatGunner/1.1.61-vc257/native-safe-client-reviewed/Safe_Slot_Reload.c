/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b6c878, Ghidra VA 02c6c878. */

void Safe_Slot_Reload(long param_1,uint param_2)

{
  undefined *puVar1;
  undefined *puVar2;
  int iVar3;
  long lVar4;
  ulong uVar5;
  int iVar6;
  undefined4 uVar7;
  long lVar8;
  undefined4 *puVar9;
  uint uVar10;
  undefined4 *puVar11;
  undefined4 *puVar12;
  undefined4 *puVar13;
  long *plVar14;
  undefined8 uVar15;
  int iStack_34;
  
  puVar2 = PTR_DAT_05e62648;
  puVar1 = PTR_DAT_05e591c0;
  if ((bRam000000000625c29b & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e5d338);
    func_0x029f5a50(PTR_DAT_05e591c0);
    func_0x029f5a50(PTR_DAT_05e62648);
    func_0x029f5a50(PTR_DAT_05e63398);
    bRam000000000625c29b = 1;
  }
  lVar8 = *(long *)puVar2;
  lVar4 = *(long *)puVar1;
  *(uint *)(param_1 + 0x20) = param_2;
  lVar8 = **(long **)(lVar8 + 0xb8);
  if (*(int *)(lVar4 + 0xe4) == 0) {
    func_0x029f5bd0();
  }
  uVar5 = Object_op_Equality_0x6000dec(lVar8,0,0);
  if ((uVar5 & 1) != 0) {
    return;
  }
  if ((int)param_2 < 0) {
    *(undefined4 *)(param_1 + 0x7c) = 0xffffffff;
    if (lVar8 == 0) goto LAB_02c6cc34;
    uVar10 = *(int *)(lVar8 + 0x28) + 6;
    if (0xf < (int)uVar10) {
      uVar10 = 0x10;
    }
LAB_02c6c9e0:
    *(uint *)(param_1 + 0x78) =
         (uint)((int)param_2 < 0x10 && (uVar10 & ((int)uVar10 >> 0x1f ^ 0xffffffffU)) == param_2);
  }
  else {
    if ((lVar8 == 0) || (lVar4 = *(long *)(lVar8 + 0x20), lVar4 == 0)) goto LAB_02c6cc34;
    if ((int)param_2 < *(int *)(lVar4 + 0x18)) {
      iVar6 = *(int *)(lVar4 + (ulong)param_2 * 4 + 0x20);
    }
    else {
      iVar6 = -1;
    }
    iVar3 = *(int *)(lVar8 + 0x28);
    *(int *)(param_1 + 0x7c) = iVar6;
    uVar10 = iVar3 + 6;
    if (0xf < (int)uVar10) {
      uVar10 = 0x10;
    }
    if ((uVar10 & ((int)uVar10 >> 0x1f ^ 0xffffffffU)) <= param_2) goto LAB_02c6c9e0;
    uVar7 = 2;
    if (iVar6 != -1) {
      uVar7 = 3;
    }
    *(undefined4 *)(param_1 + 0x78) = uVar7;
    if (iVar6 != -1) {
      uVar15 = *(undefined8 *)(param_1 + 0x48);
      if (*(int *)(*(long *)puVar1 + 0xe4) == 0) {
        func_0x029f5bd0();
      }
      uVar5 = Object_op_Inequality_0x6000ded(uVar15,0,0);
      if ((uVar5 & 1) != 0) {
        if (*(long *)(param_1 + 0x48) == 0) goto LAB_02c6cc34;
        Gun_Item_Demo_Reload_0x6000b5a(*(long *)(param_1 + 0x48),*(undefined4 *)(param_1 + 0x7c),0);
      }
    }
  }
  uVar15 = *(undefined8 *)(param_1 + 0x28);
  if (*(int *)(*(long *)puVar1 + 0xe4) == 0) {
    func_0x029f5bd0();
  }
  uVar5 = Object_op_Inequality_0x6000ded(uVar15,0,0);
  if ((uVar5 & 1) != 0) {
    if (*(long *)(param_1 + 0x28) == 0) goto LAB_02c6cc34;
    GameObject_SetActive_0x6000cfe(*(long *)(param_1 + 0x28),*(int *)(param_1 + 0x78) == 2,0);
  }
  uVar15 = *(undefined8 *)(param_1 + 0x30);
  if (*(int *)(*(long *)puVar1 + 0xe4) == 0) {
    func_0x029f5bd0();
  }
  uVar5 = Object_op_Inequality_0x6000ded(uVar15,0,0);
  if ((uVar5 & 1) != 0) {
    if (*(long *)(param_1 + 0x30) == 0) goto LAB_02c6cc34;
    GameObject_SetActive_0x6000cfe(*(long *)(param_1 + 0x30),*(int *)(param_1 + 0x78) == 3,0);
  }
  uVar15 = *(undefined8 *)(param_1 + 0x38);
  if (*(int *)(*(long *)puVar1 + 0xe4) == 0) {
    func_0x029f5bd0();
  }
  uVar5 = Object_op_Inequality_0x6000ded(uVar15,0,0);
  if ((uVar5 & 1) != 0) {
    if (*(long *)(param_1 + 0x38) == 0) goto LAB_02c6cc34;
    GameObject_SetActive_0x6000cfe(*(long *)(param_1 + 0x38),*(int *)(param_1 + 0x78) == 1,0);
  }
  uVar15 = *(undefined8 *)(param_1 + 0x40);
  if (*(int *)(*(long *)puVar1 + 0xe4) == 0) {
    func_0x029f5bd0();
  }
  uVar5 = Object_op_Inequality_0x6000ded(uVar15,0,0);
  if ((uVar5 & 1) != 0) {
    if (*(long *)(param_1 + 0x40) == 0) goto LAB_02c6cc34;
    GameObject_SetActive_0x6000cfe(*(long *)(param_1 + 0x40),*(int *)(param_1 + 0x78) == 0,0);
  }
  if (*(int *)(param_1 + 0x78) == 1) {
    uVar15 = *(undefined8 *)(param_1 + 0x50);
    if (*(int *)(*(long *)puVar1 + 0xe4) == 0) {
      func_0x029f5bd0();
    }
    uVar5 = Object_op_Inequality_0x6000ded(uVar15,0,0);
    if ((uVar5 & 1) != 0) {
      iVar6 = *(int *)(lVar8 + 0x28) * 0x32 + 0x32;
      plVar14 = *(long **)(param_1 + 0x50);
      iStack_34 = iVar6;
      uVar15 = func_0x029f5bd8(*(undefined8 *)(PTR_DAT_05e58a10 + 0x48),&iStack_34);
      uVar15 = String_Format_0x600029c(*(undefined8 *)PTR_DAT_05e63398,uVar15,0);
      if (plVar14 != (long *)0x0) {
        (**(code **)(*plVar14 + 0x558))(plVar14,uVar15,*(undefined8 *)(*plVar14 + 0x560));
        puVar1 = PTR_DAT_05e5d338;
        plVar14 = *(long **)(param_1 + 0x50);
        lVar4 = *(long *)PTR_DAT_05e5d338;
        if (*(int *)(lVar4 + 0xe4) == 0) {
          func_0x029f5bd0();
          lVar4 = *(long *)puVar1;
        }
        iVar3 = ObscuredInt_op_Implicit_0x6000412
                          (*(undefined8 *)(*(long *)(lVar4 + 0xb8) + 0x90),
                           *(undefined8 *)(*(long *)(lVar4 + 0xb8) + 0x98),0);
        if (iVar3 < iVar6) {
          puVar9 = (undefined4 *)(param_1 + 0x68);
          puVar11 = (undefined4 *)(param_1 + 0x6c);
          puVar12 = (undefined4 *)(param_1 + 0x70);
          puVar13 = (undefined4 *)(param_1 + 0x74);
        }
        else {
          puVar9 = (undefined4 *)(param_1 + 0x58);
          puVar11 = (undefined4 *)(param_1 + 0x5c);
          puVar12 = (undefined4 *)(param_1 + 0x60);
          puVar13 = (undefined4 *)(param_1 + 100);
        }
        if (plVar14 != (long *)0x0) {
          (**(code **)(*plVar14 + 0x2a8))
                    (*puVar9,*puVar11,*puVar12,*puVar13,plVar14,*(undefined8 *)(*plVar14 + 0x2b0));
          return;
        }
      }
LAB_02c6cc34:
                    /* WARNING: Subroutine does not return */
      Throw_NullReference_Wrapper();
    }
  }
  return;
}

