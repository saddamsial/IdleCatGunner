/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b32bd0, Ghidra VA 02c32bd0. */

undefined8 Relic_manager_Relic_PickByType(long param_1,int param_2)

{
  int iVar1;
  undefined *puVar2;
  uint uVar3;
  int iVar4;
  long lVar5;
  long *plVar6;
  long lVar7;
  long lVar8;
  long lVar9;
  int iVar10;
  ulong uVar11;
  int iVar12;
  long lVar13;
  int iVar14;
  
  if ((bRam000000000625c044 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e630a8);
    func_0x029f5a50(PTR_DAT_05e630b0);
    func_0x029f5a50(PTR_DAT_05e630b8);
    func_0x029f5a50(PTR_DAT_05e630c0);
    func_0x029f5a50(PTR_DAT_05e630c8);
    func_0x029f5a50(PTR_DAT_05e5d4d8);
    bRam000000000625c044 = 1;
  }
  puVar2 = PTR_DAT_05e630b0;
  if (param_2 == 3) {
    if (*(long *)(param_1 + 0x20) == 0) goto LAB_02c32e34;
    iVar4 = *(int *)(*(long *)(param_1 + 0x20) + 0x18);
    uVar11 = 0;
  }
  else {
    uVar11 = (ulong)(uint)(param_2 * 5);
    iVar4 = 5;
  }
  lVar5 = func_0x029f5cec(*(undefined8 *)PTR_DAT_05e630c8);
  func_0x0452c340(lVar5,*(undefined8 *)puVar2);
  puVar2 = PTR_DAT_05e5d4d8;
  iVar10 = (int)uVar11;
  if (iVar10 < iVar10 + iVar4) {
    lVar13 = (-(uVar11 >> 0x1f) & 0xfffffff800000000 | uVar11 << 3) + 0x20;
    iVar14 = iVar4;
    do {
      lVar7 = *(long *)(param_1 + 0x20);
      if (lVar7 == 0) goto LAB_02c32e34;
      if (*(uint *)(lVar7 + 0x18) <= (uint)uVar11) goto LAB_02c32e38;
      lVar7 = *(long *)(lVar7 + lVar13);
      if (lVar7 == 0) goto LAB_02c32e34;
      iVar1 = *(int *)(lVar7 + 0x18);
      uVar3 = *(uint *)(lVar7 + 0x10);
      if (*(int *)(*(long *)puVar2 + 0xe4) == 0) {
        func_0x029f5bd0();
      }
      iVar12 = 300;
      if (8 < uVar3) {
        iVar12 = 0x32;
      }
      if (iVar1 < iVar12) {
        if (lVar5 == 0) goto LAB_02c32e34;
        lVar8 = *(long *)(lVar5 + 0x10);
        lVar9 = *(long *)PTR_DAT_05e630a8;
        *(int *)(lVar5 + 0x1c) = *(int *)(lVar5 + 0x1c) + 1;
        if (lVar8 == 0) goto LAB_02c32e34;
        uVar3 = *(uint *)(lVar5 + 0x18);
        if (uVar3 < *(uint *)(lVar8 + 0x18)) {
          *(uint *)(lVar5 + 0x18) = uVar3 + 1;
          plVar6 = (long *)(lVar8 + (long)(int)uVar3 * 8 + 0x20);
          *plVar6 = lVar7;
          Managed_WriteBarrier(plVar6,lVar7);
        }
        else {
          func_0x0452cba8(lVar5,lVar7,
                          *(undefined8 *)(*(long *)(*(long *)(lVar9 + 0x20) + 0xc0) + 0x70));
        }
      }
      iVar14 = iVar14 + -1;
      uVar11 = (ulong)((uint)uVar11 + 1);
      lVar13 = lVar13 + 8;
    } while (iVar14 != 0);
  }
  puVar2 = PTR_DAT_05e630c0;
  if (lVar5 != 0) {
    if (0 < *(int *)(lVar5 + 0x18)) {
      uVar3 = Random_Range_0x6000ba7(0,*(int *)(lVar5 + 0x18),0);
      if (*(uint *)(lVar5 + 0x18) <= uVar3) {
        ThrowHelper_ThrowArgumentOutOfRange_IndexException_0x6000c8b(0,uVar3,*(undefined8 *)puVar2);
      }
      lVar5 = *(long *)(lVar5 + 0x10);
      if (lVar5 != 0) {
        if (uVar3 < *(uint *)(lVar5 + 0x18)) {
          return *(undefined8 *)(lVar5 + (long)(int)uVar3 * 8 + 0x20);
        }
                    /* WARNING: Subroutine does not return */
        Throw_Index_Wrapper();
      }
                    /* WARNING: Subroutine does not return */
      Throw_NullReference_Wrapper();
    }
    lVar5 = *(long *)(param_1 + 0x20);
    iVar4 = Random_Range_0x6000ba7(0,iVar4,0);
    if (lVar5 != 0) {
      if ((uint)(iVar4 + iVar10) < *(uint *)(lVar5 + 0x18)) {
        return *(undefined8 *)(lVar5 + (long)(iVar4 + iVar10) * 8 + 0x20);
      }
LAB_02c32e38:
                    /* WARNING: Subroutine does not return */
      Throw_Index_Wrapper();
    }
  }
LAB_02c32e34:
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

