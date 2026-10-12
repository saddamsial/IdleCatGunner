/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b064c0, Ghidra VA 02c064c0. */

undefined8
OfflineProgressManager_ComputeElapsed(undefined8 param_1,long param_2,float *param_3,float *param_4)

{
  double dVar1;
  undefined *puVar2;
  int iVar3;
  ulong uVar4;
  undefined8 uVar5;
  undefined8 uVar6;
  undefined8 uVar7;
  float fVar8;
  float fVar9;
  float fVar10;
  undefined8 uStack_58;
  undefined8 uStack_48;
  
  if ((bRam000000000625be78 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e59760);
    func_0x029f5a50(PTR_DAT_05e597d0);
    func_0x029f5a50(PTR_DAT_05e5a180);
    func_0x029f5a50(PTR_DAT_05e5d3c0);
    func_0x029f5a50(PTR_DAT_05e62030);
    func_0x029f5a50(PTR_DAT_05e62038);
    bRam000000000625be78 = 1;
  }
  uStack_48 = 0;
  uStack_58 = 0;
  *param_3 = 0.0;
  *param_4 = 0.0;
  puVar2 = PTR_DAT_05e5d3c0;
  if (param_2 == 0) {
    return 0;
  }
  if (*(int *)(*(long *)PTR_DAT_05e5d3c0 + 0xe4) == 0) {
    func_0x029f5bd0();
  }
  uVar4 = Time_manager_get_IsUsable_0x600057c(0);
  if ((uVar4 & 1) == 0) {
    uVar4 = String_IsNullOrEmpty_0x6000277(*(undefined8 *)(param_2 + 0x230),0);
    if ((uVar4 & 1) != 0) {
      return 0;
    }
    if (*(int *)(*(long *)PTR_DAT_05e597d0 + 0xe4) == 0) {
      func_0x029f5bd0();
    }
    uVar5 = DateTime_get_UtcNow_0x6000652(0);
    uVar7 = *(undefined8 *)(param_2 + 0x230);
  }
  else {
    if (*(int *)(*(long *)puVar2 + 0xe4) == 0) {
      func_0x029f5bd0();
    }
    iVar3 = Time_manager_PendingCountPrefix_0x6000566(*(undefined8 *)PTR_DAT_05e62038,0);
    if (2 < iVar3) {
      return 0;
    }
    if (*(int *)(*(long *)puVar2 + 0xe4) == 0) {
      func_0x029f5bd0();
    }
    uVar5 = Time_manager_get_UtcNow_0x6000578(0);
    uVar7 = *(undefined8 *)(param_2 + 200);
    if (*(int *)(*(long *)PTR_DAT_05e59760 + 0xe4) == 0) {
      func_0x029f5bd0(*(long *)PTR_DAT_05e59760);
    }
    uVar6 = CultureInfo_get_InvariantCulture_0x6002ba4(0);
    if (*(int *)(*(long *)PTR_DAT_05e597d0 + 0xe4) == 0) {
      func_0x029f5bd0(*(long *)PTR_DAT_05e597d0);
    }
    uVar4 = DateTime_TryParseExact_0x6000636
                      (uVar7,*(undefined8 *)PTR_DAT_05e62030,uVar6,0x80,&uStack_48,0);
    if ((uVar4 & 1) != 0) goto LAB_02c0668c;
    uVar4 = String_IsNullOrEmpty_0x6000277(*(undefined8 *)(param_2 + 0x230),0);
    if ((uVar4 & 1) != 0) {
      return 0;
    }
    uVar7 = *(undefined8 *)(param_2 + 0x230);
  }
  uStack_48 = LoadData_DateParseSafe_0x600047d(uVar7,uVar5,0);
LAB_02c0668c:
  uVar7 = uStack_48;
  if (*(int *)(*(long *)PTR_DAT_05e597d0 + 0xe4) == 0) {
    func_0x029f5bd0();
  }
  uStack_58 = DateTime_op_Subtraction_0x600063a(uVar5,uVar7,0);
  if (*(int *)(*(long *)PTR_DAT_05e5a180 + 0xe4) == 0) {
    func_0x029f5bd0(*(long *)PTR_DAT_05e5a180);
  }
  dVar1 = (double)TimeSpan_get_TotalSeconds_0x6000a76(&uStack_58,0);
  fVar10 = (float)dVar1;
  fVar8 = (float)OfflineProgressManager_EffectiveMaxOfflineSeconds(param_1);
  if (fVar10 <= fVar8) {
    fVar8 = fVar10;
  }
  fVar9 = 0.0;
  if (0.0 <= fVar10) {
    fVar9 = fVar8;
  }
  if (fVar9 < 30.0) {
    return 0;
  }
  *param_3 = fVar9;
  *param_4 = fVar10;
  return 1;
}

