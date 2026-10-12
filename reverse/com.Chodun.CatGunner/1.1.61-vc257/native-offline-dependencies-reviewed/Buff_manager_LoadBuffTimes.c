/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b379f4, Ghidra VA 02c379f4. */

void Buff_manager_LoadBuffTimes(float param_1,float param_2,float param_3,long param_4)

{
  uint uVar1;
  int iVar2;
  undefined *puVar3;
  undefined *puVar4;
  ulong uVar5;
  long lVar6;
  undefined8 uVar7;
  float fVar8;
  float fVar9;
  
  if ((bRam000000000625c076 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e5d338);
    func_0x029f5a50(PTR_DAT_05e591c0);
    func_0x029f5a50(PTR_DAT_05e5d4e8);
    bRam000000000625c076 = 1;
  }
  lVar6 = *(long *)(param_4 + 0x38);
  fVar8 = 900.0;
  if (param_1 <= 900.0) {
    fVar8 = param_1;
  }
  fVar9 = 0.0;
  if (0.0 <= param_1) {
    fVar9 = fVar8;
  }
  if (lVar6 == 0) {
LAB_02c37ba8:
                    /* WARNING: Subroutine does not return */
    Throw_NullReference_Wrapper();
  }
  uVar1 = *(uint *)(lVar6 + 0x18);
  if ((uVar1 != 0) && (*(float *)(lVar6 + 0x20) = fVar9, uVar1 != 1)) {
    fVar8 = 900.0;
    if (param_2 <= 900.0) {
      fVar8 = param_2;
    }
    fVar9 = 0.0;
    if (0.0 <= param_2) {
      fVar9 = fVar8;
    }
    *(float *)(lVar6 + 0x24) = fVar9;
    if (2 < uVar1) {
      iVar2 = *(int *)(*(long *)PTR_DAT_05e5d338 + 0xe4);
      fVar8 = 900.0;
      if (param_3 <= 900.0) {
        fVar8 = param_3;
      }
      fVar9 = 0.0;
      if (0.0 <= param_3) {
        fVar9 = fVar8;
      }
      *(float *)(lVar6 + 0x28) = fVar9;
      if (iVar2 == 0) {
        func_0x029f5bd0();
      }
      puVar4 = PTR_DAT_05e5d4e8;
      Gamemanager_InvalidateMoneyCache_0x6000071(0);
      uVar5 = Buff_manager_AnyBuffRunning(param_4);
      if ((uVar5 & 1) != 0) {
        Buff_manager_TryStartCoroutine(param_4);
      }
      puVar3 = PTR_DAT_05e591c0;
      Buff_manager_Btn_UI_Reload(param_4);
      lVar6 = *(long *)puVar4;
      if (*(int *)(lVar6 + 0xe4) == 0) {
        func_0x029f5bd0();
        lVar6 = *(long *)puVar4;
      }
      uVar7 = **(undefined8 **)(lVar6 + 0xb8);
      if (*(int *)(*(long *)puVar3 + 0xe4) == 0) {
        func_0x029f5bd0(*(long *)puVar3);
      }
      uVar5 = Object_op_Inequality_0x6000ded(uVar7,0,0);
      if ((uVar5 & 1) == 0) {
        return;
      }
      lVar6 = *(long *)puVar4;
      if (*(int *)(lVar6 + 0xe4) == 0) {
        func_0x029f5bd0();
        lVar6 = *(long *)puVar4;
      }
      if (**(long **)(lVar6 + 0xb8) != 0) {
        Upgrade_manager_UI_Reload_0x6000f8e(**(long **)(lVar6 + 0xb8),0);
        return;
      }
      goto LAB_02c37ba8;
    }
  }
                    /* WARNING: Subroutine does not return */
  Throw_Index_Wrapper();
}

