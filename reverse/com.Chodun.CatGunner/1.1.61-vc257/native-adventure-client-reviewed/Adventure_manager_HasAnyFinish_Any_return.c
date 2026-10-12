/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b2e86c, Ghidra VA 02c2e86c. */

undefined8 Adventure_manager_HasAnyFinish_Any_return(long param_1)

{
  undefined *puVar1;
  undefined8 uVar2;
  ulong uVar3;
  long lVar4;
  long lVar5;
  undefined8 uVar6;
  ulong uVar7;
  uint uVar8;
  
  if ((bRam000000000625c00f & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e597d0);
    func_0x029f5a50(PTR_DAT_05e5d3c0);
    bRam000000000625c00f = 1;
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
    uVar8 = 0;
    do {
      if ((int)*(uint *)(lVar4 + 0x18) <= (int)uVar8) {
        return 0;
      }
      if (*(uint *)(lVar4 + 0x18) <= uVar8) {
LAB_02c2e9b8:
                    /* WARNING: Subroutine does not return */
        Throw_Index_Wrapper();
      }
      lVar5 = *(long *)(lVar4 + (long)(int)uVar8 * 8 + 0x20);
      if (lVar5 == 0) break;
      lVar5 = *(long *)(lVar5 + 0x18);
      if ((lVar5 != 0) && (uVar6 = *(undefined8 *)(lVar5 + 0x18), 0 < (int)uVar6)) {
        uVar7 = 0;
        do {
          if ((uint)uVar6 <= (uint)uVar7) goto LAB_02c2e9b8;
          lVar4 = *(long *)(lVar5 + 0x20 + uVar7 * 8);
          if (lVar4 == 0) goto LAB_02c2e990;
          if (*(char *)(lVar4 + 0x10) != '\0') {
            uVar6 = Adventure_manager_Adventure_End_dateTime_return
                              (param_1,lVar4,uVar7 & 0xffffffff);
            if (*(int *)(*(long *)puVar1 + 0xe4) == 0) {
              func_0x029f5bd0(*(long *)puVar1);
            }
            uVar3 = DateTime_op_LessThanOrEqual_0x600063e(uVar6,uVar2,0);
            if ((uVar3 & 1) != 0) {
              return 1;
            }
            uVar6 = *(undefined8 *)(lVar5 + 0x18);
          }
          uVar7 = uVar7 + 1;
        } while ((int)uVar7 < (int)uVar6);
        lVar4 = *(long *)(param_1 + 0x20);
      }
      uVar8 = uVar8 + 1;
    } while (lVar4 != 0);
  }
LAB_02c2e990:
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

