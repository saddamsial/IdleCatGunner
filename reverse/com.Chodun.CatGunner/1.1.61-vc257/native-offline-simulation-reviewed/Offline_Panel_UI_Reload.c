/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b07334, Ghidra VA 02c07334. */

void Offline_Panel_UI_Reload(long param_1,long param_2,long param_3)

{
  undefined *puVar1;
  undefined *puVar2;
  undefined *puVar3;
  undefined8 uVar4;
  undefined8 uVar5;
  long lVar6;
  long *plVar7;
  float fVar8;
  undefined4 uStack_68;
  undefined4 uStack_64;
  undefined4 uStack_60;
  int iStack_5c;
  int iStack_58;
  undefined4 uStack_54;
  undefined4 uStack_50;
  undefined4 uStack_4c;
  int iStack_48;
  int iStack_44;
  
  if ((bRam000000000625be99 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e61f18);
    func_0x029f5a50(PTR_DAT_05e62088);
    bRam000000000625be99 = 1;
  }
  if (param_3 != 0) {
    plVar7 = *(long **)(param_1 + 0x20);
    fVar8 = *(float *)(param_3 + 0x10);
    if (*(float *)(param_3 + 0x14) <= *(float *)(param_3 + 0x10) + 1.0) {
      fVar8 = *(float *)(param_3 + 0x14);
    }
    uVar4 = OfflineResult_FormatTime(fVar8);
    if (plVar7 != (long *)0x0) {
      (**(code **)(*plVar7 + 0x558))(plVar7,uVar4,*(undefined8 *)(*plVar7 + 0x560));
      if ((*(long *)(param_1 + 0x28) != 0) &&
         (GameObject_SetActive_0x6000cfe
                    (*(long *)(param_1 + 0x28),
                     *(int *)(param_3 + 0x98) <=
                     *(int *)(param_3 + 0x94) + *(int *)(param_3 + 0x90) * 10,0),
         puVar3 = PTR_DAT_05e62088, puVar1 = PTR_DAT_05e58a10, param_2 != 0)) {
        plVar7 = *(long **)(param_1 + 0x30);
        iStack_44 = *(int *)(param_2 + 0x1d0) + 1;
        uVar4 = func_0x029f5bd8(*(undefined8 *)(PTR_DAT_05e58a10 + 0x48),&iStack_44);
        iStack_48 = *(int *)(param_2 + 0x1d4) + 1;
        uVar5 = func_0x029f5bd8(*(undefined8 *)(puVar1 + 0x48),&iStack_48);
        uVar4 = String_Format_0x600029d(*(undefined8 *)puVar3,uVar4,uVar5,0);
        if (plVar7 != (long *)0x0) {
          (**(code **)(*plVar7 + 0x558))(plVar7,uVar4,*(undefined8 *)(*plVar7 + 0x560));
          plVar7 = *(long **)(param_1 + 0x38);
          uVar4 = InfVal_InfVal_change_0x60000a8(param_2 + 0x18,0);
          if (plVar7 != (long *)0x0) {
            (**(code **)(*plVar7 + 0x558))(plVar7,uVar4,*(undefined8 *)(*plVar7 + 0x560));
            puVar2 = PTR_DAT_05e61f18;
            lVar6 = *(long *)(param_2 + 0x108);
            if (lVar6 != 0) {
              if (*(int *)(lVar6 + 0x18) == 0) {
LAB_02c07734:
                    /* WARNING: Subroutine does not return */
                Throw_Index_Wrapper();
              }
              uStack_4c = *(undefined4 *)(lVar6 + 0x20);
              plVar7 = *(long **)(param_1 + 0x40);
              uVar4 = func_0x029f5bd8(*(undefined8 *)(puVar1 + 0x48),&uStack_4c);
              uVar4 = String_Format_0x600029c(*(undefined8 *)puVar2,uVar4,0);
              if (plVar7 != (long *)0x0) {
                (**(code **)(*plVar7 + 0x558))(plVar7,uVar4,*(undefined8 *)(*plVar7 + 0x560));
                lVar6 = *(long *)(param_2 + 0x108);
                if (lVar6 != 0) {
                  if ((*(uint *)(lVar6 + 0x18) & 0xfffffffe) == 0) goto LAB_02c07734;
                  uStack_50 = *(undefined4 *)(lVar6 + 0x24);
                  plVar7 = *(long **)(param_1 + 0x48);
                  uVar4 = func_0x029f5bd8(*(undefined8 *)(puVar1 + 0x48),&uStack_50);
                  uVar4 = String_Format_0x600029c(*(undefined8 *)puVar2,uVar4,0);
                  if (plVar7 != (long *)0x0) {
                    (**(code **)(*plVar7 + 0x558))(plVar7,uVar4,*(undefined8 *)(*plVar7 + 0x560));
                    lVar6 = *(long *)(param_2 + 0x108);
                    if (lVar6 != 0) {
                      if (*(uint *)(lVar6 + 0x18) < 3) goto LAB_02c07734;
                      uStack_54 = *(undefined4 *)(lVar6 + 0x28);
                      plVar7 = *(long **)(param_1 + 0x50);
                      uVar4 = func_0x029f5bd8(*(undefined8 *)(puVar1 + 0x48),&uStack_54);
                      uVar4 = String_Format_0x600029c(*(undefined8 *)puVar2,uVar4,0);
                      if (plVar7 != (long *)0x0) {
                        (**(code **)(*plVar7 + 0x558))
                                  (plVar7,uVar4,*(undefined8 *)(*plVar7 + 0x560));
                        plVar7 = *(long **)(param_1 + 0x58);
                        iStack_58 = *(int *)(param_3 + 0x90) + 1;
                        uVar4 = func_0x029f5bd8(*(undefined8 *)(puVar1 + 0x48),&iStack_58);
                        iStack_5c = *(int *)(param_3 + 0x94) + 1;
                        uVar5 = func_0x029f5bd8(*(undefined8 *)(puVar1 + 0x48),&iStack_5c);
                        uVar4 = String_Format_0x600029d(*(undefined8 *)puVar3,uVar4,uVar5,0);
                        if (plVar7 != (long *)0x0) {
                          (**(code **)(*plVar7 + 0x558))
                                    (plVar7,uVar4,*(undefined8 *)(*plVar7 + 0x560));
                          plVar7 = *(long **)(param_1 + 0x60);
                          uVar4 = InfVal_InfVal_change_0x60000a8(param_3 + 0x38,0);
                          if (plVar7 != (long *)0x0) {
                            (**(code **)(*plVar7 + 0x558))
                                      (plVar7,uVar4,*(undefined8 *)(*plVar7 + 0x560));
                            uStack_60 = *(undefined4 *)(param_3 + 0x78);
                            plVar7 = *(long **)(param_1 + 0x68);
                            uVar4 = func_0x029f5bd8(*(undefined8 *)(puVar1 + 0x48),&uStack_60);
                            uVar4 = String_Format_0x600029c(*(undefined8 *)puVar2,uVar4,0);
                            if (plVar7 != (long *)0x0) {
                              (**(code **)(*plVar7 + 0x558))
                                        (plVar7,uVar4,*(undefined8 *)(*plVar7 + 0x560));
                              uStack_64 = *(undefined4 *)(param_3 + 0x7c);
                              plVar7 = *(long **)(param_1 + 0x70);
                              uVar4 = func_0x029f5bd8(*(undefined8 *)(puVar1 + 0x48),&uStack_64);
                              uVar4 = String_Format_0x600029c(*(undefined8 *)puVar2,uVar4,0);
                              if (plVar7 != (long *)0x0) {
                                (**(code **)(*plVar7 + 0x558))
                                          (plVar7,uVar4,*(undefined8 *)(*plVar7 + 0x560));
                                uStack_68 = *(undefined4 *)(param_3 + 0x80);
                                plVar7 = *(long **)(param_1 + 0x78);
                                uVar4 = func_0x029f5bd8(*(undefined8 *)(puVar1 + 0x48),&uStack_68);
                                uVar4 = String_Format_0x600029c(*(undefined8 *)puVar2,uVar4,0);
                                if (plVar7 != (long *)0x0) {
                                  (**(code **)(*plVar7 + 0x558))
                                            (plVar7,uVar4,*(undefined8 *)(*plVar7 + 0x560));
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
          }
        }
      }
    }
  }
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

