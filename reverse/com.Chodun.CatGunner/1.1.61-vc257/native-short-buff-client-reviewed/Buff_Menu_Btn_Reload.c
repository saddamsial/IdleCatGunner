/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b37ce4, Ghidra VA 02c37ce4. */

void Buff_Menu_Btn_Reload(long param_1)

{
  undefined8 uVar1;
  undefined1 auVar2 [16];
  undefined *puVar3;
  undefined *puVar4;
  undefined *puVar5;
  bool bVar6;
  bool bVar7;
  bool bVar8;
  uint uVar9;
  long lVar10;
  long *plVar11;
  ulong extraout_x1;
  ulong extraout_x1_00;
  ulong uVar12;
  ulong extraout_x1_01;
  ulong extraout_x1_02;
  code *UNRECOVERED_JUMPTABLE;
  long lVar13;
  long lVar14;
  undefined8 uVar15;
  ulong uVar16;
  float fVar17;
  float fVar18;
  undefined1 auVar19 [16];
  
  puVar4 = PTR_DAT_05e5d4c0;
  if ((bRam000000000625c080 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e631a0);
    func_0x029f5a50(PTR_DAT_05e5d4c0);
    func_0x029f5a50(PTR_DAT_05e591c0);
    func_0x029f5a50(PTR_DAT_05e59050);
    bRam000000000625c080 = 1;
  }
  puVar3 = PTR_DAT_05e591c0;
  lVar10 = *(long *)puVar4;
  if (*(int *)(lVar10 + 0xe4) == 0) {
    func_0x029f5bd0();
    lVar10 = *(long *)puVar4;
  }
  lVar13 = *(long *)puVar3;
  lVar10 = **(long **)(lVar10 + 0xb8);
  if (*(int *)(lVar13 + 0xe4) == 0) {
    func_0x029f5bd0(lVar13);
  }
  auVar19 = Object_op_Equality_0x6000dec(lVar10,0,0);
  if ((auVar19._0_8_ & 1) == 0) {
    if (lVar10 == 0) goto LAB_02c37fe0;
    uVar15 = *(undefined8 *)(param_1 + 0x20);
    uVar1 = *(undefined8 *)(param_1 + 0x28);
    uVar9 = Buff_manager_IsBuffActive(lVar10,1);
    puVar5 = PTR_DAT_05e631a0;
    if (*(int *)(*(long *)PTR_DAT_05e631a0 + 0xe4) == 0) {
      func_0x029f5bd0(*(long *)PTR_DAT_05e631a0);
    }
    Buff_Menu_Btn_SetPair(uVar15,uVar1,uVar9 & 1);
    uVar15 = *(undefined8 *)(param_1 + 0x30);
    uVar1 = *(undefined8 *)(param_1 + 0x38);
    uVar9 = Buff_manager_IsBuffActive(lVar10,2);
    Buff_Menu_Btn_SetPair(uVar15,uVar1,uVar9 & 1);
    uVar15 = *(undefined8 *)(param_1 + 0x40);
    uVar1 = *(undefined8 *)(param_1 + 0x48);
    uVar9 = Buff_manager_IsBuffActive(lVar10,0);
    Buff_Menu_Btn_SetPair(uVar15,uVar1,uVar9 & 1);
    uVar15 = *(undefined8 *)(param_1 + 0x50);
    uVar1 = *(undefined8 *)(param_1 + 0x58);
    uVar9 = Buff_manager_get_IsSuperBuff(lVar10);
    Buff_Menu_Btn_SetPair(uVar1,uVar15,uVar9 & 1);
    uVar15 = *(undefined8 *)(param_1 + 0x60);
    if (*(int *)(*(long *)puVar3 + 0xe4) == 0) {
      func_0x029f5bd0();
    }
    auVar19 = Object_op_Equality_0x6000dec(uVar15,0,0);
    uVar12 = auVar19._8_8_;
    if ((auVar19._0_8_ & 1) == 0) {
      if (cRam000000000625c0bd == '\0') {
        func_0x029f5a50(PTR_DAT_05e5d920);
        cRam000000000625c0bd = '\x01';
        uVar12 = extraout_x1;
      }
      puVar3 = PTR_DAT_05e5d920;
      lVar13 = *(long *)PTR_DAT_05e5d920;
      if (*(int *)(lVar13 + 0xe4) == 0) {
        func_0x029f5bd0();
        lVar13 = *(long *)puVar3;
        uVar12 = extraout_x1_00;
      }
      if (*(char *)(*(long *)(lVar13 + 0xb8) + 0xb) == '\0') {
        uVar16 = 0;
        fVar17 = 3.4028235e+38;
        while( true ) {
          fVar18 = fVar17;
          lVar13 = *(long *)puVar5;
          if (*(int *)(lVar13 + 0xe4) == 0) {
            func_0x029f5bd0();
            lVar13 = *(long *)puVar5;
            uVar12 = extraout_x1_01;
          }
          auVar19._8_8_ = uVar12;
          auVar19._0_8_ = lVar13;
          lVar14 = **(long **)(lVar13 + 0xb8);
          if (lVar14 == 0) goto LAB_02c37fe0;
          if ((long)*(int *)(lVar14 + 0x18) <= (long)uVar16) break;
          if (*(int *)(lVar13 + 0xe4) == 0) {
            auVar19 = func_0x029f5bd0();
            lVar14 = **(long **)(*(long *)puVar5 + 0xb8);
            if (lVar14 == 0) goto LAB_02c37fe0;
          }
          if (*(uint *)(lVar14 + 0x18) <= uVar16) {
                    /* WARNING: Subroutine does not return */
            Throw_Index_Wrapper();
          }
          fVar17 = (float)Buff_manager_GetBuffRemainingTime
                                    (lVar10,*(undefined4 *)(lVar14 + uVar16 * 4 + 0x20));
          uVar16 = uVar16 + 1;
          bVar6 = false;
          bVar7 = true;
          bVar8 = false;
          if (fVar17 < fVar18) {
            bVar6 = false;
            bVar7 = false;
            bVar8 = true;
            if (!NAN(fVar17)) {
              bVar6 = fVar17 < 0.0;
              bVar7 = fVar17 == 0.0;
              bVar8 = false;
            }
          }
          uVar12 = extraout_x1_02;
          if (bVar7 || bVar6 != bVar8) {
            fVar17 = fVar18;
          }
        }
        plVar11 = *(long **)(param_1 + 0x60);
        if (fVar18 == 3.4028235e+38) {
          lVar10 = *(long *)PTR_DAT_05e59050;
        }
        else {
          if (*(int *)(*(long *)puVar4 + 0xe4) == 0) {
            func_0x029f5bd0();
          }
          lVar10 = Buff_manager_FormatRemaining(fVar18);
          lVar13 = lVar10;
        }
        auVar19._8_8_ = lVar10;
        auVar19._0_8_ = lVar13;
        if (plVar11 == (long *)0x0) goto LAB_02c37fe0;
        uVar15 = *(undefined8 *)(*plVar11 + 0x560);
        UNRECOVERED_JUMPTABLE = *(code **)(*plVar11 + 0x558);
      }
      else {
        plVar11 = *(long **)(param_1 + 0x60);
        auVar2._8_8_ = 0;
        auVar2._0_8_ = uVar12;
        auVar19 = auVar2 << 0x40;
        if (plVar11 == (long *)0x0) {
LAB_02c37fe0:
                    /* WARNING: Subroutine does not return */
          Throw_NullReference_Wrapper(auVar19._0_8_,auVar19._8_8_);
        }
        lVar10 = *(long *)PTR_DAT_05e59050;
        uVar15 = *(undefined8 *)(*plVar11 + 0x560);
        UNRECOVERED_JUMPTABLE = *(code **)(*plVar11 + 0x558);
      }
                    /* WARNING: Could not recover jumptable at 0x02c37fbc. Too many branches */
                    /* WARNING: Treating indirect jump as call */
      (*UNRECOVERED_JUMPTABLE)(plVar11,lVar10,uVar15);
      return;
    }
  }
  return;
}

