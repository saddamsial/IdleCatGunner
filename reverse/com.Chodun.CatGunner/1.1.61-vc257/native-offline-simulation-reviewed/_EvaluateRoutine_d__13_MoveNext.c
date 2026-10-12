/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b06c88, Ghidra VA 02c06c88. */

undefined8 _EvaluateRoutine_d__13_MoveNext(long param_1)

{
  int iVar1;
  undefined *puVar2;
  float fVar3;
  undefined8 uVar4;
  ulong uVar5;
  undefined4 uVar6;
  long lVar7;
  long lVar8;
  undefined8 uVar9;
  undefined8 uVar10;
  float fStack_4c;
  undefined8 uStack_48;
  
  if ((bRam000000000625be7b & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e62050);
    func_0x029f5a50(PTR_DAT_05e62068);
    func_0x029f5a50(PTR_DAT_05e62040);
    func_0x029f5a50(PTR_DAT_05e5d3c0);
    func_0x029f5a50(PTR_DAT_05e5d368);
    func_0x029f5a50(PTR_DAT_05e62070);
    bRam000000000625be7b = 1;
  }
  puVar2 = PTR_DAT_05e5d3c0;
  iVar1 = *(int *)(param_1 + 0x10);
  lVar8 = *(long *)(param_1 + 0x20);
  uStack_48 = 0;
  if (iVar1 < 2) {
    if (iVar1 != 0) {
      if (iVar1 != 1) {
        return 0;
      }
      *(undefined4 *)(param_1 + 0x10) = 0xffffffff;
      if (*(int *)(*(long *)puVar2 + 0xe4) == 0) {
        func_0x029f5bd0();
      }
      uVar4 = Time_manager_WaitForCheck_0x6000573(0x40a00000,0);
      *(undefined8 *)(param_1 + 0x18) = uVar4;
      Managed_WriteBarrier((undefined8 *)(param_1 + 0x18),uVar4);
      uVar6 = 2;
LAB_02c06f40:
      *(undefined4 *)(param_1 + 0x10) = uVar6;
      return 1;
    }
    *(undefined4 *)(param_1 + 0x10) = 0xffffffff;
    if (lVar8 == 0) goto LAB_02c06fd0;
    *(undefined8 *)(lVar8 + 0x38) = 0;
    Managed_WriteBarrier((undefined8 *)(lVar8 + 0x38),0);
    *(undefined8 *)(lVar8 + 0x40) = *(undefined8 *)(param_1 + 0x28);
    Managed_WriteBarrier();
    uVar5 = OfflineProgressManager_ComputeElapsed
                      (lVar8,*(undefined8 *)(param_1 + 0x28),(long)&uStack_48 + 4,&uStack_48);
    if ((uVar5 & 1) != 0) {
      if (**(long **)(*(long *)PTR_DAT_05e5d368 + 0xb8) != 0) {
        UI_manager_Loading_On_0x60005fd(**(long **)(*(long *)PTR_DAT_05e5d368 + 0xb8),0);
      }
      *(undefined8 *)(param_1 + 0x18) = 0;
      Managed_WriteBarrier((undefined8 *)(param_1 + 0x18),0);
      *(undefined4 *)(param_1 + 0x10) = 1;
      return 1;
    }
    lVar7 = *(long *)(param_1 + 0x30);
    if (lVar7 != 0) {
      (**(code **)(lVar7 + 0x18))
                (*(undefined8 *)(lVar7 + 0x40),*(undefined8 *)(param_1 + 0x28),
                 *(undefined8 *)(lVar7 + 0x28));
    }
  }
  else {
    if (iVar1 == 2) {
      *(undefined4 *)(param_1 + 0x10) = 0xffffffff;
      if (lVar8 == 0) goto LAB_02c06fd0;
      uVar5 = OfflineProgressManager_ComputeElapsed
                        (lVar8,*(undefined8 *)(param_1 + 0x28),(long)&uStack_48 + 4,&uStack_48);
      if ((uVar5 & 1) != 0) {
        fVar3 = uStack_48._4_4_;
        fStack_4c = uStack_48._4_4_ / 3600.0;
        uVar4 = func_0x029f5bd8(*(undefined8 *)(PTR_DAT_05e58a10 + 0x78),&fStack_4c);
        uVar4 = String_Format_0x600029c(*(undefined8 *)PTR_DAT_05e62070,uVar4,0);
        if (*(int *)(*(long *)PTR_DAT_05e5d3c0 + 0xe4) == 0) {
          func_0x029f5bd0(*(long *)PTR_DAT_05e5d3c0);
        }
        Time_manager_RecordGain_0x6000576(uVar4,0);
        uVar9 = *(undefined8 *)(param_1 + 0x28);
        uVar6 = (undefined4)uStack_48;
        uVar4 = func_0x029f5cec(*(undefined8 *)PTR_DAT_05e62050);
        func_0x03d323cc(uVar4,lVar8,*(undefined8 *)PTR_DAT_05e62068,0);
        uVar10 = *(undefined8 *)(lVar8 + 0x28);
        if (*(int *)(*(long *)PTR_DAT_05e62040 + 0xe4) == 0) {
          func_0x029f5bd0();
        }
        uVar4 = OfflineProgressSimulator_RunCoroutine(fVar3,uVar6,uVar10,uVar9,uVar4);
        *(undefined8 *)(param_1 + 0x18) = uVar4;
        Managed_WriteBarrier((undefined8 *)(param_1 + 0x18),uVar4);
        uVar6 = 3;
        goto LAB_02c06f40;
      }
    }
    else {
      if (iVar1 != 3) {
        return 0;
      }
      *(undefined4 *)(param_1 + 0x10) = 0xffffffff;
      if (lVar8 == 0) {
LAB_02c06fd0:
                    /* WARNING: Subroutine does not return */
        Throw_NullReference_Wrapper(0);
      }
      lVar7 = *(long *)(lVar8 + 0x38);
      if (lVar7 != 0) {
        if (*(int *)(*(long *)PTR_DAT_05e62040 + 0xe4) == 0) {
          func_0x029f5bd0();
        }
        OfflineProgressSimulator_ApplyToManagers(lVar7);
      }
    }
    lVar7 = *(long *)(param_1 + 0x30);
    if (lVar7 != 0) {
      (**(code **)(lVar7 + 0x18))
                (*(undefined8 *)(lVar7 + 0x40),*(undefined8 *)(param_1 + 0x28),
                 *(undefined8 *)(lVar7 + 0x28));
    }
    if (**(long **)(*(long *)PTR_DAT_05e5d368 + 0xb8) != 0) {
      UI_manager_Loading_Off_0x60005fe(**(long **)(*(long *)PTR_DAT_05e5d368 + 0xb8),0);
    }
  }
  OfflineProgressManager_ShowResult(lVar8);
  return 0;
}

