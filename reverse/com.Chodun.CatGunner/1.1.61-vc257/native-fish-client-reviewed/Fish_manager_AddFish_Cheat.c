/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b5f6f0, Ghidra VA 02c5f6f0. */

void Fish_manager_AddFish_Cheat(long param_1,uint param_2)

{
  uint uVar1;
  long lVar2;
  ulong uVar3;
  long lVar4;
  long lVar5;
  undefined8 uVar6;
  
  if ((bRam000000000625c210 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e63108);
    func_0x029f5a50(PTR_DAT_05e62fe8);
    func_0x029f5a50(PTR_DAT_05e591c0);
    bRam000000000625c210 = 1;
  }
  lVar2 = *(long *)(param_1 + 0x90);
  if (lVar2 != 0) {
    uVar1 = *(uint *)(lVar2 + 0x18);
    if (0x13 < (int)uVar1) {
      uVar6 = Alarm_get_MaxFish_0x60012ec(0);
      UI_manager_Alert_0x6000602(uVar6,0);
      return;
    }
    lVar4 = *(long *)(lVar2 + 0x10);
    lVar5 = *(long *)PTR_DAT_05e63108;
    if (0xb < (int)param_2) {
      param_2 = 0xc;
    }
    *(int *)(lVar2 + 0x1c) = *(int *)(lVar2 + 0x1c) + 1;
    if (lVar4 != 0) {
      param_2 = param_2 & ((int)param_2 >> 0x1f ^ 0xffffffffU);
      if (uVar1 < *(uint *)(lVar4 + 0x18)) {
        *(uint *)(lVar2 + 0x18) = uVar1 + 1;
        *(uint *)(lVar4 + (long)(int)uVar1 * 4 + 0x20) = param_2;
      }
      else {
        func_0x044f7a10(lVar2,param_2,
                        *(undefined8 *)(*(long *)(*(long *)(lVar5 + 0x20) + 0xc0) + 0x70));
      }
      lVar2 = *(long *)(param_1 + 0xa8);
      if (lVar2 != 0) {
        (**(code **)(lVar2 + 0x18))(*(undefined8 *)(lVar2 + 0x40),*(undefined8 *)(lVar2 + 0x28));
      }
      Fish_manager_UpdateStatTexts(param_1);
      Fish_manager_RefreshCatStats();
      uVar6 = *(undefined8 *)(param_1 + 0xa0);
      if (*(int *)(*(long *)PTR_DAT_05e591c0 + 0xe4) == 0) {
        func_0x029f5bd0();
      }
      uVar3 = Object_op_Inequality_0x6000ded(uVar6,0,0);
      if ((uVar3 & 1) != 0) {
        if (*(long *)(param_1 + 0xa0) == 0) goto LAB_02c5f848;
        Fish_Tank_SpawnFish(*(long *)(param_1 + 0xa0),param_2);
      }
      Fish_manager_ShowNewFishPopup(param_1,param_2);
      Fish_manager_TryStartAutoMerge(param_1);
      return;
    }
  }
LAB_02c5f848:
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

