/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b5e634, Ghidra VA 02c5e634. */

void Fish_manager_FreeGacha_RewardGet(long param_1)

{
  uint uVar1;
  undefined4 uVar2;
  ulong uVar3;
  long lVar4;
  long lVar5;
  long lVar6;
  undefined8 uVar7;
  
  if ((bRam000000000625c206 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e63108);
    func_0x029f5a50(PTR_DAT_05e62fe8);
    func_0x029f5a50(PTR_DAT_05e591c0);
    bRam000000000625c206 = 1;
  }
  if (*(long *)(param_1 + 0x90) != 0) {
    if (0x13 < *(int *)(*(long *)(param_1 + 0x90) + 0x18)) {
      uVar7 = Alarm_get_MaxFish_0x60012ec(0);
      UI_manager_Alert_0x6000602(uVar7,0);
      return;
    }
    uVar2 = Fish_manager_RollGrade_0x600099a(param_1,0);
    lVar4 = *(long *)(param_1 + 0x90);
    if (lVar4 != 0) {
      lVar5 = *(long *)(lVar4 + 0x10);
      lVar6 = *(long *)PTR_DAT_05e63108;
      *(int *)(lVar4 + 0x1c) = *(int *)(lVar4 + 0x1c) + 1;
      if (lVar5 != 0) {
        uVar1 = *(uint *)(lVar4 + 0x18);
        if (uVar1 < *(uint *)(lVar5 + 0x18)) {
          *(uint *)(lVar4 + 0x18) = uVar1 + 1;
          *(undefined4 *)(lVar5 + (long)(int)uVar1 * 4 + 0x20) = uVar2;
        }
        else {
          func_0x044f7a10(lVar4,uVar2,
                          *(undefined8 *)(*(long *)(*(long *)(lVar6 + 0x20) + 0xc0) + 0x70));
        }
        lVar4 = *(long *)(param_1 + 0xa8);
        if (lVar4 != 0) {
          (**(code **)(lVar4 + 0x18))(*(undefined8 *)(lVar4 + 0x40),*(undefined8 *)(lVar4 + 0x28));
        }
        Fish_manager_UpdateStatTexts_0x600099f(param_1);
        Fish_manager_RefreshCatStats_0x600098e();
        uVar7 = *(undefined8 *)(param_1 + 0xa0);
        if (*(int *)(*(long *)PTR_DAT_05e591c0 + 0xe4) == 0) {
          func_0x029f5bd0();
        }
        uVar3 = Object_op_Inequality_0x6000ded(uVar7,0,0);
        if ((uVar3 & 1) != 0) {
          if (*(long *)(param_1 + 0xa0) == 0) goto LAB_02c5e7f8;
          Fish_Tank_SpawnFish_0x60009f9(*(long *)(param_1 + 0xa0),uVar2);
        }
        Fish_manager_ShowNewFishPopup_0x600099e(param_1,uVar2);
        if (cRam000000000625ba57 == '\0') {
          func_0x029f5a50(PTR_DAT_05e5dd70);
          cRam000000000625ba57 = '\x01';
        }
        if (**(long **)(*(long *)PTR_DAT_05e5dd70 + 0xb8) != 0) {
          Sound_manager_PlaySfx_0x600054a
                    (0x3f800000,**(long **)(*(long *)PTR_DAT_05e5dd70 + 0xb8),2,0,0);
          *(int *)(param_1 + 0x78) = *(int *)(param_1 + 0x78) + 1;
          Fish_manager_Gacha_Btn_UI_Reload_0x600099c(param_1);
          Fish_manager_TryStartAutoMerge_0x6000994(param_1);
          return;
        }
      }
    }
  }
LAB_02c5e7f8:
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

