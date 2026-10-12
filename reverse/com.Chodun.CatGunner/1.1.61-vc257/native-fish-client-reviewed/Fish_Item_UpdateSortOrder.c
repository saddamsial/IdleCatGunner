/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b613e4, Ghidra VA 02c613e4. */

void Fish_Item_UpdateSortOrder(undefined1 param_1 [16],float param_2,long param_3)

{
  int iVar1;
  uint uVar2;
  undefined *puVar3;
  ulong uVar4;
  undefined8 uVar5;
  double dVar6;
  double dVar7;
  undefined1 auVar8 [16];
  double dStack_38;
  
  puVar3 = PTR_DAT_05e591c0;
  if ((bRam000000000625c224 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e591c0);
    bRam000000000625c224 = 1;
  }
  uVar5 = *(undefined8 *)(param_3 + 0x60);
  if (*(int *)(*(long *)puVar3 + 0xe4) == 0) {
    func_0x029f5bd0();
  }
  auVar8 = Object_op_Equality_0x6000dec(uVar5,0,0);
  uVar4 = auVar8._8_8_;
  if ((auVar8._0_8_ & 1) != 0) {
    return;
  }
  if (*(long *)(param_3 + 0x50) == 0) goto LAB_02c615a8;
  RectTransform_get_anchoredPosition_0x6000f2b(*(long *)(param_3 + 0x50),0);
  if (cRam000000000625b95a == '\0') {
    func_0x029f5a50(PTR_DAT_05e59000);
    cRam000000000625b95a = '\x01';
  }
  if (*(int *)(*(long *)PTR_DAT_05e59000 + 0xe4) == 0) {
    func_0x029f5bd0();
  }
  dVar7 = (double)(300.0 - param_2);
  dVar6 = (double)func_0x05afb230(dVar7,&dStack_38);
  if (0.0 <= 300.0 - param_2) {
    if (dVar6 == 0.5) {
      dVar6 = 1.0;
      goto LAB_02c614f8;
    }
    dStack_38 = (double)(long)(dVar7 + 0.5);
  }
  else if (dVar6 == -0.5) {
    dVar6 = -1.0;
LAB_02c614f8:
    if (((long)dStack_38 & 1U) != 0) {
      dStack_38 = dStack_38 + dVar6;
    }
  }
  else {
    dStack_38 = (double)(long)(dVar7 + -0.5);
  }
  iVar1 = -0x80000000;
  if (dStack_38 != INFINITY) {
    iVar1 = (int)dStack_38;
  }
  uVar2 = iVar1 + (0xc - (*(uint *)(param_3 + 0x40) &
                         ((int)*(uint *)(param_3 + 0x40) >> 0x1f ^ 0xffffffffU))) * 10;
  if (1999 < (int)uVar2) {
    uVar2 = 2000;
  }
  if (*(char *)(param_3 + 0x84) == '\0') {
    uVar2 = uVar2 & ((int)uVar2 >> 0x1f ^ 0xffffffffU);
    uVar4 = (ulong)uVar2;
    if (*(char *)(param_3 + 0x86) != '\0') {
      if (*(char *)(param_3 + 0x87) != '\0') {
        uVar2 = 0x270e;
      }
      uVar4 = (ulong)uVar2;
    }
  }
  else {
    uVar4 = 9999;
  }
  if (*(long *)(param_3 + 0x60) != 0) {
    Canvas_set_sortingOrder_0x600006a(*(long *)(param_3 + 0x60),uVar4,0);
    return;
  }
LAB_02c615a8:
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper(0,uVar4);
}

