/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b4742c, Ghidra VA 02c4742c. */

void Boss_Start_UI_Reload(long param_1)

{
  long lVar1;
  long lVar2;
  undefined *puVar3;
  undefined *puVar4;
  undefined *puVar5;
  uint uVar6;
  int iVar7;
  long lVar8;
  undefined8 uVar9;
  long *plVar10;
  int iStack_80;
  undefined4 uStack_7c;
  undefined8 uStack_78;
  undefined8 uStack_70;
  undefined8 uStack_68;
  undefined8 uStack_60;
  undefined8 uStack_58;
  undefined8 uStack_50;
  undefined8 uStack_48;
  int iStack_34;
  
  puVar4 = PTR_DAT_05e5dd30;
  if ((bRam000000000625c0f4 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e5dd30);
    func_0x029f5a50(PTR_DAT_05e5e0b8);
    func_0x029f5a50(PTR_DAT_05e61f18);
    func_0x029f5a50(PTR_DAT_05e63338);
    bRam000000000625c0f4 = 1;
  }
  lVar8 = *(long *)puVar4;
  uStack_58 = 0;
  uStack_60 = 0;
  uStack_48 = 0;
  uStack_50 = 0;
  if (*(int *)(lVar8 + 0xe4) == 0) {
    func_0x029f5bd0();
    lVar8 = *(long *)puVar4;
  }
  puVar5 = PTR_DAT_05e61f18;
  lVar8 = *(long *)(*(long *)(lVar8 + 0xb8) + 8);
  if (lVar8 != 0) {
    iVar7 = *(int *)(lVar8 + 0x20);
    Boss_manager_Health_return_0x60007b3(&iStack_80,lVar8,iVar7);
    puVar3 = PTR_DAT_05e58a10;
    uStack_60 = CONCAT44(uStack_7c,iStack_80);
    plVar10 = *(long **)(param_1 + 0x20);
    iStack_34 = iVar7 + 1;
    uStack_58 = uStack_78;
    uStack_48 = uStack_68;
    uStack_50 = uStack_70;
    uVar9 = func_0x029f5bd8(*(undefined8 *)(PTR_DAT_05e58a10 + 0x48),&iStack_34);
    uVar9 = String_Format_0x600029c(*(undefined8 *)puVar5,uVar9,0);
    if (plVar10 != (long *)0x0) {
      (**(code **)(*plVar10 + 0x558))(plVar10,uVar9,*(undefined8 *)(*plVar10 + 0x560));
      plVar10 = *(long **)(param_1 + 0x28);
      uVar9 = InfVal_InfVal_change_0x60000a8(&uStack_60,0);
      if (plVar10 != (long *)0x0) {
        (**(code **)(*plVar10 + 0x558))(plVar10,uVar9,*(undefined8 *)(*plVar10 + 0x560));
        lVar8 = *(long *)(*(long *)(*(long *)puVar4 + 0xb8) + 8);
        if (lVar8 != 0) {
          lVar1 = *(long *)(param_1 + 0x30);
          lVar2 = *(long *)(param_1 + 0x38);
          uVar9 = Boss_manager_Boss_Head_return_0x60007b1(lVar8,iVar7);
          if ((lVar2 != 0) && (Image_set_sprite_0x600013f(lVar2,uVar9,0), lVar1 != 0)) {
            Image_set_sprite_0x600013f(lVar1,uVar9,0);
            lVar8 = Component_get_gameObject_0x6000c83(param_1,0);
            puVar5 = PTR_DAT_05e5e0b8;
            if (lVar8 != 0) {
              GameObject_SetActive_0x6000cfe(lVar8,1,0);
              if (*(int *)(*(long *)puVar5 + 0xe4) == 0) {
                func_0x029f5bd0();
              }
              uVar6 = PlusPack_Is_Active_0x6000d35(2,0);
              if (*(long *)(param_1 + 0x88) != 0) {
                GameObject_SetActive_0x6000cfe(*(long *)(param_1 + 0x88),(uVar6 ^ 0xffffffff) & 1,0)
                ;
                if (*(long *)(param_1 + 0x90) != 0) {
                  GameObject_SetActive_0x6000cfe(*(long *)(param_1 + 0x90),uVar6 & 1,0);
                  if ((uVar6 & 1) == 0) goto LAB_02c47704;
                  lVar8 = *(long *)puVar4;
                  if (*(int *)(lVar8 + 0xe4) == 0) {
                    func_0x029f5bd0();
                    lVar8 = *(long *)puVar4;
                  }
                  if (*(long *)(*(long *)(lVar8 + 0xb8) + 8) != 0) {
                    uVar6 = Boss_manager_is_SweepAble();
                    if (*(long *)(param_1 + 0x98) != 0) {
                      GameObject_SetActive_0x6000cfe
                                (*(long *)(param_1 + 0x98),(uVar6 ^ 0xffffffff) & 1,0);
                      if (*(long *)(param_1 + 0xa0) != 0) {
                        GameObject_SetActive_0x6000cfe(*(long *)(param_1 + 0xa0),uVar6 & 1,0);
                        if ((uVar6 & 1) != 0) {
LAB_02c47704:
                          Boss_Start_UI_Banner_Reload_0x60007d4(param_1);
                          Boss_Start_UI_ReloadAroundMe_0x60007d7(param_1);
                          return;
                        }
                        lVar8 = *(long *)puVar4;
                        if (*(int *)(lVar8 + 0xe4) == 0) {
                          func_0x029f5bd0();
                          lVar8 = *(long *)puVar4;
                        }
                        if (*(long *)(*(long *)(lVar8 + 0xb8) + 8) != 0) {
                          iVar7 = Boss_manager_SweepValue_return();
                          plVar10 = *(long **)(param_1 + 0xa8);
                          iStack_80 = iVar7;
                          uVar9 = func_0x029f5bd8(*(undefined8 *)(puVar3 + 0x48),&iStack_80);
                          uVar9 = String_Format_0x600029c(*(undefined8 *)PTR_DAT_05e63338,uVar9,0);
                          if (plVar10 != (long *)0x0) {
                            (**(code **)(*plVar10 + 0x558))
                                      (plVar10,uVar9,*(undefined8 *)(*plVar10 + 0x560));
                            if (*(long *)(param_1 + 0xb0) != 0) {
                              SlicedFilledImage_set_fillAmount_0x60005d0
                                        ((float)iVar7 / 100.0,*(long *)(param_1 + 0xb0),0);
                              goto LAB_02c47704;
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
      }
    }
  }
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

