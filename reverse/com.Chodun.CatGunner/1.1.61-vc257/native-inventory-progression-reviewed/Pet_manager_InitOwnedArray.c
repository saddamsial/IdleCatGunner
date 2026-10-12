/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b7c180, Ghidra VA 02c7c180. */

void Pet_manager_InitOwnedArray(long param_1)

{
  long lVar1;
  uint uVar2;
  long lVar3;
  long lVar4;
  ulong uVar5;
  uint uVar6;
  ulong uVar7;
  long *plVar8;
  
  if ((bRam000000000625c322 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e5d790);
    bRam000000000625c322 = 1;
  }
  plVar8 = (long *)(param_1 + 0x38);
  if ((*plVar8 == 0) || (*(int *)(*plVar8 + 0x18) != 0x10)) {
    lVar3 = func_0x029f5b40(*(undefined8 *)PTR_DAT_05e5d790,0x10);
    if (lVar3 == 0) {
                    /* WARNING: Subroutine does not return */
      Throw_NullReference_Wrapper();
    }
    uVar2 = *(uint *)(lVar3 + 0x18);
    lVar4 = 0;
    do {
      if ((ulong)uVar2 * 4 - lVar4 == 0) goto LAB_02c7c27c;
      lVar1 = lVar3 + lVar4;
      lVar4 = lVar4 + 4;
      *(undefined4 *)(lVar1 + 0x20) = 0xffffffff;
    } while (lVar4 != 0x40);
    lVar4 = *plVar8;
    if (lVar4 != 0) {
      uVar7 = *(ulong *)(lVar4 + 0x18);
      uVar6 = (uint)uVar7;
      if (0 < (int)uVar6) {
        uVar5 = 0;
        if (0xf < (int)uVar6) {
          uVar6 = 0x10;
        }
        do {
          if (((uVar7 & 0xffffffff) == uVar5) || (uVar2 <= uVar5)) {
LAB_02c7c27c:
                    /* WARNING: Subroutine does not return */
            Throw_Index_Wrapper();
          }
          *(undefined4 *)(lVar3 + 0x20 + uVar5 * 4) = *(undefined4 *)(lVar4 + 0x20 + uVar5 * 4);
          uVar5 = uVar5 + 1;
        } while (uVar6 != uVar5);
      }
    }
    *plVar8 = lVar3;
    Managed_WriteBarrier(plVar8);
  }
  Pet_manager_InitLockArrays_0x6000bc8(param_1);
  return;
}

