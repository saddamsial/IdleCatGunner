/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2bb10b0, Ghidra VA 02cb10b0. */

/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */

void Upgrade_Ingame_Reload_Money(long param_1)

{
  undefined *puVar1;
  uint uVar2;
  long lVar3;
  long *plVar4;
  long lVar5;
  undefined4 uVar6;
  float fVar7;
  undefined4 uVar8;
  undefined4 uVar9;
  undefined4 uVar10;
  undefined8 uStack_60;
  undefined8 uStack_58;
  undefined8 uStack_50;
  undefined8 uStack_48;
  undefined8 uStack_40;
  undefined8 uStack_38;
  undefined8 uStack_30;
  undefined8 uStack_28;
  
  if ((bRam000000000625c549 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e5d338);
    bRam000000000625c549 = 1;
  }
  puVar1 = PTR_DAT_05e5d338;
  uStack_38 = 0;
  uStack_40 = 0;
  uStack_28 = 0;
  uStack_30 = 0;
  if (*(char *)(param_1 + 0xb8) == '\0') {
    lVar3 = *(long *)PTR_DAT_05e5d338;
    if (*(int *)(lVar3 + 0xe4) == 0) {
      func_0x029f5bd0();
      lVar3 = *(long *)puVar1;
    }
    uVar2 = InfVal_op_GreaterThanOrEqual_0x6000081(*(long *)(lVar3 + 0xb8) + 0x30,param_1 + 0x98,0);
    uVar2 = uVar2 & 1;
    if (*(uint *)(param_1 + 0xc0) != uVar2) {
      *(uint *)(param_1 + 0xc0) = uVar2;
      if (*(long *)(param_1 + 0x30) == 0) goto LAB_02cb1230;
      GameObject_SetActive_0x6000cfe(*(long *)(param_1 + 0x30),uVar2,0);
      uVar10 = 0x3f800000;
      uVar9 = 0x3f800000;
      plVar4 = *(long **)(param_1 + 0x40);
      uVar8 = 0x3f800000;
      uVar6 = 0x3f800000;
      if (uVar2 == 0) {
        uVar6 = *(undefined4 *)(param_1 + 0x50);
        uVar8 = *(undefined4 *)(param_1 + 0x54);
        uVar9 = *(undefined4 *)(param_1 + 0x58);
        uVar10 = *(undefined4 *)(param_1 + 0x5c);
      }
      if (plVar4 == (long *)0x0) goto LAB_02cb1230;
      (**(code **)(*plVar4 + 0x2a8))
                (uVar6,uVar8,uVar9,uVar10,plVar4,*(undefined8 *)(*plVar4 + 0x2b0));
      if (uVar2 != 0) {
        if (*(long *)(param_1 + 0x28) == 0) goto LAB_02cb1230;
        SlicedFilledImage_set_fillAmount(0,*(long *)(param_1 + 0x28),0);
      }
      *(undefined4 *)(param_1 + 200) = 0xbf800000;
    }
    if ((uVar2 == 0) &&
       (fVar7 = (float)Time_get_unscaledTime_0x6000ee6(0),
       _UNK_0116c174 <= fVar7 - *(float *)(param_1 + 200))) {
      uVar6 = Time_get_unscaledTime_0x6000ee6(0);
      lVar3 = *(long *)puVar1;
      lVar5 = *(long *)(param_1 + 0x28);
      *(undefined4 *)(param_1 + 200) = uVar6;
      if (*(int *)(lVar3 + 0xe4) == 0) {
        func_0x029f5bd0();
        lVar3 = *(long *)puVar1;
      }
      InfVal_op_Division_0x6000075(&uStack_60,*(long *)(lVar3 + 0xb8) + 0x30,param_1 + 0x98,0);
      uStack_38 = uStack_58;
      uStack_40 = uStack_60;
      uStack_28 = uStack_48;
      uStack_30 = uStack_50;
      InfVal_op_Explicit_0x600005a(&uStack_40,0);
      if (lVar5 == 0) {
LAB_02cb1230:
                    /* WARNING: Subroutine does not return */
        Throw_NullReference_Wrapper();
      }
      SlicedFilledImage_set_fillAmount(lVar5,0);
    }
  }
  return;
}

