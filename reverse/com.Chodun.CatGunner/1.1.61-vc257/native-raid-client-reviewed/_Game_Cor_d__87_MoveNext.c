/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b5a538, Ghidra VA 02c5a538. */

undefined8 _Game_Cor_d__87_MoveNext(long param_1)

{
  undefined *puVar1;
  long lVar2;
  long lVar3;
  float fVar4;
  float fVar5;
  
  if ((bRam000000000625c1d4 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e5d338);
    func_0x029f5a50(PTR_DAT_05e5e0b8);
    bRam000000000625c1d4 = 1;
  }
  puVar1 = PTR_DAT_05e5e0b8;
  lVar3 = *(long *)(param_1 + 0x20);
  if (*(int *)(param_1 + 0x10) == 1) {
    *(undefined4 *)(param_1 + 0x10) = 0xffffffff;
    if (lVar3 == 0) goto LAB_02c5a688;
  }
  else {
    if (*(int *)(param_1 + 0x10) != 0) {
      return 0;
    }
    *(undefined4 *)(param_1 + 0x10) = 0xffffffff;
    if (*(int *)(*(long *)puVar1 + 0xe4) == 0) {
      func_0x029f5bd0();
    }
    fVar4 = (float)PlusPack_get_Raid_Time_Bonus_Now_0x6000d2e(0);
    if (lVar3 == 0) goto LAB_02c5a688;
    fVar4 = fVar4 + 60.0;
    *(float *)(lVar3 + 0x9c) = fVar4;
    *(float *)(lVar3 + 0xa0) = fVar4;
    if (*(long *)(lVar3 + 0xa8) == 0) goto LAB_02c5a688;
    Raid_Ingame_UI_Time_Reload(fVar4,fVar4,*(long *)(lVar3 + 0xa8),0);
  }
  puVar1 = PTR_DAT_05e5d338;
  fVar4 = *(float *)(lVar3 + 0x9c);
  if (0.0 < fVar4) {
    lVar2 = *(long *)PTR_DAT_05e5d338;
    if (*(int *)(lVar2 + 0xe4) == 0) {
      func_0x029f5bd0();
      lVar2 = *(long *)puVar1;
      fVar4 = *(float *)(lVar3 + 0x9c);
    }
    if (**(char **)(lVar2 + 0xb8) != '\0') {
      fVar5 = (float)Time_get_deltaTime_0x6000ee5(0);
      *(float *)(lVar3 + 0x9c) = fVar4 - fVar5;
      if (*(long *)(lVar3 + 0xa8) != 0) {
        Raid_Ingame_UI_Time_Reload
                  (fVar4 - fVar5,*(undefined4 *)(lVar3 + 0xa0),*(long *)(lVar3 + 0xa8),0);
        *(undefined8 *)(param_1 + 0x18) = 0;
        Managed_WriteBarrier((undefined8 *)(param_1 + 0x18),0);
        *(undefined4 *)(param_1 + 0x10) = 1;
        return 1;
      }
LAB_02c5a688:
                    /* WARNING: Subroutine does not return */
      Throw_NullReference_Wrapper();
    }
  }
  if (fVar4 <= 0.0) {
    Raid_manager_Game_End(lVar3,0);
  }
  return 0;
}

