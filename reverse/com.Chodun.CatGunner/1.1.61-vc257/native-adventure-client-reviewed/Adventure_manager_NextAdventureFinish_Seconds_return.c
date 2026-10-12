/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b2ed94, Ghidra VA 02c2ed94. */

undefined1  [16] Adventure_manager_NextAdventureFinish_Seconds_return(long param_1)

{
  undefined *puVar1;
  undefined *puVar2;
  bool bVar3;
  bool bVar4;
  undefined8 uVar5;
  long lVar6;
  long lVar7;
  undefined8 uVar8;
  ulong uVar9;
  uint uVar10;
  double dVar11;
  undefined1 auVar12 [16];
  double dVar13;
  undefined8 uStack_68;
  
  if ((bRam000000000625c016 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e597d0);
    func_0x029f5a50(PTR_DAT_05e5a180);
    func_0x029f5a50(PTR_DAT_05e5d3c0);
    bRam000000000625c016 = 1;
  }
  uStack_68 = 0;
  if (*(long *)(param_1 + 0x20) == 0) {
    dVar11 = -1.0;
LAB_02c2ef44:
    auVar12._8_8_ = 0;
    auVar12._0_8_ = dVar11;
    return auVar12;
  }
  if (*(int *)(*(long *)PTR_DAT_05e5d3c0 + 0xe4) == 0) {
    func_0x029f5bd0();
  }
  uVar5 = Time_manager_get_Now_0x6000579();
  puVar2 = PTR_DAT_05e5a180;
  puVar1 = PTR_DAT_05e597d0;
  lVar6 = *(long *)(param_1 + 0x20);
  if (lVar6 != 0) {
    uVar10 = 0;
    dVar13 = 1.7976931348623157e+308;
    do {
      if ((int)*(uint *)(lVar6 + 0x18) <= (int)uVar10) {
        dVar11 = -1.0;
        if (dVar13 != 1.7976931348623157e+308) {
          dVar11 = dVar13;
        }
        goto LAB_02c2ef44;
      }
      if (*(uint *)(lVar6 + 0x18) <= uVar10) {
LAB_02c2ef64:
                    /* WARNING: Subroutine does not return */
        Throw_Index_Wrapper();
      }
      lVar7 = *(long *)(lVar6 + (long)(int)uVar10 * 8 + 0x20);
      if (lVar7 == 0) break;
      lVar7 = *(long *)(lVar7 + 0x18);
      if ((lVar7 != 0) && (uVar8 = *(undefined8 *)(lVar7 + 0x18), 0 < (int)uVar8)) {
        uVar9 = 0;
        dVar11 = dVar13;
        do {
          if ((uint)uVar8 <= (uint)uVar9) goto LAB_02c2ef64;
          lVar6 = *(long *)(lVar7 + 0x20 + uVar9 * 8);
          if (lVar6 == 0) goto LAB_02c2ef24;
          dVar13 = dVar11;
          if (*(char *)(lVar6 + 0x10) != '\0') {
            if (*(long *)(param_1 + 0x68) == 0) goto LAB_02c2ef24;
            if ((int)(uint)uVar9 < *(int *)(*(long *)(param_1 + 0x68) + 0x18)) {
              uVar8 = Adventure_manager_Adventure_End_dateTime_return
                                (param_1,lVar6,uVar9 & 0xffffffff);
              if (*(int *)(*(long *)puVar1 + 0xe4) == 0) {
                func_0x029f5bd0(*(long *)puVar1);
              }
              uStack_68 = DateTime_op_Subtraction_0x600063a(uVar8,uVar5,0);
              if (*(int *)(*(long *)puVar2 + 0xe4) == 0) {
                func_0x029f5bd0(*(long *)puVar2);
              }
              dVar13 = (double)TimeSpan_get_TotalSeconds_0x6000a76(&uStack_68,0);
              uVar8 = *(undefined8 *)(lVar7 + 0x18);
              bVar3 = false;
              bVar4 = false;
              if (dVar13 < dVar11) {
                bVar3 = false;
                bVar4 = true;
                if (!NAN(dVar13)) {
                  bVar3 = dVar13 == 0.0;
                  bVar4 = 0.0 <= dVar13;
                }
              }
              if (!bVar4 || bVar3) {
                dVar13 = dVar11;
              }
            }
          }
          uVar9 = uVar9 + 1;
          dVar11 = dVar13;
        } while ((int)uVar9 < (int)uVar8);
        lVar6 = *(long *)(param_1 + 0x20);
      }
      uVar10 = uVar10 + 1;
    } while (lVar6 != 0);
  }
LAB_02c2ef24:
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

