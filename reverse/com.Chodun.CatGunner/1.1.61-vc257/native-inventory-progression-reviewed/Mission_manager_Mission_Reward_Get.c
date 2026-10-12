/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2aa4c5c, Ghidra VA 02ba4c5c. */

void Mission_manager_Mission_Reward_Get(long param_1,uint param_2)

{
  uint uVar1;
  undefined4 uVar2;
  undefined *puVar3;
  long lVar4;
  int iVar5;
  long lVar6;
  undefined1 *puVar7;
  uint uVar8;
  int iVar9;
  undefined1 uVar10;
  
  if ((bRam000000000625ba43 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e5d540);
    func_0x029f5a50(PTR_DAT_05e5dd50);
    bRam000000000625ba43 = 1;
  }
  puVar3 = PTR_DAT_05e5dd50;
  lVar6 = *(long *)(param_1 + 0x20);
  if (lVar6 != 0) {
    if (*(uint *)(lVar6 + 0x18) <= param_2) {
LAB_02ba4f10:
                    /* WARNING: Subroutine does not return */
      Throw_Index_Wrapper();
    }
    lVar6 = *(long *)(lVar6 + (long)(int)param_2 * 8 + 0x20);
    if (lVar6 != 0) {
      if (*(char *)(lVar6 + 0x24) == '\0') {
        if (*(char *)(lVar6 + 0x26) != '\0') {
          lVar4 = *(long *)PTR_DAT_05e5dd50;
          if (*(int *)(lVar4 + 0xe4) == 0) {
            func_0x029f5bd0();
            lVar4 = *(long *)puVar3;
          }
          if (**(char **)(lVar4 + 0xb8) == '\0') {
            if (*(long *)(param_1 + 0xa8) != 0) {
              GameObject_SetActive_0x6000cfe(*(long *)(param_1 + 0xa8),1,0);
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
            goto LAB_02ba4f0c;
          }
        }
        iVar9 = *(int *)(lVar6 + 0x18);
        iVar5 = 0;
        if (iVar9 < 2) {
          if (iVar9 == 0) {
            iVar5 = *(int *)(param_1 + 0x50);
          }
          else if (iVar9 == 1) {
            iVar5 = *(int *)(param_1 + 0x54);
          }
        }
        else if (iVar9 == 2) {
          iVar5 = *(int *)(param_1 + 0x58);
        }
        else if (iVar9 == 3) {
          iVar5 = *(int *)(param_1 + 0x5c);
        }
        if (*(int *)(lVar6 + 0x1c) <= iVar5) {
          *(undefined1 *)(lVar6 + 0x24) = 1;
          Mission_manager_Exp_Get(param_1,*(undefined4 *)(lVar6 + 0x20));
          if (cRam000000000625ba57 == '\0') {
            func_0x029f5a50(PTR_DAT_05e5dd70);
            cRam000000000625ba57 = '\x01';
          }
          if (**(long **)(*(long *)PTR_DAT_05e5dd70 + 0xb8) != 0) {
            Sound_manager_PlaySfx_0x600054a
                      (0x3f800000,**(long **)(*(long *)PTR_DAT_05e5dd70 + 0xb8),7,0,0);
            if ((*(long *)(param_1 + 0xa0) != 0) &&
               (*(long *)(*(long *)(param_1 + 0xa0) + 0x38) != 0)) {
              Bounce_Bounce_Start_0x600023c();
              Mission_manager_RestartAlertLoop_0x600033e(param_1);
              puVar3 = PTR_DAT_05e5dd50;
              lVar6 = *(long *)(param_1 + 0x20);
              if (lVar6 != 0) {
                uVar1 = *(uint *)(lVar6 + 0x18);
                if ((int)uVar1 < 1) {
                  iVar9 = 0;
                }
                else {
                  uVar8 = 0;
                  iVar9 = 0;
                  do {
                    if (uVar1 == uVar8) goto LAB_02ba4f10;
                    lVar4 = *(long *)(lVar6 + (long)(int)uVar8 * 8 + 0x20);
                    if (lVar4 == 0) goto LAB_02ba4f0c;
                    uVar8 = uVar8 + 1;
                    iVar9 = iVar9 + (uint)*(byte *)(lVar4 + 0x24);
                  } while ((uVar1 & ((int)uVar1 >> 0x1f ^ 0xffffffffU)) != uVar8);
                }
                uVar2 = *(undefined4 *)(param_1 + 0x48);
                lVar6 = *(long *)PTR_DAT_05e5dd50;
                if (*(int *)(lVar6 + 0xe4) == 0) {
                  func_0x029f5bd0();
                  lVar6 = *(long *)puVar3;
                }
                puVar7 = *(undefined1 **)(lVar6 + 0xb8);
                if (puVar7[1] == '\0') {
                  if (*(int *)(lVar6 + 0xe4) == 0) {
                    func_0x029f5bd0();
                    puVar7 = *(undefined1 **)(*(long *)puVar3 + 0xb8);
                  }
                  uVar10 = *puVar7;
                }
                else {
                  uVar10 = 2;
                }
                if (*(int *)(*(long *)PTR_DAT_05e5d540 + 0xe4) == 0) {
                  func_0x029f5bd0();
                }
                AppsFlyerInit_SendLog_Mission_0x600022b(param_2,iVar9,uVar2,uVar10,0);
                return;
              }
            }
          }
          goto LAB_02ba4f0c;
        }
      }
      return;
    }
  }
LAB_02ba4f0c:
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

