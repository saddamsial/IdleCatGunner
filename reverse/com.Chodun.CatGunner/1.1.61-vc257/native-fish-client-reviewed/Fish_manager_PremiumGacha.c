/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b5ea80, Ghidra VA 02c5ea80. */

void Fish_manager_PremiumGacha(long param_1)

{
  uint uVar1;
  undefined *puVar2;
  int iVar3;
  undefined4 uVar4;
  long lVar5;
  ulong uVar6;
  long lVar7;
  long lVar8;
  undefined8 uVar9;
  
  if ((bRam000000000625c207 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e5d338);
    func_0x029f5a50(PTR_DAT_05e63108);
    func_0x029f5a50(PTR_DAT_05e62fe8);
    func_0x029f5a50(PTR_DAT_05e591c0);
    bRam000000000625c207 = 1;
  }
  puVar2 = PTR_DAT_05e5d338;
  if (*(long *)(param_1 + 0x90) != 0) {
    if (0x13 < *(int *)(*(long *)(param_1 + 0x90) + 0x18)) {
      uVar9 = Alarm_get_MaxFish_0x60012ec(0);
      UI_manager_Alert_0x6000602(uVar9,0);
      return;
    }
    lVar5 = *(long *)PTR_DAT_05e5d338;
    if (*(int *)(lVar5 + 0xe4) == 0) {
      func_0x029f5bd0();
      lVar5 = *(long *)puVar2;
    }
    iVar3 = ObscuredInt_op_Implicit_0x6000412
                      (*(undefined8 *)(*(long *)(lVar5 + 0xb8) + 0x90),
                       *(undefined8 *)(*(long *)(lVar5 + 0xb8) + 0x98),0);
    if (iVar3 < 200) {
      if (cRam000000000625ba57 == '\0') {
        func_0x029f5a50(PTR_DAT_05e5dd70);
        cRam000000000625ba57 = '\x01';
      }
      if (**(long **)(*(long *)PTR_DAT_05e5dd70 + 0xb8) != 0) {
        Sound_manager_PlaySfx_0x600054a
                  (0x3f800000,**(long **)(*(long *)PTR_DAT_05e5dd70 + 0xb8),5,0,0);
        return;
      }
    }
    else {
      if (*(int *)(*(long *)puVar2 + 0xe4) == 0) {
        func_0x029f5bd0();
      }
      Gamemanager_Lose_Dia_0x600007d(200,3,0);
      uVar4 = Fish_manager_RollGrade(param_1,1);
      lVar5 = *(long *)(param_1 + 0x90);
      if (lVar5 != 0) {
        lVar7 = *(long *)(lVar5 + 0x10);
        lVar8 = *(long *)PTR_DAT_05e63108;
        *(int *)(lVar5 + 0x1c) = *(int *)(lVar5 + 0x1c) + 1;
        if (lVar7 != 0) {
          uVar1 = *(uint *)(lVar5 + 0x18);
          if (uVar1 < *(uint *)(lVar7 + 0x18)) {
            *(uint *)(lVar5 + 0x18) = uVar1 + 1;
            *(undefined4 *)(lVar7 + (long)(int)uVar1 * 4 + 0x20) = uVar4;
          }
          else {
            func_0x044f7a10(lVar5,uVar4,
                            *(undefined8 *)(*(long *)(*(long *)(lVar8 + 0x20) + 0xc0) + 0x70));
          }
          lVar5 = *(long *)(param_1 + 0xa8);
          if (lVar5 != 0) {
            (**(code **)(lVar5 + 0x18))(*(undefined8 *)(lVar5 + 0x40),*(undefined8 *)(lVar5 + 0x28))
            ;
          }
          Fish_manager_UpdateStatTexts(param_1);
          Fish_manager_RefreshCatStats();
          uVar9 = *(undefined8 *)(param_1 + 0xa0);
          if (*(int *)(*(long *)PTR_DAT_05e591c0 + 0xe4) == 0) {
            func_0x029f5bd0();
          }
          uVar6 = Object_op_Inequality_0x6000ded(uVar9,0,0);
          if ((uVar6 & 1) != 0) {
            if (*(long *)(param_1 + 0xa0) == 0) goto LAB_02c5ece4;
            Fish_Tank_SpawnFish(*(long *)(param_1 + 0xa0),uVar4);
          }
          Fish_manager_ShowNewFishPopup(param_1,uVar4);
          if (cRam000000000625ba57 == '\0') {
            func_0x029f5a50(PTR_DAT_05e5dd70);
            cRam000000000625ba57 = '\x01';
          }
          if (**(long **)(*(long *)PTR_DAT_05e5dd70 + 0xb8) != 0) {
            Sound_manager_PlaySfx_0x600054a
                      (0x3f800000,**(long **)(*(long *)PTR_DAT_05e5dd70 + 0xb8),2,0,0);
            Fish_manager_TryStartAutoMerge(param_1);
            return;
          }
        }
      }
    }
  }
LAB_02c5ece4:
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

