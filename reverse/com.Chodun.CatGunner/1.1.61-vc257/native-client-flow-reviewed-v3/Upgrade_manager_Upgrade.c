/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2bb15b4, Ghidra VA 02cb15b4. */

undefined4 Upgrade_manager_Upgrade(long param_1,uint param_2)

{
  undefined *puVar1;
  undefined *puVar2;
  int iVar3;
  uint uVar4;
  ulong uVar5;
  long lVar6;
  long lVar7;
  long lVar8;
  undefined1 auVar9 [16];
  undefined8 uStack_90;
  undefined8 uStack_88;
  undefined8 uStack_80;
  undefined8 uStack_78;
  undefined8 uStack_70;
  undefined8 uStack_68;
  undefined8 uStack_60;
  undefined8 uStack_58;
  undefined8 uStack_50;
  undefined8 uStack_48;
  undefined8 uStack_40;
  undefined8 uStack_38;
  
  if ((bRam000000000625c556 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e5d5b0);
    func_0x029f5a50(PTR_DAT_05e5d338);
    bRam000000000625c556 = 1;
  }
  lVar6 = *(long *)(param_1 + 0x20);
  uStack_48 = 0;
  uStack_50 = 0;
  uStack_38 = 0;
  uStack_40 = 0;
  if (lVar6 != 0) {
    if (*(uint *)(lVar6 + 0x18) <= param_2) goto LAB_02cb1880;
    lVar7 = (long)(int)param_2;
    lVar6 = *(long *)(lVar6 + lVar7 * 8 + 0x20);
    if (lVar6 != 0) {
      iVar3 = ObscuredInt_op_Implicit_0x6000412
                        (*(undefined8 *)(lVar6 + 0x18),*(undefined8 *)(lVar6 + 0x20),0);
      if (9999 < iVar3) {
        return 0;
      }
      lVar6 = *(long *)(param_1 + 0x20);
      if (lVar6 != 0) {
        if (*(uint *)(lVar6 + 0x18) <= param_2) goto LAB_02cb1880;
        lVar6 = *(long *)(lVar6 + lVar7 * 8 + 0x20);
        if (lVar6 != 0) {
          lVar8 = *(long *)(param_1 + 0x30);
          uVar4 = ObscuredInt_op_Implicit_0x6000412
                            (*(undefined8 *)(lVar6 + 0x18),*(undefined8 *)(lVar6 + 0x20),0);
          puVar1 = PTR_DAT_05e5d338;
          if (lVar8 != 0) {
            if (*(uint *)(lVar8 + 0x18) <= uVar4) {
LAB_02cb1880:
                    /* WARNING: Subroutine does not return */
              Throw_Index_Wrapper();
            }
            lVar8 = lVar8 + (long)(int)uVar4 * 0x20;
            lVar6 = *(long *)PTR_DAT_05e5d338;
            uStack_48 = *(undefined8 *)(lVar8 + 0x28);
            uStack_50 = *(undefined8 *)(lVar8 + 0x20);
            uStack_38 = *(undefined8 *)(lVar8 + 0x38);
            uStack_40 = *(undefined8 *)(lVar8 + 0x30);
            if (*(int *)(lVar6 + 0xe4) == 0) {
              func_0x029f5bd0();
              lVar6 = *(long *)puVar1;
            }
            uVar5 = InfVal_op_GreaterThanOrEqual_0x6000081
                              (*(long *)(lVar6 + 0xb8) + 0x30,&uStack_50,0);
            if ((uVar5 & 1) == 0) {
              return 0;
            }
            uStack_68 = uStack_48;
            uStack_70 = uStack_50;
            uStack_58 = uStack_38;
            uStack_60 = uStack_40;
            if (*(int *)(*(long *)puVar1 + 0xe4) == 0) {
              func_0x029f5bd0();
            }
            uStack_88 = uStack_68;
            uStack_90 = uStack_70;
            uStack_78 = uStack_58;
            uStack_80 = uStack_60;
            Gamemanager_Lose_Money(&uStack_90,0);
            lVar6 = *(long *)(param_1 + 0x20);
            if (lVar6 != 0) {
              if (*(uint *)(lVar6 + 0x18) <= param_2) goto LAB_02cb1880;
              lVar6 = *(long *)(lVar6 + lVar7 * 8 + 0x20);
              if (lVar6 != 0) {
                iVar3 = ObscuredInt_op_Implicit_0x6000412
                                  (*(undefined8 *)(lVar6 + 0x18),*(undefined8 *)(lVar6 + 0x20),0);
                auVar9 = ObscuredInt_op_Implicit_0x6000411(iVar3 + 1,0);
                *(undefined1 (*) [16])(lVar6 + 0x18) = auVar9;
                if (*(long *)(param_1 + 0x58) != 0) {
                  Upgrade_list_Reload();
                  puVar2 = PTR_DAT_05e5d5b0;
                  lVar6 = *(long *)(*(long *)(*(long *)PTR_DAT_05e5d5b0 + 0xb8) + 8);
                  if (lVar6 != 0) {
                    Cat_manager_Balance_Reload_0x6000779(lVar6,0);
                    if (**(char **)(*(long *)puVar2 + 0xb8) == '\0') {
                      if (cRam000000000625ba57 == '\0') {
                        func_0x029f5a50(PTR_DAT_05e5dd70);
                        cRam000000000625ba57 = '\x01';
                      }
                      if (**(long **)(*(long *)PTR_DAT_05e5dd70 + 0xb8) == 0) goto LAB_02cb187c;
                      Sound_manager_PlaySfx_0x600054a
                                (0x3f800000,**(long **)(*(long *)PTR_DAT_05e5dd70 + 0xb8),4,0,0);
                    }
                    lVar6 = *(long *)(param_1 + 0x28);
                    if (lVar6 != 0) {
                      if (*(uint *)(lVar6 + 0x18) <= param_2) goto LAB_02cb1880;
                      lVar6 = *(long *)(lVar6 + lVar7 * 8 + 0x20);
                      if (lVar6 != 0) {
                        uVar5 = GameObject_get_activeInHierarchy_0x6000d00(lVar6,0);
                        if ((uVar5 & 1) != 0) {
                          lVar6 = *(long *)(param_1 + 0x28);
                          if (lVar6 == 0) goto LAB_02cb187c;
                          if (*(uint *)(lVar6 + 0x18) <= param_2) goto LAB_02cb1880;
                          lVar6 = *(long *)(lVar6 + lVar7 * 8 + 0x20);
                          if (lVar6 == 0) goto LAB_02cb187c;
                          GameObject_SetActive_0x6000cfe(lVar6,0,0);
                        }
                        lVar6 = *(long *)(param_1 + 0x28);
                        if (lVar6 != 0) {
                          if (*(uint *)(lVar6 + 0x18) <= param_2) goto LAB_02cb1880;
                          lVar6 = *(long *)(lVar6 + lVar7 * 8 + 0x20);
                          if (lVar6 != 0) {
                            GameObject_SetActive_0x6000cfe(lVar6,1,0);
                            if (param_2 == 2) {
                              if (*(int *)(*(long *)puVar1 + 0xe4) == 0) {
                                func_0x029f5bd0();
                              }
                              Gamemanager_InvalidateMoneyCache_0x6000071(0);
                              return 1;
                            }
                            return 1;
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
LAB_02cb187c:
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

