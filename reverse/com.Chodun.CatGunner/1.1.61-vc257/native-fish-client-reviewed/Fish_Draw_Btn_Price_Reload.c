/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b60334, Ghidra VA 02c60334. */

void Fish_Draw_Btn_Price_Reload(long param_1)

{
  int iVar1;
  undefined *puVar2;
  int iVar3;
  int iVar4;
  long lVar5;
  long *plVar6;
  undefined4 extraout_s0;
  undefined4 uVar7;
  undefined4 uVar8;
  undefined4 uVar9;
  undefined4 uVar10;
  
  puVar2 = PTR_DAT_05e5d338;
  if ((bRam000000000625c21b & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e5d338);
    bRam000000000625c21b = 1;
  }
  lVar5 = *(long *)puVar2;
  if (*(int *)(lVar5 + 0xe4) == 0) {
    func_0x029f5bd0();
    lVar5 = *(long *)puVar2;
  }
  iVar3 = ObscuredInt_op_Implicit_0x6000412
                    (*(undefined8 *)(*(long *)(lVar5 + 0xb8) + 0x90),
                     *(undefined8 *)(*(long *)(lVar5 + 0xb8) + 0x98),0);
  iVar1 = *(int *)(param_1 + 0x20);
  iVar4 = ObscuredInt_op_Implicit_0x6000412
                    (*(undefined8 *)(*(long *)(*(long *)puVar2 + 0xb8) + 0x90),
                     *(undefined8 *)(*(long *)(*(long *)puVar2 + 0xb8) + 0x98),0);
  uVar7 = extraout_s0;
  if (*(long *)(param_1 + 0x28) != 0) {
    SlicedFilledImage_set_fillAmount_0x60005d0
              ((float)iVar4 / (float)*(int *)(param_1 + 0x20),*(long *)(param_1 + 0x28),0);
    uVar10 = 0x3f800000;
    uVar9 = 0x3f800000;
    plVar6 = *(long **)(param_1 + 0x30);
    uVar8 = 0x3f800000;
    uVar7 = 0x3f800000;
    if (iVar3 < iVar1) {
      uVar7 = *(undefined4 *)(param_1 + 0x38);
      uVar8 = *(undefined4 *)(param_1 + 0x3c);
      uVar9 = *(undefined4 *)(param_1 + 0x40);
      uVar10 = *(undefined4 *)(param_1 + 0x44);
    }
    if (plVar6 != (long *)0x0) {
                    /* WARNING: Could not recover jumptable at 0x02c6040c. Too many branches */
                    /* WARNING: Treating indirect jump as call */
      (**(code **)(*plVar6 + 0x2a8))
                (uVar7,uVar8,uVar9,uVar10,plVar6,*(undefined8 *)(*plVar6 + 0x2b0));
      return;
    }
  }
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper(uVar7);
}

