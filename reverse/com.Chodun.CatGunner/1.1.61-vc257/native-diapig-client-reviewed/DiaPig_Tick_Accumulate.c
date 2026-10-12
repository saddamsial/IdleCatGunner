/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b8cc74, Ghidra VA 02c8cc74. */

/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */

void DiaPig_Tick_Accumulate(long param_1)

{
  int iVar1;
  undefined *puVar2;
  undefined *puVar3;
  undefined *puVar4;
  int iVar5;
  int iVar6;
  undefined4 uVar7;
  undefined8 uVar8;
  ulong uVar9;
  long lVar10;
  undefined8 *puVar11;
  undefined8 uVar12;
  double dVar13;
  double dVar14;
  undefined8 uStack_48;
  
  if ((bRam000000000625c3bb & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e597d0);
    func_0x029f5a50(PTR_DAT_05e59000);
    func_0x029f5a50(PTR_DAT_05e5d920);
    func_0x029f5a50(PTR_DAT_05e5a180);
    func_0x029f5a50(PTR_DAT_05e5d3c0);
    func_0x029f5a50(PTR_DAT_05e63f48);
    bRam000000000625c3bb = 1;
  }
  puVar3 = PTR_DAT_05e5d3c0;
  puVar2 = PTR_DAT_05e597d0;
  uStack_48 = 0;
  if (*(int *)(param_1 + 0x20) < *(int *)(param_1 + 0x24)) {
    if (*(int *)(*(long *)PTR_DAT_05e5d3c0 + 0xe4) == 0) {
      func_0x029f5bd0();
    }
    uVar8 = Time_manager_get_UtcNow_0x6000578(0);
    puVar11 = (undefined8 *)(param_1 + 0x38);
    uVar12 = *puVar11;
    if (*(int *)(*(long *)puVar2 + 0xe4) == 0) {
      func_0x029f5bd0(*(long *)puVar2);
    }
    uVar9 = DateTime_op_GreaterThan_0x600063f(uVar12,uVar8,0);
    if ((uVar9 & 1) != 0) {
      DiaPig_SetLastTick(param_1,uVar8);
      return;
    }
    uVar12 = *puVar11;
    if (*(int *)(*(long *)puVar2 + 0xe4) == 0) {
      func_0x029f5bd0();
    }
    uStack_48 = DateTime_op_Subtraction_0x600063a(uVar8,uVar12,0);
    if (*(int *)(*(long *)PTR_DAT_05e5a180 + 0xe4) == 0) {
      func_0x029f5bd0(*(long *)PTR_DAT_05e5a180);
    }
    dVar13 = (double)TimeSpan_get_TotalSeconds_0x6000a76(&uStack_48,0);
    if (*(int *)(*(long *)puVar3 + 0xe4) == 0) {
      func_0x029f5bd0();
    }
    dVar14 = (double)Time_manager_get_MonoSec_0x6000569(0);
    dVar14 = dVar14 - *(double *)(param_1 + 0x40);
    if (dVar13 - dVar14 <= _UNK_0116f908) {
      if (*(int *)(*(long *)PTR_DAT_05e59000 + 0xe4) == 0) {
        func_0x029f5bd0();
      }
      dVar14 = (double)Math_Min_0x600088d(dVar13,dVar14,0);
    }
    else {
      if (*(int *)(*(long *)puVar3 + 0xe4) == 0) {
        func_0x029f5bd0();
      }
      uVar9 = Time_manager_get_CanGrantTimedReward_0x6000572(0);
      if ((uVar9 & 1) != 0) {
        if (*(int *)(*(long *)puVar3 + 0xe4) == 0) {
          func_0x029f5bd0();
        }
        puVar4 = PTR_DAT_05e63f48;
        iVar5 = Time_manager_PendingCount_0x6000565(*(undefined8 *)PTR_DAT_05e63f48,0);
        if (iVar5 < 3) {
          if (*(int *)(*(long *)puVar3 + 0xe4) == 0) {
            func_0x029f5bd0();
          }
          Time_manager_RecordGain_0x6000576(*(undefined8 *)puVar4,0);
          dVar14 = dVar13;
        }
      }
    }
    puVar4 = PTR_DAT_05e5d920;
    iVar5 = -0x80000000;
    if (dVar14 / 60.0 != INFINITY) {
      iVar5 = (int)(dVar14 / 60.0);
    }
    if (0 < iVar5) {
      if (*(int *)(*(long *)PTR_DAT_05e5d920 + 0xe4) == 0) {
        func_0x029f5bd0();
      }
      if (cRam000000000625b960 == '\0') {
        func_0x029f5a50(PTR_DAT_05e5d920);
        cRam000000000625b960 = '\x01';
      }
      lVar10 = *(long *)puVar4;
      if (*(int *)(lVar10 + 0xe4) == 0) {
        func_0x029f5bd0();
        lVar10 = *(long *)puVar4;
      }
      if (**(long **)(lVar10 + 0xb8) == 0) {
                    /* WARNING: Subroutine does not return */
        Throw_NullReference_Wrapper();
      }
      iVar6 = Shop_manager_DiaPig_TickAmount_0x6000db6();
      iVar1 = *(int *)(param_1 + 0x20);
      uVar7 = *(undefined4 *)(param_1 + 0x24);
      if (*(int *)(*(long *)PTR_DAT_05e59000 + 0xe4) == 0) {
        func_0x029f5bd0(*(long *)PTR_DAT_05e59000);
      }
      uVar7 = Math_Min_0x600088f(iVar1 + iVar6 * iVar5,uVar7,0);
      *(undefined4 *)(param_1 + 0x20) = uVar7;
      if (*(int *)(*(long *)puVar2 + 0xe4) == 0) {
        func_0x029f5bd0(*(long *)puVar2);
      }
      uVar8 = DateTime_AddSeconds_0x6000600((double)(iVar5 * 0x3c),puVar11,0);
      lVar10 = *(long *)puVar3;
      *puVar11 = uVar8;
      if (*(int *)(lVar10 + 0xe4) == 0) {
        func_0x029f5bd0();
      }
      dVar13 = (double)Time_manager_get_MonoSec_0x6000569(0);
      *(double *)(param_1 + 0x40) = dVar13 - (dVar14 - (double)(iVar5 * 0x3c));
    }
  }
  return;
}

