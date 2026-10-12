/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b8cfd8, Ghidra VA 02c8cfd8. */

void DiaPig_UI_UI_Reload(long param_1)

{
  undefined *puVar1;
  undefined *puVar2;
  undefined *puVar3;
  undefined *puVar4;
  byte bVar5;
  long lVar6;
  undefined8 uVar7;
  undefined8 uVar8;
  ulong uVar9;
  long lVar10;
  long *plVar11;
  undefined4 uStack_4c;
  undefined4 uStack_48;
  undefined4 uStack_44;
  
  puVar2 = PTR_DAT_05e5d920;
  if ((bRam000000000625c3c1 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e62668);
    func_0x029f5a50(PTR_DAT_05e5e528);
    func_0x029f5a50(PTR_DAT_05e5d920);
    func_0x029f5a50(PTR_DAT_05e5d528);
    func_0x029f5a50(PTR_DAT_05e63f50);
    func_0x029f5a50(PTR_DAT_05e63f58);
    bRam000000000625c3c1 = 1;
  }
  uStack_44 = 0;
  if (*(int *)(*(long *)puVar2 + 0xe4) == 0) {
    func_0x029f5bd0();
  }
  if (cRam000000000625b960 == '\0') {
    func_0x029f5a50(PTR_DAT_05e5d920);
    cRam000000000625b960 = '\x01';
  }
  lVar6 = *(long *)puVar2;
  if (*(int *)(lVar6 + 0xe4) == 0) {
    func_0x029f5bd0();
    lVar6 = *(long *)puVar2;
  }
  if (**(long **)(lVar6 + 0xb8) != 0) {
    bVar5 = Shop_manager_is_DiaPig_Unlock_0x6000db5();
    *(byte *)(param_1 + 0x58) = bVar5 & 1;
    if (*(long *)(param_1 + 0x20) != 0) {
      GameObject_SetActive_0x6000cfe(*(long *)(param_1 + 0x20),(bVar5 ^ 0xff) & 1,0);
      puVar3 = PTR_DAT_05e62668;
      if (*(long *)(param_1 + 0x28) != 0) {
        GameObject_SetActive_0x6000cfe(*(long *)(param_1 + 0x28),*(undefined1 *)(param_1 + 0x58),0);
        puVar1 = PTR_DAT_05e58a10;
        lVar6 = **(long **)(*(long *)puVar3 + 0xb8);
        if (lVar6 != 0) {
          uStack_48 = *(undefined4 *)(lVar6 + 0x20);
          plVar11 = *(long **)(param_1 + 0x48);
          uVar7 = func_0x029f5bd8(*(undefined8 *)(PTR_DAT_05e58a10 + 0x48),&uStack_48);
          puVar4 = PTR_DAT_05e63f50;
          lVar6 = **(long **)(*(long *)puVar3 + 0xb8);
          if (lVar6 != 0) {
            uStack_4c = *(undefined4 *)(lVar6 + 0x24);
            uVar8 = func_0x029f5bd8(*(undefined8 *)(puVar1 + 0x48),&uStack_4c);
            uVar7 = String_Format_0x600029d(*(undefined8 *)puVar4,uVar7,uVar8,0);
            if (plVar11 != (long *)0x0) {
              (**(code **)(*plVar11 + 0x558))(plVar11,uVar7,*(undefined8 *)(*plVar11 + 0x560));
              if (*(long *)(param_1 + 0x60) != 0) {
                GameObject_SetActive_0x6000cfe
                          (*(long *)(param_1 + 0x60),*(undefined1 *)(param_1 + 0x58),0);
                puVar4 = PTR_DAT_05e63f58;
                puVar3 = PTR_DAT_05e5e528;
                if (*(long *)(param_1 + 0x68) != 0) {
                  GameObject_SetActive_0x6000cfe
                            (*(long *)(param_1 + 0x68),*(char *)(param_1 + 0x58) == '\0',0);
                  if (*(int *)(*(long *)puVar3 + 0xe4) == 0) {
                    func_0x029f5bd0();
                  }
                  uVar7 = LocalizationManager_GetTranslation_0x60011b3
                                    (*(undefined8 *)puVar4,1,0,1,0,0,0,1,0);
                  uVar9 = String_IsNullOrEmpty_0x6000277(uVar7,0);
                  plVar11 = *(long **)(param_1 + 0x50);
                  if ((uVar9 & 1) == 0) {
                    if (*(int *)(*(long *)puVar2 + 0xe4) == 0) {
                      func_0x029f5bd0();
                    }
                    if (cRam000000000625b960 == '\0') {
                      func_0x029f5a50(PTR_DAT_05e5d920);
                      cRam000000000625b960 = '\x01';
                    }
                    lVar6 = *(long *)puVar2;
                    if (*(int *)(lVar6 + 0xe4) == 0) {
                      func_0x029f5bd0();
                      lVar6 = *(long *)puVar2;
                    }
                    if (**(long **)(lVar6 + 0xb8) == 0) goto LAB_02c8d3c8;
                    uStack_48 = Shop_manager_DiaPig_TickAmount_0x6000db6();
                    uVar8 = func_0x029f5bd8(*(undefined8 *)(puVar1 + 0x48),&uStack_48);
                    uVar7 = String_Format_0x600029c(uVar7,uVar8,0);
                  }
                  else {
                    if (*(int *)(*(long *)puVar2 + 0xe4) == 0) {
                      func_0x029f5bd0();
                    }
                    if (cRam000000000625b960 == '\0') {
                      func_0x029f5a50(PTR_DAT_05e5d920);
                      cRam000000000625b960 = '\x01';
                    }
                    lVar6 = *(long *)puVar2;
                    if (*(int *)(lVar6 + 0xe4) == 0) {
                      func_0x029f5bd0();
                      lVar6 = *(long *)puVar2;
                    }
                    if (**(long **)(lVar6 + 0xb8) == 0) goto LAB_02c8d3c8;
                    uStack_44 = Shop_manager_DiaPig_TickAmount_0x6000db6();
                    uVar7 = Int32_ToString_0x600080e(&uStack_44,0);
                    uVar7 = String_Concat_0x6000298(*(undefined8 *)PTR_DAT_05e5d528,uVar7,0);
                  }
                  if (plVar11 != (long *)0x0) {
                    (**(code **)(*plVar11 + 0x558))(plVar11,uVar7,*(undefined8 *)(*plVar11 + 0x560))
                    ;
                    lVar6 = *(long *)puVar2;
                    if (*(int *)(lVar6 + 0xe4) == 0) {
                      func_0x029f5bd0();
                      lVar6 = *(long *)puVar2;
                    }
                    lVar10 = *(long *)(lVar6 + 0xb8);
                    if (*(char *)(lVar10 + 9) == '\0') {
                      if (*(long *)(param_1 + 0x30) != 0) {
                        GameObject_SetActive_0x6000cfe(*(long *)(param_1 + 0x30),1,0);
                        lVar6 = *(long *)(param_1 + 0x38);
                        if (lVar6 != 0) {
                          uVar7 = 0;
                          goto LAB_02c8d3a8;
                        }
                      }
                    }
                    else {
                      if (*(int *)(lVar6 + 0xe4) == 0) {
                        func_0x029f5bd0();
                        lVar10 = *(long *)(*(long *)puVar2 + 0xb8);
                      }
                      lVar6 = *(long *)(param_1 + 0x30);
                      if (*(char *)(lVar10 + 8) == '\0') {
                        if (lVar6 == 0) goto LAB_02c8d3c8;
                        uVar7 = 0;
                      }
                      else {
                        if (lVar6 == 0) goto LAB_02c8d3c8;
                        uVar7 = 1;
                      }
                      GameObject_SetActive_0x6000cfe(lVar6,uVar7,0);
                      lVar6 = *(long *)(param_1 + 0x38);
                      if (lVar6 != 0) {
                        uVar7 = 1;
LAB_02c8d3a8:
                        GameObject_SetActive_0x6000cfe(lVar6,uVar7,0);
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
LAB_02c8d3c8:
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

