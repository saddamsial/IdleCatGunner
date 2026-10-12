/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2bb2c14, Ghidra VA 02cb2c14. */

void Upgrade_manager_LoadData(long param_1,long param_2)

{
  undefined *puVar1;
  undefined *puVar2;
  long *plVar3;
  long lVar4;
  long lVar5;
  ulong uVar6;
  float fVar7;
  float fVar8;
  float fVar9;
  undefined1 auVar10 [16];
  
  if ((bRam000000000625c558 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e5d4e8);
    func_0x029f5a50(PTR_DAT_05e59050);
    bRam000000000625c558 = 1;
  }
  puVar2 = PTR_DAT_05e5d4e8;
  puVar1 = PTR_DAT_05e59050;
  uVar6 = 0;
  do {
    lVar4 = *(long *)(param_1 + 0x20);
    if (lVar4 == 0) goto LAB_02cb2d40;
    if (*(uint *)(lVar4 + 0x18) <= uVar6) {
LAB_02cb2d44:
                    /* WARNING: Subroutine does not return */
      Throw_Index_Wrapper();
    }
    if ((param_2 == 0) || (lVar5 = *(long *)(param_2 + 0x108), lVar5 == 0)) goto LAB_02cb2d40;
    if (*(uint *)(lVar5 + 0x18) <= uVar6) goto LAB_02cb2d44;
    lVar4 = *(long *)(lVar4 + uVar6 * 8 + 0x20);
    auVar10 = ObscuredInt_op_Implicit_0x6000411(*(undefined4 *)(lVar5 + uVar6 * 4 + 0x20),0);
    if (lVar4 == 0) goto LAB_02cb2d40;
    uVar6 = uVar6 + 1;
    *(undefined1 (*) [16])(lVar4 + 0x18) = auVar10;
  } while (uVar6 != 3);
  lVar5 = *(long *)puVar2;
  lVar4 = *(long *)puVar1;
  if (*(long *)(param_2 + 0x110) != 0) {
    lVar4 = *(long *)(param_2 + 0x110);
  }
  if (*(int *)(lVar5 + 0xe4) == 0) {
    func_0x029f5bd0();
    lVar5 = *(long *)puVar2;
  }
  plVar3 = (long *)(*(long *)(lVar5 + 0xb8) + 8);
  *plVar3 = lVar4;
  func_0x029f59f4(plVar3,lVar4);
  fVar7 = *(float *)(param_2 + 0x118);
  lVar4 = *(long *)(param_1 + 0x58);
  fVar9 = 600.0;
  if (fVar7 <= 600.0) {
    fVar9 = fVar7;
  }
  fVar8 = 0.0;
  if (0.0 <= fVar7) {
    fVar8 = fVar9;
  }
  *(float *)(*(long *)(*(long *)puVar2 + 0xb8) + 0x10) = fVar8;
  if (lVar4 != 0) {
    Upgrade_list_Reload_0x6000f86();
    return;
  }
LAB_02cb2d40:
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

