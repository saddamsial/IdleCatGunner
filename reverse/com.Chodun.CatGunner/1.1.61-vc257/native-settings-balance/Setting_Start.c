/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b20010, Ghidra VA 02c20010. */

void Setting_Start(long param_1)

{
  bool bVar1;
  undefined *puVar2;
  undefined *puVar3;
  byte bVar4;
  int iVar5;
  int iVar6;
  long lVar7;
  undefined8 uVar8;
  long lVar9;
  
  puVar3 = PTR_DAT_05e62a80;
  puVar2 = PTR_DAT_05e62a78;
  if ((bRam000000000625bf52 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e62a78);
    func_0x029f5a50(PTR_DAT_05e62a80);
    bRam000000000625bf52 = 1;
  }
  lVar7 = PlayGamesPlatform_get_Instance_0x600004f(0);
  uVar8 = func_0x029f5cec(*(undefined8 *)puVar2);
  func_0x03d31410(uVar8,param_1,*(undefined8 *)puVar3,0);
  if (lVar7 == 0) {
                    /* WARNING: Subroutine does not return */
    Throw_NullReference_Wrapper();
  }
  PlayGamesPlatform_Authenticate_0x6000057(lVar7,uVar8,0);
  if ((bRam000000000625bf53 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e58a78);
    bRam000000000625bf53 = 1;
  }
  if (*(long *)(param_1 + 0x28) != 0) {
    GameObject_SetActive_0x6000cfe(*(long *)(param_1 + 0x28),*(char *)(param_1 + 0x20) == '\0',0);
    if (*(long *)(param_1 + 0x30) != 0) {
      GameObject_SetActive_0x6000cfe(*(long *)(param_1 + 0x30),*(undefined1 *)(param_1 + 0x20),0);
      if (*(long *)(param_1 + 0x38) != 0) {
        GameObject_SetActive_0x6000cfe
                  (*(long *)(param_1 + 0x38),*(char *)(param_1 + 0x21) == '\0',0);
        if (*(long *)(param_1 + 0x40) != 0) {
          GameObject_SetActive_0x6000cfe
                    (*(long *)(param_1 + 0x40),*(undefined1 *)(param_1 + 0x21),0);
          if (*(long *)(param_1 + 0x48) != 0) {
            GameObject_SetActive_0x6000cfe
                      (*(long *)(param_1 + 0x48),*(char *)(param_1 + 0x22) == '\0',0);
            if (*(long *)(param_1 + 0x50) != 0) {
              GameObject_SetActive_0x6000cfe
                        (*(long *)(param_1 + 0x50),*(undefined1 *)(param_1 + 0x22),0);
              if (cRam000000000625ba57 == '\0') {
                func_0x029f5a50(PTR_DAT_05e5dd70);
                cRam000000000625ba57 = '\x01';
              }
              puVar2 = PTR_DAT_05e58a78;
              if (**(long **)(*(long *)PTR_DAT_05e5dd70 + 0xb8) != 0) {
                Sound_manager_ApplyBGMMute
                          (**(long **)(*(long *)PTR_DAT_05e5dd70 + 0xb8),
                           *(undefined1 *)(param_1 + 0x20));
                if (*(int *)(*(long *)puVar2 + 0xe4) == 0) {
                  func_0x029f5bd0();
                }
                iVar5 = Application_get_platform_0x600023c(0);
                iVar6 = Application_get_platform_0x600023c(0);
                bVar4 = Setting_IsSignedIn_0x6000518();
                if (*(long *)(param_1 + 0x58) != 0) {
                  GameObject_SetActive_0x6000cfe
                            (*(long *)(param_1 + 0x58),iVar5 == 0xb & (bVar4 ^ 1),0);
                  if (*(long *)(param_1 + 0x60) != 0) {
                    GameObject_SetActive_0x6000cfe
                              (*(long *)(param_1 + 0x60),iVar6 == 8 & (bVar4 ^ 1),0);
                    if (*(long *)(param_1 + 0x88) != 0) {
                      GameObject_SetActive_0x6000cfe(*(long *)(param_1 + 0x88),iVar5 == 0xb,0);
                      bVar1 = iVar6 == 8 || iVar5 == 0xb;
                      if (*(long *)(param_1 + 0x68) != 0) {
                        GameObject_SetActive_0x6000cfe(*(long *)(param_1 + 0x68),bVar4 & bVar1,0);
                        if (*(long *)(param_1 + 0x70) != 0) {
                          GameObject_SetActive_0x6000cfe(*(long *)(param_1 + 0x70),bVar4 & bVar1,0);
                          lVar7 = *(long *)(param_1 + 0x78);
                          if (lVar7 != 0) {
                            if ((bRam000000000626c55f & 1) == 0) {
                              func_0x029f5a50(PTR_DAT_05ed56d8,0,0);
                              bRam000000000626c55f = 1;
                            }
                            if (lVar7 != 0) {
                              lVar9 = *(long *)(lVar7 + 0x10);
                              if (lVar9 == 0) {
                                func_0x057f539c(lVar7,0);
                              }
                              if (pcRam000000000626c5d0 == (code *)0x0) {
                                pcRam000000000626c5d0 = (code *)func_0x029f5a0c(&UNK_011a70e7);
                              }
                    /* WARNING: Could not recover jumptable at 0x057dffb4. Too many branches */
                    /* WARNING: Treating indirect jump as call */
                              (*pcRam000000000626c5d0)(lVar9,0);
                              return;
                            }
                    /* WARNING: Subroutine does not return */
                            Throw_NullReference_Wrapper();
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

