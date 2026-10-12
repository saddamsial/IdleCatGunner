/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b7c968, Ghidra VA 02c7c968. */

long Pet_manager_FitLockArray(undefined8 param_1,long param_2,uint param_3)

{
  long lVar1;
  long lVar2;
  long lVar3;
  ulong uVar4;
  ulong uVar5;
  uint uVar6;
  undefined4 *puVar7;
  
  if ((bRam000000000625c323 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e5d790);
    bRam000000000625c323 = 1;
  }
  if ((param_2 == 0) || (lVar3 = param_2, *(uint *)(param_2 + 0x18) != param_3)) {
    lVar3 = func_0x029f5b40(*(undefined8 *)PTR_DAT_05e5d790,param_3);
    if (0 < (int)param_3) {
      if (lVar3 == 0) {
LAB_02c7ca58:
                    /* WARNING: Subroutine does not return */
        Throw_NullReference_Wrapper();
      }
      uVar4 = (ulong)*(uint *)(lVar3 + 0x18);
      uVar5 = (ulong)param_3;
      puVar7 = (undefined4 *)(lVar3 + 0x20);
      do {
        if (uVar4 == 0) goto LAB_02c7ca54;
        uVar5 = uVar5 - 1;
        uVar4 = uVar4 - 1;
        *puVar7 = 0xffffffff;
        puVar7 = puVar7 + 1;
      } while (uVar5 != 0);
    }
    if (param_2 != 0) {
      uVar5 = *(ulong *)(param_2 + 0x18);
      uVar6 = (uint)uVar5;
      if ((int)param_3 <= (int)uVar6) {
        uVar6 = param_3;
      }
      if (0 < (int)uVar6) {
        uVar4 = 0;
        do {
          if ((uVar5 & 0xffffffff) == uVar4) {
LAB_02c7ca54:
                    /* WARNING: Subroutine does not return */
            Throw_Index_Wrapper();
          }
          if (lVar3 == 0) goto LAB_02c7ca58;
          if (*(uint *)(lVar3 + 0x18) <= uVar4) goto LAB_02c7ca54;
          lVar2 = uVar4 * 4;
          lVar1 = uVar4 * 4;
          uVar4 = uVar4 + 1;
          *(undefined4 *)(lVar3 + lVar1 + 0x20) = *(undefined4 *)(param_2 + 0x20 + lVar2);
        } while (uVar6 != uVar4);
      }
    }
  }
  return lVar3;
}

