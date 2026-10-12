/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2bb034c, Ghidra VA 02cb034c. */

/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */

undefined8 _CheckSpeedRunClear_d__26_MoveNext(long param_1)

{
  undefined *puVar1;
  int iVar2;
  undefined8 uVar3;
  long lVar4;
  ulong uVar5;
  long lVar6;
  
  if ((bRam000000000625c543 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e591c0);
    func_0x029f5a50(PTR_DAT_05e5dd68);
    func_0x029f5a50(PTR_DAT_05e5d4e8);
    func_0x029f5a50(PTR_DAT_05e5a710);
    bRam000000000625c543 = 1;
  }
  lVar6 = *(long *)(param_1 + 0x20);
  if (*(uint *)(param_1 + 0x10) < 2) {
    *(undefined4 *)(param_1 + 0x10) = 0xffffffff;
    if (lVar6 == 0) goto LAB_02cb0548;
    if (*(int *)(lVar6 + 0x60) == 1) {
      if (*(int *)(*(long *)PTR_DAT_05e5d4e8 + 0xe4) == 0) {
        func_0x029f5bd0();
      }
      iVar2 = Upgrade_manager_Lv_return_0x6000f92(0);
      if (iVar2 < 3) {
        uVar3 = func_0x029f5cec(*(undefined8 *)PTR_DAT_05e5a710);
        WaitForSeconds__ctor_0x6000e26(_UNK_0116c060,uVar3,0);
        *(undefined8 *)(param_1 + 0x18) = uVar3;
        Managed_WriteBarrier((undefined8 *)(param_1 + 0x18),uVar3);
        *(undefined4 *)(param_1 + 0x10) = 1;
        return 1;
      }
      if (*(long *)(lVar6 + 0x48) == 0) goto LAB_02cb0548;
      GameObject_SetActive_0x6000cfe(*(long *)(lVar6 + 0x48),1,0);
    }
  }
  else {
    if (*(uint *)(param_1 + 0x10) != 2) {
      return 0;
    }
    *(undefined4 *)(param_1 + 0x10) = 0xffffffff;
    if (lVar6 == 0) goto LAB_02cb0548;
  }
  puVar1 = PTR_DAT_05e5dd68;
  if (*(int *)(lVar6 + 0x60) != 1) {
    return 0;
  }
  lVar4 = *(long *)PTR_DAT_05e5dd68;
  if (*(int *)(lVar4 + 0xe4) == 0) {
    func_0x029f5bd0();
    lVar4 = *(long *)puVar1;
  }
  uVar3 = *(undefined8 *)(*(long *)(lVar4 + 0xb8) + 8);
  if (*(int *)(*(long *)PTR_DAT_05e591c0 + 0xe4) == 0) {
    func_0x029f5bd0(*(long *)PTR_DAT_05e591c0);
  }
  uVar5 = Object_op_Inequality_0x6000ded(uVar3,0,0);
  if ((uVar5 & 1) != 0) {
    lVar4 = *(long *)puVar1;
    if (*(int *)(lVar4 + 0xe4) == 0) {
      func_0x029f5bd0();
      lVar4 = *(long *)puVar1;
    }
    lVar4 = *(long *)(*(long *)(lVar4 + 0xb8) + 8);
    if (lVar4 == 0) {
LAB_02cb0548:
                    /* WARNING: Subroutine does not return */
      Throw_NullReference_Wrapper();
    }
    if (0 < *(int *)(lVar4 + 0x30)) {
      Tutorial_manager_SetStep(lVar6,2);
      return 0;
    }
  }
  uVar3 = func_0x029f5cec(*(undefined8 *)PTR_DAT_05e5a710);
  WaitForSeconds__ctor_0x6000e26(_UNK_0116c060,uVar3,0);
  *(undefined8 *)(param_1 + 0x18) = uVar3;
  Managed_WriteBarrier((undefined8 *)(param_1 + 0x18),uVar3);
  *(undefined4 *)(param_1 + 0x10) = 2;
  return 1;
}

