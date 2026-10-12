/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b6f3c0, Ghidra VA 02c6f3c0. */

void StarUpgrade_popup_onClick_Upgrade(long param_1)

{
  undefined *puVar1;
  undefined *puVar2;
  int iVar3;
  long lVar4;
  ulong uVar5;
  undefined8 uVar6;
  
  puVar2 = PTR_DAT_05e5e058;
  if ((bRam000000000625c2b8 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e5e528);
    func_0x029f5a50(PTR_DAT_05e591c0);
    func_0x029f5a50(PTR_DAT_05e5e058);
    func_0x029f5a50(PTR_DAT_05e63b60);
    func_0x029f5a50(PTR_DAT_05e63b68);
    func_0x029f5a50(PTR_DAT_05e63b70);
    bRam000000000625c2b8 = 1;
  }
  puVar1 = PTR_DAT_05e591c0;
  lVar4 = *(long *)puVar2;
  if (*(int *)(lVar4 + 0xe4) == 0) {
    func_0x029f5bd0();
    lVar4 = *(long *)puVar2;
  }
  lVar4 = **(long **)(lVar4 + 0xb8);
  if (*(int *)(*(long *)puVar1 + 0xe4) == 0) {
    func_0x029f5bd0(*(long *)puVar1);
  }
  uVar5 = Object_op_Equality_0x6000dec(lVar4,0,0);
  if (((uVar5 & 1) != 0) || (*(int *)(param_1 + 0x98) < 0)) {
    return;
  }
  if (lVar4 != 0) {
    iVar3 = StarUpgrade_manager_Upgrade(lVar4);
    if (iVar3 < 2) {
      if (iVar3 != 0) {
        if (iVar3 == 1) {
          if (cRam000000000625ba57 == '\0') {
            func_0x029f5a50(PTR_DAT_05e5dd70);
            cRam000000000625ba57 = '\x01';
          }
          if (**(long **)(*(long *)PTR_DAT_05e5dd70 + 0xb8) == 0) goto LAB_02c6f740;
          Sound_manager_PlaySfx_0x600054a
                    (0x3f800000,**(long **)(*(long *)PTR_DAT_05e5dd70 + 0xb8),0x10,0,0);
          if (*(int *)(*(long *)PTR_DAT_05e5e528 + 0xe4) == 0) {
            func_0x029f5bd0();
          }
          uVar6 = LocalizationManager_GetTranslation_0x60011b3
                            (*(undefined8 *)PTR_DAT_05e63b68,1,0,1,0,0,0,1,0);
          UI_manager_Alert_0x6000602(uVar6,0);
        }
LAB_02c6f72c:
        StarUpgrade_popup_Reload(param_1);
        return;
      }
      if (cRam000000000625ba57 == '\0') {
        func_0x029f5a50(PTR_DAT_05e5dd70);
        cRam000000000625ba57 = '\x01';
      }
      if (**(long **)(*(long *)PTR_DAT_05e5dd70 + 0xb8) != 0) {
        Sound_manager_PlaySfx_0x600054a
                  (0x3f800000,**(long **)(*(long *)PTR_DAT_05e5dd70 + 0xb8),0xf,0,0);
        if (*(int *)(*(long *)PTR_DAT_05e5e528 + 0xe4) == 0) {
          func_0x029f5bd0();
        }
        uVar6 = LocalizationManager_GetTranslation_0x60011b3
                          (*(undefined8 *)PTR_DAT_05e63b70,1,0,1,0,0,0,1,0);
        UI_manager_Alert_0x6000602(uVar6,0);
        if (*(long *)(param_1 + 0x80) != 0) {
          ParticleImage_Clear_0x60000d9(*(long *)(param_1 + 0x80),0);
          if (*(long *)(param_1 + 0x80) != 0) {
            ParticleImage_Play_0x60000d2(*(long *)(param_1 + 0x80),0);
            goto LAB_02c6f72c;
          }
        }
      }
    }
    else {
      if (iVar3 != 2) {
        if (iVar3 == 3) {
          if (cRam000000000625ba57 == '\0') {
            func_0x029f5a50(PTR_DAT_05e5dd70);
            cRam000000000625ba57 = '\x01';
          }
          if (**(long **)(*(long *)PTR_DAT_05e5dd70 + 0xb8) != 0) {
            Sound_manager_PlaySfx_0x600054a
                      (0x3f800000,**(long **)(*(long *)PTR_DAT_05e5dd70 + 0xb8),5,0,0);
            if (*(int *)(*(long *)PTR_DAT_05e5e528 + 0xe4) == 0) {
              func_0x029f5bd0();
            }
            uVar6 = LocalizationManager_GetTranslation_0x60011b3
                              (*(undefined8 *)PTR_DAT_05e63b60,1,0,1,0,0,0,1,0);
            UI_manager_Alert_0x6000602(uVar6,0);
            return;
          }
          goto LAB_02c6f740;
        }
        if (iVar3 != 4) goto LAB_02c6f72c;
      }
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
  }
LAB_02c6f740:
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

