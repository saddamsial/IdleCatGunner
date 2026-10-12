/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2ba9cb8, Ghidra VA 02ca9cb8. */

void SpeedRun_Start_UI_Reload(long param_1)

{
  undefined *puVar1;
  undefined *puVar2;
  undefined *puVar3;
  uint uVar4;
  int iVar5;
  long lVar6;
  undefined8 uVar7;
  long *plVar8;
  int iStack_38;
  int iStack_34;
  
  puVar3 = PTR_DAT_05e5dd68;
  if ((bRam000000000625c50e & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e5e0b8);
    func_0x029f5a50(PTR_DAT_05e5dd68);
    func_0x029f5a50(PTR_DAT_05e5dc20);
    func_0x029f5a50(PTR_DAT_05e63338);
    func_0x029f5a50(PTR_DAT_05e630d0);
    bRam000000000625c50e = 1;
  }
  lVar6 = *(long *)puVar3;
  if (*(int *)(lVar6 + 0xe4) == 0) {
    func_0x029f5bd0();
    lVar6 = *(long *)puVar3;
  }
  puVar2 = PTR_DAT_05e630d0;
  puVar1 = PTR_DAT_05e58a10;
  lVar6 = *(long *)(*(long *)(lVar6 + 0xb8) + 8);
  if (lVar6 != 0) {
    iVar5 = *(int *)(lVar6 + 0x30);
    plVar8 = *(long **)(param_1 + 0x28);
    iStack_34 = iVar5 + 1;
    uVar7 = func_0x029f5bd8(*(undefined8 *)(PTR_DAT_05e58a10 + 0x48),&iStack_34);
    uVar7 = String_Format_0x600029c(*(undefined8 *)puVar2,uVar7,0);
    puVar2 = PTR_DAT_05e5dc20;
    if (plVar8 != (long *)0x0) {
      (**(code **)(*plVar8 + 0x558))(plVar8,uVar7,*(undefined8 *)(*plVar8 + 0x560));
      lVar6 = *(long *)(param_1 + 0x20);
      if (*(int *)(*(long *)puVar2 + 0xe4) == 0) {
        func_0x029f5bd0();
      }
      uVar7 = Tree_manager_Sprite_return_0x6000f0e(iVar5,0);
      if (lVar6 != 0) {
        Image_set_sprite_0x600013f(lVar6,uVar7,0);
        lVar6 = Component_get_gameObject_0x6000c83(param_1,0);
        puVar2 = PTR_DAT_05e5e0b8;
        if (lVar6 != 0) {
          GameObject_SetActive_0x6000cfe(lVar6,1,0);
          if (*(int *)(*(long *)puVar2 + 0xe4) == 0) {
            func_0x029f5bd0();
          }
          uVar4 = PlusPack_Is_Active_0x6000d35(2,0);
          if (*(long *)(param_1 + 0x40) != 0) {
            GameObject_SetActive_0x6000cfe(*(long *)(param_1 + 0x40),(uVar4 ^ 0xffffffff) & 1,0);
            if (*(long *)(param_1 + 0x48) != 0) {
              GameObject_SetActive_0x6000cfe(*(long *)(param_1 + 0x48),uVar4 & 1,0);
              if ((uVar4 & 1) == 0) goto LAB_02ca9f44;
              lVar6 = *(long *)puVar3;
              if (*(int *)(lVar6 + 0xe4) == 0) {
                func_0x029f5bd0();
                lVar6 = *(long *)puVar3;
              }
              if (*(long *)(*(long *)(lVar6 + 0xb8) + 8) != 0) {
                uVar4 = SpeedRun_manager_is_SweepAble_0x6000eb4();
                if (*(long *)(param_1 + 0x50) != 0) {
                  GameObject_SetActive_0x6000cfe
                            (*(long *)(param_1 + 0x50),(uVar4 ^ 0xffffffff) & 1,0);
                  if (*(long *)(param_1 + 0x58) != 0) {
                    GameObject_SetActive_0x6000cfe(*(long *)(param_1 + 0x58),uVar4 & 1,0);
                    if ((uVar4 & 1) != 0) {
LAB_02ca9f44:
                      SpeedRun_Start_UI_Banner_Reload(param_1);
                      return;
                    }
                    lVar6 = *(long *)puVar3;
                    if (*(int *)(lVar6 + 0xe4) == 0) {
                      func_0x029f5bd0();
                      lVar6 = *(long *)puVar3;
                    }
                    if (*(long *)(*(long *)(lVar6 + 0xb8) + 8) != 0) {
                      iVar5 = SpeedRun_manager_SweepValue_return_0x6000eb5();
                      plVar8 = *(long **)(param_1 + 0x60);
                      iStack_38 = iVar5;
                      uVar7 = func_0x029f5bd8(*(undefined8 *)(puVar1 + 0x48),&iStack_38);
                      uVar7 = String_Format_0x600029c(*(undefined8 *)PTR_DAT_05e63338,uVar7,0);
                      if (plVar8 != (long *)0x0) {
                        (**(code **)(*plVar8 + 0x558))
                                  (plVar8,uVar7,*(undefined8 *)(*plVar8 + 0x560));
                        if (*(long *)(param_1 + 0x68) != 0) {
                          SlicedFilledImage_set_fillAmount_0x60005d0
                                    ((float)iVar5 / 100.0,*(long *)(param_1 + 0x68),0);
                          goto LAB_02ca9f44;
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

