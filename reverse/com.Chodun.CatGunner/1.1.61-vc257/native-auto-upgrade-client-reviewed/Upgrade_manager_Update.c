/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2bb3754, Ghidra VA 02cb3754. */

void Upgrade_manager_Update(void)

{
  undefined *puVar1;
  undefined *puVar2;
  long lVar3;
  ulong uVar4;
  long lVar5;
  undefined8 uVar6;
  undefined4 uVar7;
  float fVar8;
  float fVar9;
  
  puVar1 = PTR_DAT_05e5d4e8;
  if ((bRam000000000625c56d & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e5d910);
    func_0x029f5a50(PTR_DAT_05e591c0);
    func_0x029f5a50(PTR_DAT_05e5d920);
    func_0x029f5a50(PTR_DAT_05e5d4e8);
    bRam000000000625c56d = 1;
  }
  lVar3 = *(long *)puVar1;
  if (*(int *)(lVar3 + 0xe4) == 0) {
    func_0x029f5bd0();
    lVar3 = *(long *)puVar1;
  }
  puVar2 = PTR_DAT_05e5d920;
  if (0.0 < *(float *)(*(long *)(lVar3 + 0xb8) + 0x10)) {
    lVar3 = *(long *)PTR_DAT_05e5d920;
    if (*(int *)(lVar3 + 0xe4) == 0) {
      func_0x029f5bd0();
      lVar3 = *(long *)puVar2;
    }
    puVar2 = PTR_DAT_05e5d910;
    if (*(char *)(*(long *)(lVar3 + 0xb8) + 10) == '\0') {
      uVar6 = **(undefined8 **)(*(long *)PTR_DAT_05e5d910 + 0xb8);
      if (*(int *)(*(long *)PTR_DAT_05e591c0 + 0xe4) == 0) {
        func_0x029f5bd0();
      }
      uVar4 = Object_op_Inequality_0x6000ded(uVar6,0,0);
      if ((uVar4 & 1) != 0) {
        if (**(long **)(*(long *)puVar2 + 0xb8) == 0) {
                    /* WARNING: Subroutine does not return */
          Throw_NullReference_Wrapper();
        }
        uVar4 = Admob_get_IsAnyAdShowing_0x6000162(**(long **)(*(long *)puVar2 + 0xb8),0);
        if ((uVar4 & 1) != 0) {
          return;
        }
      }
      lVar3 = *(long *)puVar1;
      if (*(int *)(lVar3 + 0xe4) == 0) {
        func_0x029f5bd0();
        lVar3 = *(long *)puVar1;
      }
      fVar9 = *(float *)(*(long *)(lVar3 + 0xb8) + 0x10);
      uVar7 = Time_get_deltaTime_0x6000ee5(0);
      lVar3 = *(long *)puVar1;
      lVar5 = *(long *)(lVar3 + 0xb8);
      fVar8 = (float)NEON_fminnm(uVar7,0x3f000000);
      fVar9 = fVar9 - fVar8;
      *(float *)(lVar5 + 0x10) = fVar9;
      if (fVar9 <= 0.0) {
        if (*(int *)(lVar3 + 0xe4) == 0) {
          func_0x029f5bd0();
          lVar5 = *(long *)(*(long *)puVar1 + 0xb8);
        }
        *(undefined4 *)(lVar5 + 0x10) = 0;
        SaveSystem_Save_0x600048a(0);
        lVar3 = *(long *)(*(long *)(*(long *)puVar1 + 0xb8) + 0x18);
        if (lVar3 != 0) {
                    /* WARNING: Could not recover jumptable at 0x02cb38f0. Too many branches */
                    /* WARNING: Treating indirect jump as call */
          (**(code **)(lVar3 + 0x18))(*(undefined8 *)(lVar3 + 0x40),*(undefined8 *)(lVar3 + 0x28));
          return;
        }
      }
    }
  }
  return;
}

