/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b2ca08, Ghidra VA 02c2ca08. */

undefined8 Adventure_manager_ShouldAlert_return(long param_1)

{
  undefined *puVar1;
  undefined8 uVar2;
  ulong uVar3;
  long lVar4;
  long lVar5;
  undefined8 uVar6;
  uint uVar7;
  ulong uVar8;
  uint uVar9;
  
  if ((bRam000000000625bff9 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e597d0);
    func_0x029f5a50(PTR_DAT_05e5d3c0);
    bRam000000000625bff9 = 1;
  }
  lVar4 = *(long *)(param_1 + 0x28);
  if (lVar4 != 0) {
    uVar9 = *(uint *)(lVar4 + 0x18);
    if (0 < (int)uVar9) {
      uVar7 = 0;
      do {
        if (uVar9 == uVar7) goto LAB_02c2cb94;
        if (0x13 < *(int *)(lVar4 + (long)(int)uVar7 * 4 + 0x20)) {
          return 1;
        }
        uVar7 = uVar7 + 1;
      } while ((uVar9 & ((int)uVar9 >> 0x1f ^ 0xffffffffU)) != uVar7);
    }
    if (*(long *)(param_1 + 0x20) == 0) {
      return 0;
    }
    if (*(int *)(*(long *)PTR_DAT_05e5d3c0 + 0xe4) == 0) {
      func_0x029f5bd0();
    }
    uVar2 = Time_manager_get_Now_0x6000579();
    puVar1 = PTR_DAT_05e597d0;
    lVar4 = *(long *)(param_1 + 0x20);
    if (lVar4 != 0) {
      uVar9 = 0;
LAB_02c2cac8:
      if ((int)*(uint *)(lVar4 + 0x18) <= (int)uVar9) {
        return 0;
      }
      if (*(uint *)(lVar4 + 0x18) <= uVar9) {
LAB_02c2cb94:
                    /* WARNING: Subroutine does not return */
        Throw_Index_Wrapper();
      }
      lVar5 = *(long *)(lVar4 + (long)(int)uVar9 * 8 + 0x20);
      if (lVar5 != 0) {
        lVar5 = *(long *)(lVar5 + 0x18);
        if ((lVar5 != 0) && (uVar6 = *(undefined8 *)(lVar5 + 0x18), 0 < (int)uVar6)) {
          uVar8 = 0;
          do {
            if ((uint)uVar6 <= (uint)uVar8) goto LAB_02c2cb94;
            lVar4 = *(long *)(lVar5 + 0x20 + uVar8 * 8);
            if (lVar4 == 0) goto LAB_02c2cb6c;
            if (*(char *)(lVar4 + 0x10) != '\0') {
              uVar6 = Adventure_manager_Adventure_End_dateTime_return
                                (param_1,lVar4,uVar8 & 0xffffffff);
              if (*(int *)(*(long *)puVar1 + 0xe4) == 0) {
                func_0x029f5bd0(*(long *)puVar1);
              }
              uVar3 = DateTime_op_LessThanOrEqual_0x600063e(uVar6,uVar2,0);
              if ((uVar3 & 1) != 0) {
                return 1;
              }
              uVar6 = *(undefined8 *)(lVar5 + 0x18);
            }
            uVar8 = uVar8 + 1;
          } while ((int)uVar8 < (int)uVar6);
          lVar4 = *(long *)(param_1 + 0x20);
        }
        uVar9 = uVar9 + 1;
        if (lVar4 != 0) goto LAB_02c2cac8;
      }
    }
  }
LAB_02c2cb6c:
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

