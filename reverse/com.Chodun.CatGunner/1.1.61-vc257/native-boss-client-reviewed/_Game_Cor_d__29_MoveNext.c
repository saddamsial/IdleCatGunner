/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b47d58, Ghidra VA 02c47d58. */

undefined8 _Game_Cor_d__29_MoveNext(long param_1)

{
  undefined *puVar1;
  long lVar2;
  long lVar3;
  float fVar4;
  undefined8 uVar5;
  float fVar6;
  undefined8 uStack_70;
  undefined8 uStack_68;
  undefined8 uStack_60;
  undefined8 uStack_58;
  undefined8 uStack_50;
  undefined8 uStack_48;
  undefined8 uStack_40;
  undefined8 uStack_38;
  
  if ((bRam000000000625c0f1 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e5d338);
    bRam000000000625c0f1 = 1;
  }
  lVar3 = *(long *)(param_1 + 0x20);
  if (*(int *)(param_1 + 0x10) == 1) {
    *(undefined4 *)(param_1 + 0x10) = 0xffffffff;
    if (lVar3 == 0) goto LAB_02c47eb0;
  }
  else {
    if (*(int *)(param_1 + 0x10) != 0) {
      return 0;
    }
    *(undefined4 *)(param_1 + 0x10) = 0xffffffff;
    if (lVar3 == 0) goto LAB_02c47eb0;
    uVar5 = Boss_manager_GameTime_Max_return(lVar3);
    *(int *)(lVar3 + 0x80) = (int)uVar5;
    if (*(long *)(lVar3 + 0xa0) == 0) goto LAB_02c47eb0;
    Boss_Slider_Time_Reload(uVar5,*(undefined4 *)(lVar3 + 0x84));
    if (((*(long *)(lVar3 + 0x110) == 0) ||
        (lVar2 = *(long *)(*(long *)(lVar3 + 0x110) + 0x20), lVar2 == 0)) ||
       (*(long *)(lVar3 + 0xa0) == 0)) goto LAB_02c47eb0;
    uStack_48 = *(undefined8 *)(lVar2 + 0x30);
    uStack_50 = *(undefined8 *)(lVar2 + 0x28);
    uStack_38 = *(undefined8 *)(lVar2 + 0x40);
    uStack_40 = *(undefined8 *)(lVar2 + 0x38);
    uStack_68 = *(undefined8 *)(lVar2 + 0x50);
    uStack_70 = *(undefined8 *)(lVar2 + 0x48);
    uStack_58 = *(undefined8 *)(lVar2 + 0x60);
    uStack_60 = *(undefined8 *)(lVar2 + 0x58);
    Boss_Slider_Value_Reload(*(long *)(lVar3 + 0xa0),&uStack_50,&uStack_70);
  }
  puVar1 = PTR_DAT_05e5d338;
  fVar6 = *(float *)(lVar3 + 0x80);
  if (0.0 < fVar6) {
    lVar2 = *(long *)PTR_DAT_05e5d338;
    if (*(int *)(lVar2 + 0xe4) == 0) {
      func_0x029f5bd0();
      lVar2 = *(long *)puVar1;
      fVar6 = *(float *)(lVar3 + 0x80);
    }
    if (**(char **)(lVar2 + 0xb8) != '\0') {
      fVar4 = (float)Time_get_deltaTime_0x6000ee5(0);
      *(float *)(lVar3 + 0x80) = fVar6 - fVar4;
      if (*(long *)(lVar3 + 0xa0) != 0) {
        Boss_Slider_Time_Reload(fVar6 - fVar4,*(undefined4 *)(lVar3 + 0x84));
        *(undefined8 *)(param_1 + 0x18) = 0;
        Managed_WriteBarrier((undefined8 *)(param_1 + 0x18),0);
        *(undefined4 *)(param_1 + 0x10) = 1;
        return 1;
      }
LAB_02c47eb0:
                    /* WARNING: Subroutine does not return */
      Throw_NullReference_Wrapper();
    }
  }
  if (fVar6 <= 0.0) {
    Boss_manager_Game_Fail(lVar3);
  }
  return 0;
}

