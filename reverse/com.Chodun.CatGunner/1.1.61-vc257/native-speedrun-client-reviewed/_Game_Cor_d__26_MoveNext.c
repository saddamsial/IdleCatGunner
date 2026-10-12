/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2baafd0, Ghidra VA 02caafd0. */

undefined8 _Game_Cor_d__26_MoveNext(long param_1)

{
  undefined *puVar1;
  long lVar2;
  long lVar3;
  undefined4 uVar4;
  float fVar5;
  float fVar6;
  
  if ((bRam000000000625c508 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e5d338);
    bRam000000000625c508 = 1;
  }
  lVar3 = *(long *)(param_1 + 0x20);
  if (*(int *)(param_1 + 0x10) == 1) {
    *(undefined4 *)(param_1 + 0x10) = 0xffffffff;
    if (lVar3 == 0) goto LAB_02cab0f0;
  }
  else {
    if (*(int *)(param_1 + 0x10) != 0) {
      return 0;
    }
    *(undefined4 *)(param_1 + 0x10) = 0xffffffff;
    if (lVar3 == 0) goto LAB_02cab0f0;
    uVar4 = *(undefined4 *)(lVar3 + 100);
    *(undefined4 *)(lVar3 + 0x60) = uVar4;
    if ((*(long *)(lVar3 + 0x80) == 0) ||
       (SpeedRun_Slider_Time_Reload(uVar4,uVar4), *(long *)(lVar3 + 0x80) == 0)) goto LAB_02cab0f0;
    SpeedRun_Slider_Value_Reload(0);
  }
  puVar1 = PTR_DAT_05e5d338;
  fVar6 = *(float *)(lVar3 + 0x60);
  if (0.0 < fVar6) {
    lVar2 = *(long *)PTR_DAT_05e5d338;
    if (*(int *)(lVar2 + 0xe4) == 0) {
      func_0x029f5bd0();
      lVar2 = *(long *)puVar1;
      fVar6 = *(float *)(lVar3 + 0x60);
    }
    if (**(char **)(lVar2 + 0xb8) != '\0') {
      fVar5 = (float)Time_get_deltaTime_0x6000ee5(0);
      *(float *)(lVar3 + 0x60) = fVar6 - fVar5;
      if (*(long *)(lVar3 + 0x80) != 0) {
        SpeedRun_Slider_Time_Reload(fVar6 - fVar5,*(undefined4 *)(lVar3 + 100));
        *(undefined8 *)(param_1 + 0x18) = 0;
        Managed_WriteBarrier((undefined8 *)(param_1 + 0x18),0);
        *(undefined4 *)(param_1 + 0x10) = 1;
        return 1;
      }
LAB_02cab0f0:
                    /* WARNING: Subroutine does not return */
      Throw_NullReference_Wrapper();
    }
  }
  if (fVar6 <= 0.0) {
    SpeedRun_manager_Game_Fail(lVar3);
  }
  return 0;
}

