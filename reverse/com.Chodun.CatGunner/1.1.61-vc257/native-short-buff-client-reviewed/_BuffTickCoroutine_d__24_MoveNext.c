/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b38290, Ghidra VA 02c38290. */

undefined8 _BuffTickCoroutine_d__24_MoveNext(long param_1)

{
  undefined *puVar1;
  ulong uVar2;
  long lVar3;
  long lVar4;
  long lVar5;
  float fVar6;
  float fVar7;
  
  if ((bRam000000000625c07e & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e5d4c0);
    bRam000000000625c07e = 1;
  }
  if (*(uint *)(param_1 + 0x10) < 2) {
    lVar5 = *(long *)(param_1 + 0x20);
    *(undefined4 *)(param_1 + 0x10) = 0xffffffff;
    if (lVar5 == 0) {
LAB_02c38408:
                    /* WARNING: Subroutine does not return */
      Throw_NullReference_Wrapper();
    }
    uVar2 = Buff_manager_AnyBuffRunning(lVar5);
    if ((uVar2 & 1) != 0) {
      if (cRam000000000625c0bd == '\0') {
        func_0x029f5a50(PTR_DAT_05e5d920);
        cRam000000000625c0bd = '\x01';
      }
      puVar1 = PTR_DAT_05e5d920;
      lVar3 = *(long *)PTR_DAT_05e5d920;
      if (*(int *)(lVar3 + 0xe4) == 0) {
        func_0x029f5bd0();
        lVar3 = *(long *)puVar1;
      }
      if (*(char *)(*(long *)(lVar3 + 0xb8) + 0xb) == '\0') {
        fVar6 = (float)Time_get_deltaTime_0x6000ee5(0);
        puVar1 = PTR_DAT_05e5d4c0;
        uVar2 = 0;
        lVar3 = *(long *)PTR_DAT_05e5d4c0;
        while( true ) {
          if (*(int *)(lVar3 + 0xe4) == 0) {
            func_0x029f5bd0();
            lVar3 = *(long *)puVar1;
          }
          if ((long)*(int *)(*(long *)(lVar3 + 0xb8) + 8) <= (long)uVar2) break;
          lVar4 = *(long *)(lVar5 + 0x38);
          if (lVar4 == 0) goto LAB_02c38408;
          if (*(uint *)(lVar4 + 0x18) <= uVar2) {
                    /* WARNING: Subroutine does not return */
            Throw_Index_Wrapper();
          }
          lVar4 = lVar4 + uVar2 * 4;
          fVar7 = *(float *)(lVar4 + 0x20);
          if (0.0 < fVar7) {
            fVar7 = fVar7 - fVar6;
            if (fVar7 <= 0.0) {
              fVar7 = 0.0;
            }
            *(float *)(lVar4 + 0x20) = fVar7;
            if (fVar7 <= 0.0) {
              Buff_manager_OnBuffChanged();
              lVar3 = *(long *)puVar1;
            }
          }
          uVar2 = uVar2 + 1;
        }
      }
      Buff_manager_Btn_UI_Reload(lVar5);
      *(undefined8 *)(param_1 + 0x18) = 0;
      Managed_WriteBarrier((undefined8 *)(param_1 + 0x18),0);
      *(undefined4 *)(param_1 + 0x10) = 1;
      return 1;
    }
    *(undefined8 *)(lVar5 + 0x40) = 0;
    Managed_WriteBarrier((undefined8 *)(lVar5 + 0x40),0);
  }
  return 0;
}

