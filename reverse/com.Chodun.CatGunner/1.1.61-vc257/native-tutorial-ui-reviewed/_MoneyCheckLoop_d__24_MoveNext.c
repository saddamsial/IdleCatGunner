/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2bb0598, Ghidra VA 02cb0598. */

/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */

undefined8 _MoneyCheckLoop_d__24_MoveNext(long param_1)

{
  undefined *puVar1;
  int iVar2;
  uint uVar3;
  long lVar4;
  undefined8 uVar5;
  long lVar6;
  undefined8 uStack_40;
  undefined8 uStack_38;
  undefined8 uStack_30;
  undefined8 uStack_28;
  
  if ((bRam000000000625c544 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e5d338);
    func_0x029f5a50(PTR_DAT_05e5d4e8);
    func_0x029f5a50(PTR_DAT_05e5a710);
    bRam000000000625c544 = 1;
  }
  uStack_38 = 0;
  uStack_40 = 0;
  uStack_28 = 0;
  uStack_30 = 0;
  if (1 < *(uint *)(param_1 + 0x10)) {
    return 0;
  }
  lVar6 = *(long *)(param_1 + 0x20);
  *(undefined4 *)(param_1 + 0x10) = 0xffffffff;
  puVar1 = PTR_DAT_05e5d4e8;
  if (lVar6 != 0) {
    if (*(int *)(lVar6 + 0x60) != 0) {
      return 0;
    }
    if (*(int *)(*(long *)PTR_DAT_05e5d4e8 + 0xe4) == 0) {
      func_0x029f5bd0();
    }
    iVar2 = Upgrade_manager_Lv_return_0x6000f92(0);
    if (iVar2 < 1) {
      if (*(int *)(*(long *)puVar1 + 0xe4) == 0) {
        func_0x029f5bd0();
      }
      Upgrade_manager_Price_return_0x6000f93(&uStack_40,0);
      puVar1 = PTR_DAT_05e5d338;
      lVar4 = *(long *)PTR_DAT_05e5d338;
      if (*(int *)(lVar4 + 0xe4) == 0) {
        func_0x029f5bd0();
        lVar4 = *(long *)puVar1;
      }
      uVar3 = InfVal_op_GreaterThanOrEqual_0x6000081(*(long *)(lVar4 + 0xb8) + 0x30,&uStack_40,0);
      if (*(long *)(lVar6 + 0x28) != 0) {
        GameObject_SetActive_0x6000cfe(*(long *)(lVar6 + 0x28),uVar3 & 1,0);
        uVar5 = func_0x029f5cec(*(undefined8 *)PTR_DAT_05e5a710);
        WaitForSeconds__ctor_0x6000e26(_UNK_0116c060,uVar5,0);
        *(undefined8 *)(param_1 + 0x18) = uVar5;
        Managed_WriteBarrier((undefined8 *)(param_1 + 0x18),uVar5);
        *(undefined4 *)(param_1 + 0x10) = 1;
        return 1;
      }
    }
    else if (*(long *)(lVar6 + 0x28) != 0) {
      GameObject_SetActive_0x6000cfe(*(long *)(lVar6 + 0x28),0,0);
      Tutorial_manager_SetStep(lVar6,1);
      return 0;
    }
  }
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

