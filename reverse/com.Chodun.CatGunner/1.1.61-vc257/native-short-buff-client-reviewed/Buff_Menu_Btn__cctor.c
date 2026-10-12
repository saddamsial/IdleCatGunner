/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b38644, Ghidra VA 02c38644. */

void Buff_Menu_Btn__cctor(void)

{
  undefined *puVar1;
  uint uVar2;
  long lVar3;
  long lVar4;
  undefined8 uVar5;
  undefined8 uVar6;
  undefined *puVar7;
  long *plVar8;
  float fVar9;
  float fVar10;
  undefined4 uStack_68;
  undefined4 uStack_64;
  code *pcStack_60;
  
  puVar7 = PTR_DAT_05e631b8;
  if ((bRam000000000625c082 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e631a0);
    func_0x029f5a50(PTR_DAT_05e631c8);
    func_0x029f5a50(PTR_DAT_05e631b8);
    bRam000000000625c082 = 1;
  }
  puVar1 = PTR_DAT_05e58a10;
  uVar6 = *(undefined8 *)puVar7;
  if (*(int *)(*(long *)(PTR_DAT_05e58a10 + 0xe0) + 0xe4) == 0) {
    func_0x029f5bd0();
  }
  uVar6 = Type_GetTypeFromHandle_0x6000b54(uVar6,0);
  if (*(int *)(*(long *)(puVar1 + 0x98) + 0xe4) == 0) {
    func_0x029f5bd0(*(long *)(puVar1 + 0x98));
  }
  puVar7 = PTR_DAT_05e631a0;
  lVar3 = Enum_GetValues_0x6000e08(uVar6,0);
  puVar1 = PTR_DAT_05e631c8;
  if (lVar3 != 0) {
    uVar6 = *(undefined8 *)PTR_DAT_05e631c8;
    lVar4 = func_0x029f5bd4(lVar3,uVar6);
    if (lVar4 == 0) {
      func_0x029f607c(lVar3,uVar6);
    }
    else {
      **(long **)(*(long *)puVar7 + 0xb8) = lVar4;
      lVar4 = *(long *)puVar7;
      puVar7 = *(undefined **)puVar1;
      uVar6 = *(undefined8 *)(lVar4 + 0xb8);
      lVar4 = func_0x029f5bd4(lVar3,puVar7);
      if (lVar4 != 0) goto LAB_02c3874c;
    }
    lVar3 = func_0x029f607c(lVar3,puVar7);
    puVar7 = PTR_DAT_05e5d4c0;
    pcStack_60 = Buff_Panel_Update;
    if ((bRam000000000625c083 & 1) == 0) {
      func_0x029f5a50(PTR_DAT_05e5d4c0);
      func_0x029f5a50(PTR_DAT_05e5e528);
      func_0x029f5a50(PTR_DAT_05e631d0);
      bRam000000000625c083 = 1;
    }
    lVar4 = *(long *)puVar7;
    uStack_64 = 0;
    if (*(int *)(lVar4 + 0xe4) == 0) {
      func_0x029f5bd0();
      lVar4 = *(long *)puVar7;
    }
    if (**(long **)(lVar4 + 0xb8) != 0) {
      fVar9 = (float)Buff_manager_GetBuffRemainingTime
                               (**(long **)(lVar4 + 0xb8),*(undefined4 *)(lVar3 + 0x20));
      if (**(long **)(*(long *)puVar7 + 0xb8) != 0) {
        uVar2 = Buff_manager_IsBuffActive
                          (**(long **)(*(long *)puVar7 + 0xb8),*(undefined4 *)(lVar3 + 0x20));
        plVar8 = *(long **)(lVar3 + 0x28);
        uVar6 = Buff_manager_FormatRemaining(fVar9);
        if (plVar8 != (long *)0x0) {
          (**(code **)(*plVar8 + 0x558))(plVar8,uVar6,*(undefined8 *)(*plVar8 + 0x560));
          if (*(long *)(lVar3 + 0x30) != 0) {
            fVar10 = fVar9 / 900.0;
            if (fVar9 < 0.0) {
              fVar10 = 1.0;
            }
            SlicedFilledImage_set_fillAmount_0x60005d0(fVar10,*(long *)(lVar3 + 0x30),0);
            if (*(long *)(lVar3 + 0x38) != 0) {
              GameObject_SetActive_0x6000cfe(*(long *)(lVar3 + 0x38),0.0 <= fVar9,0);
              if (*(long *)(lVar3 + 0x48) != 0) {
                GameObject_SetActive_0x6000cfe(*(long *)(lVar3 + 0x48),uVar2 & 1,0);
                if (*(long *)(lVar3 + 0x40) != 0) {
                  GameObject_SetActive_0x6000cfe(*(long *)(lVar3 + 0x40),(uVar2 ^ 0xffffffff) & 1,0)
                  ;
                  lVar4 = *(long *)puVar7;
                  if (*(int *)(lVar4 + 0xe4) == 0) {
                    func_0x029f5bd0();
                    lVar4 = *(long *)puVar7;
                  }
                  puVar1 = PTR_DAT_05e631d0;
                  puVar7 = PTR_DAT_05e5e528;
                  if (**(long **)(lVar4 + 0xb8) != 0) {
                    uVar2 = Buff_manager_get_IsSuperBuff();
                    uStack_64 = *(undefined4 *)(lVar3 + 0x20);
                    plVar8 = *(long **)(lVar3 + 0x50);
                    uVar6 = Int32_ToString_0x600080e(&uStack_64,0);
                    uVar6 = String_Concat_0x6000298(*(undefined8 *)puVar1,uVar6,0);
                    if (*(int *)(*(long *)puVar7 + 0xe4) == 0) {
                      func_0x029f5bd0(*(long *)puVar7);
                    }
                    uVar6 = LocalizationManager_GetTranslation_0x60011b3(uVar6,1,0,1,0,0,0,1,0);
                    uStack_68 = 3;
                    if ((uVar2 & 1) != 0) {
                      uStack_68 = 4;
                    }
                    uVar5 = func_0x029f5bd8(*(undefined8 *)(PTR_DAT_05e58a10 + 0x48),&uStack_68);
                    uVar6 = String_Format_0x600029c(uVar6,uVar5,0);
                    if (plVar8 != (long *)0x0) {
                      (**(code **)(*plVar8 + 0x558))(plVar8,uVar6,*(undefined8 *)(*plVar8 + 0x560));
                      if (*(long *)(lVar3 + 0x58) != 0) {
                        GameObject_SetActive_0x6000cfe
                                  (*(long *)(lVar3 + 0x58),(uVar2 ^ 0xffffffff) & 1,0);
                        if (*(long *)(lVar3 + 0x60) != 0) {
                          GameObject_SetActive_0x6000cfe(*(long *)(lVar3 + 0x60),uVar2 & 1,0);
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
  lVar4 = 0;
  **(undefined8 **)(*(long *)puVar7 + 0xb8) = 0;
  uVar6 = *(undefined8 *)(*(long *)puVar7 + 0xb8);
LAB_02c3874c:
  Managed_WriteBarrier(uVar6,lVar4);
  return;
}

