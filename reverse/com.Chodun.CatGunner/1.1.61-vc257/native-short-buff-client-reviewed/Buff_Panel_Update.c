/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b38778, Ghidra VA 02c38778. */

void Buff_Panel_Update(long param_1)

{
  undefined *puVar1;
  undefined *puVar2;
  uint uVar3;
  long lVar4;
  undefined8 uVar5;
  undefined8 uVar6;
  long *plVar7;
  float fVar8;
  float fVar9;
  undefined4 uStack_38;
  undefined4 uStack_34;
  
  puVar1 = PTR_DAT_05e5d4c0;
  if ((bRam000000000625c083 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e5d4c0);
    func_0x029f5a50(PTR_DAT_05e5e528);
    func_0x029f5a50(PTR_DAT_05e631d0);
    bRam000000000625c083 = 1;
  }
  lVar4 = *(long *)puVar1;
  uStack_34 = 0;
  if (*(int *)(lVar4 + 0xe4) == 0) {
    func_0x029f5bd0();
    lVar4 = *(long *)puVar1;
  }
  if (**(long **)(lVar4 + 0xb8) != 0) {
    fVar8 = (float)Buff_manager_GetBuffRemainingTime
                             (**(long **)(lVar4 + 0xb8),*(undefined4 *)(param_1 + 0x20));
    if (**(long **)(*(long *)puVar1 + 0xb8) != 0) {
      uVar3 = Buff_manager_IsBuffActive
                        (**(long **)(*(long *)puVar1 + 0xb8),*(undefined4 *)(param_1 + 0x20));
      plVar7 = *(long **)(param_1 + 0x28);
      uVar5 = Buff_manager_FormatRemaining(fVar8);
      if (plVar7 != (long *)0x0) {
        (**(code **)(*plVar7 + 0x558))(plVar7,uVar5,*(undefined8 *)(*plVar7 + 0x560));
        if (*(long *)(param_1 + 0x30) != 0) {
          fVar9 = fVar8 / 900.0;
          if (fVar8 < 0.0) {
            fVar9 = 1.0;
          }
          SlicedFilledImage_set_fillAmount_0x60005d0(fVar9,*(long *)(param_1 + 0x30),0);
          if (*(long *)(param_1 + 0x38) != 0) {
            GameObject_SetActive_0x6000cfe(*(long *)(param_1 + 0x38),0.0 <= fVar8,0);
            if (*(long *)(param_1 + 0x48) != 0) {
              GameObject_SetActive_0x6000cfe(*(long *)(param_1 + 0x48),uVar3 & 1,0);
              if (*(long *)(param_1 + 0x40) != 0) {
                GameObject_SetActive_0x6000cfe(*(long *)(param_1 + 0x40),(uVar3 ^ 0xffffffff) & 1,0)
                ;
                lVar4 = *(long *)puVar1;
                if (*(int *)(lVar4 + 0xe4) == 0) {
                  func_0x029f5bd0();
                  lVar4 = *(long *)puVar1;
                }
                puVar2 = PTR_DAT_05e631d0;
                puVar1 = PTR_DAT_05e5e528;
                if (**(long **)(lVar4 + 0xb8) != 0) {
                  uVar3 = Buff_manager_get_IsSuperBuff();
                  uStack_34 = *(undefined4 *)(param_1 + 0x20);
                  plVar7 = *(long **)(param_1 + 0x50);
                  uVar5 = Int32_ToString_0x600080e(&uStack_34,0);
                  uVar5 = String_Concat_0x6000298(*(undefined8 *)puVar2,uVar5,0);
                  if (*(int *)(*(long *)puVar1 + 0xe4) == 0) {
                    func_0x029f5bd0(*(long *)puVar1);
                  }
                  uVar5 = LocalizationManager_GetTranslation_0x60011b3(uVar5,1,0,1,0,0,0,1,0);
                  uStack_38 = 3;
                  if ((uVar3 & 1) != 0) {
                    uStack_38 = 4;
                  }
                  uVar6 = func_0x029f5bd8(*(undefined8 *)(PTR_DAT_05e58a10 + 0x48),&uStack_38);
                  uVar5 = String_Format_0x600029c(uVar5,uVar6,0);
                  if (plVar7 != (long *)0x0) {
                    (**(code **)(*plVar7 + 0x558))(plVar7,uVar5,*(undefined8 *)(*plVar7 + 0x560));
                    if (*(long *)(param_1 + 0x58) != 0) {
                      GameObject_SetActive_0x6000cfe
                                (*(long *)(param_1 + 0x58),(uVar3 ^ 0xffffffff) & 1,0);
                      if (*(long *)(param_1 + 0x60) != 0) {
                        GameObject_SetActive_0x6000cfe(*(long *)(param_1 + 0x60),uVar3 & 1,0);
                        return;
                      }
                    }
                  }
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

