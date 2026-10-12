/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b4f1bc, Ghidra VA 02c4f1bc. */

void Monster_manager_Game_Sweep(long param_1)

{
  uint uVar1;
  int iVar2;
  int iVar3;
  undefined *puVar4;
  ulong uVar5;
  long lVar6;
  undefined8 uVar7;
  long *plVar8;
  float fVar9;
  int iStack_34;
  undefined8 uStack_30;
  undefined8 uStack_28;
  
  if ((bRam000000000625c146 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e5d338);
    func_0x029f5a50(PTR_DAT_05e5dd58);
    func_0x029f5a50(PTR_DAT_05e5e0b8);
    func_0x029f5a50(PTR_DAT_05e5d498);
    func_0x029f5a50(PTR_DAT_05e5d920);
    bRam000000000625c146 = 1;
  }
  uStack_30 = 0;
  uStack_28 = 0;
  iStack_34 = 0;
  uVar5 = Monster_manager_is_SweepAble(param_1);
  if ((uVar5 & 1) != 0) {
    Monster_manager_SweepTarget_return(param_1,(long)&uStack_28 + 4,&uStack_28,(long)&uStack_30 + 4)
    ;
    puVar4 = PTR_DAT_05e5dd58;
    iVar3 = uStack_30._4_4_;
    if (0 < uStack_30._4_4_) {
      *(undefined1 *)(param_1 + 0x138) = 1;
      lVar6 = *(long *)puVar4;
      *(undefined1 *)(param_1 + 0xb8) = 0;
      *(undefined1 *)(param_1 + 0xba) = 0;
      iVar2 = *(int *)(lVar6 + 0xe4);
      *(undefined4 *)(param_1 + 0x20) = uStack_28._4_4_;
      *(undefined4 *)(param_1 + 0x24) = (undefined4)uStack_28;
      if (iVar2 == 0) {
        func_0x029f5bd0();
        lVar6 = *(long *)puVar4;
      }
      iVar2 = **(int **)(lVar6 + 0xb8);
      if (*(int *)(*(long *)PTR_DAT_05e5e0b8 + 0xe4) == 0) {
        func_0x029f5bd0(*(long *)PTR_DAT_05e5e0b8);
      }
      fVar9 = (float)PlusPack_get_Reward_Mult_Monster_0x6000d2b(0);
      fVar9 = fVar9 * (float)iVar2;
      iVar2 = -0x80000000;
      if (fVar9 != INFINITY) {
        iVar2 = (int)fVar9;
      }
      iVar2 = iVar2 * iVar3;
      iVar3 = *(int *)(*(long *)PTR_DAT_05e5d920 + 0xe4);
      uStack_30 = CONCAT44(uStack_30._4_4_,iVar2);
      *(int *)(param_1 + 0x13c) = iVar2;
      if (iVar3 == 0) {
        func_0x029f5bd0();
      }
      uVar5 = Shop_manager_get_Is_RewardBonus_Auto_0x6000d61(0);
      if (*(int *)(*(long *)PTR_DAT_05e5d338 + 0xe4) == 0) {
        func_0x029f5bd0();
      }
      Gamemanager_Get_PetCoin_0x600007b(iVar2 << (uVar5 & 1),0);
      plVar8 = *(long **)(param_1 + 0x128);
      uVar7 = Int32_ToString_0x600080e(&uStack_30,0);
      if (plVar8 != (long *)0x0) {
        (**(code **)(*plVar8 + 0x558))(plVar8,uVar7,*(undefined8 *)(*plVar8 + 0x560));
        plVar8 = *(long **)(param_1 + 0x130);
        iStack_34 = (int)uStack_30 << 1;
        uVar7 = Int32_ToString_0x600080e(&iStack_34,0);
        if (plVar8 != (long *)0x0) {
          (**(code **)(*plVar8 + 0x558))(plVar8,uVar7,*(undefined8 *)(*plVar8 + 0x560));
          if (*(long *)(param_1 + 0x120) != 0) {
            uVar1 = (uint)uVar5 ^ 1;
            GameObject_SetActive_0x6000cfe(*(long *)(param_1 + 0x120),uVar1 & 1,0);
            if (*(long *)(param_1 + 0x110) != 0) {
              GameObject_SetActive_0x6000cfe(*(long *)(param_1 + 0x110),uVar1 & 1,0);
              if (*(long *)(param_1 + 0x118) != 0) {
                GameObject_SetActive_0x6000cfe(*(long *)(param_1 + 0x118),(uint)uVar5 & 1,0);
                Monster_manager_SendDgResult_0x6000843(param_1,1);
                if (**(long **)(*(long *)PTR_DAT_05e5d498 + 0xb8) != 0) {
                  Rank_manager_SubmitMonsterScore_0x6000421
                            (**(long **)(*(long *)PTR_DAT_05e5d498 + 0xb8),
                             *(int *)(param_1 + 0x24) + *(int *)(param_1 + 0x20) * 10,0);
                  if (cRam000000000625ba57 == '\0') {
                    func_0x029f5a50(PTR_DAT_05e5dd70);
                    cRam000000000625ba57 = '\x01';
                  }
                  if (**(long **)(*(long *)PTR_DAT_05e5dd70 + 0xb8) != 0) {
                    Sound_manager_PlaySfx_0x600054a
                              (0x3f800000,**(long **)(*(long *)PTR_DAT_05e5dd70 + 0xb8),0xb,0,0);
                    if ((*(long *)(param_1 + 0x108) != 0) &&
                       (GameObject_SetActive_0x6000cfe(*(long *)(param_1 + 0x108),1,0),
                       *(long *)(param_1 + 0x38) != 0)) {
                      Monster_Start_UI_Reload();
                      return;
                    }
                  }
                }
              }
            }
          }
        }
      }
                    /* WARNING: Subroutine does not return */
      Throw_NullReference_Wrapper();
    }
  }
  return;
}

