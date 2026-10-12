/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2ba1ca0, Ghidra VA 02ca1ca0. */

void StarGem_Pig_HUD__Reload(long param_1)

{
  undefined *puVar1;
  undefined *puVar2;
  uint uVar3;
  long lVar4;
  ulong uVar5;
  undefined8 uVar6;
  long *plVar7;
  float fVar8;
  int iStack_44;
  
  puVar2 = PTR_DAT_05e5e3e0;
  if ((bRam000000000625c48b & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e591c0);
    func_0x029f5a50(PTR_DAT_05e5e3e0);
    func_0x029f5a50(PTR_DAT_05e63338);
    bRam000000000625c48b = 1;
  }
  puVar1 = PTR_DAT_05e591c0;
  lVar4 = *(long *)puVar2;
  if (*(int *)(lVar4 + 0xe4) == 0) {
    func_0x029f5bd0();
    lVar4 = *(long *)puVar2;
  }
  lVar4 = **(long **)(lVar4 + 0xb8);
  if (*(int *)(*(long *)puVar1 + 0xe4) == 0) {
    func_0x029f5bd0(*(long *)puVar1);
  }
  uVar5 = Object_op_Equality_0x6000dec(lVar4,0,0);
  if ((uVar5 & 1) == 0) {
    if (lVar4 == 0) {
LAB_02ca1f0c:
                    /* WARNING: Subroutine does not return */
      Throw_NullReference_Wrapper();
    }
    fVar8 = (float)StarGem_Pig__get_Fill_Ratio(lVar4);
    uVar6 = *(undefined8 *)(param_1 + 0x20);
    if (*(int *)(*(long *)puVar1 + 0xe4) == 0) {
      func_0x029f5bd0();
    }
    uVar5 = Object_op_Inequality_0x6000ded(uVar6,0,0);
    if ((uVar5 & 1) != 0) {
      if (*(long *)(param_1 + 0x20) == 0) goto LAB_02ca1f0c;
      SlicedFilledImage_set_fillAmount_0x60005d0(fVar8,*(long *)(param_1 + 0x20),0);
    }
    uVar6 = *(undefined8 *)(param_1 + 0x28);
    if (*(int *)(*(long *)puVar1 + 0xe4) == 0) {
      func_0x029f5bd0();
    }
    uVar5 = Object_op_Inequality_0x6000ded(uVar6,0,0);
    if ((uVar5 & 1) != 0) {
      plVar7 = *(long **)(param_1 + 0x28);
      if (cRam000000000625ba65 == '\0') {
        func_0x029f5a50(PTR_DAT_05e59000);
        cRam000000000625ba65 = '\x01';
      }
      if (*(int *)(*(long *)PTR_DAT_05e59000 + 0xe4) == 0) {
        func_0x029f5bd0();
      }
      iStack_44 = -0x80000000;
      if ((float)(int)(fVar8 * 100.0) != INFINITY) {
        iStack_44 = (int)(fVar8 * 100.0);
      }
      uVar6 = func_0x029f5bd8(*(undefined8 *)(PTR_DAT_05e58a10 + 0x48),&iStack_44);
      uVar6 = String_Format_0x600029c(*(undefined8 *)PTR_DAT_05e63338,uVar6,0);
      if (plVar7 == (long *)0x0) goto LAB_02ca1f0c;
      (**(code **)(*plVar7 + 0x558))(plVar7,uVar6,*(undefined8 *)(*plVar7 + 0x560));
    }
    uVar3 = StarGem_Pig__get_Is_Purchasable(lVar4);
    uVar6 = *(undefined8 *)(param_1 + 0x30);
    if (*(int *)(*(long *)puVar1 + 0xe4) == 0) {
      func_0x029f5bd0(*(long *)puVar1);
    }
    uVar5 = Object_op_Inequality_0x6000ded(uVar6,0,0);
    if ((uVar5 & 1) != 0) {
      if (*(long *)(param_1 + 0x30) == 0) goto LAB_02ca1f0c;
      GameObject_SetActive_0x6000cfe(*(long *)(param_1 + 0x30),uVar3 & 1,0);
    }
    uVar6 = *(undefined8 *)(param_1 + 0x38);
    if (*(int *)(*(long *)puVar1 + 0xe4) == 0) {
      func_0x029f5bd0();
    }
    uVar5 = Object_op_Inequality_0x6000ded(uVar6,0,0);
    if ((uVar5 & 1) != 0) {
      if (*(long *)(param_1 + 0x38) == 0) goto LAB_02ca1f0c;
      GameObject_SetActive_0x6000cfe(*(long *)(param_1 + 0x38),uVar3 & 1,0);
    }
  }
  return;
}

