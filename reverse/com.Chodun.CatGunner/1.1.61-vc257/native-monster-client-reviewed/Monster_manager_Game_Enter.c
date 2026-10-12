/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b4d7a4, Ghidra VA 02c4d7a4. */

void Monster_manager_Game_Enter(long param_1)

{
  int iVar1;
  undefined *puVar2;
  undefined *puVar3;
  long lVar4;
  long *plVar5;
  undefined8 uVar6;
  long lVar7;
  
  puVar2 = PTR_DAT_05e5d338;
  if ((bRam000000000625c138 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e5d5b0);
    func_0x029f5a50(PTR_DAT_05e5d338);
    func_0x029f5a50(PTR_DAT_05e62670);
    func_0x029f5a50(PTR_DAT_05e5dc20);
    func_0x029f5a50(PTR_DAT_05e5d368);
    func_0x029f5a50(PTR_DAT_05e5e048);
    bRam000000000625c138 = 1;
  }
  puVar3 = PTR_DAT_05e5dc20;
  lVar4 = *(long *)puVar2;
  if (*(int *)(lVar4 + 0xe4) == 0) {
    func_0x029f5bd0();
    lVar4 = *(long *)puVar2;
  }
  lVar7 = *(long *)puVar3;
  iVar1 = *(int *)(lVar7 + 0xe4);
  **(undefined1 **)(lVar4 + 0xb8) = 0;
  if (iVar1 == 0) {
    func_0x029f5bd0(lVar7);
    lVar7 = *(long *)puVar3;
  }
  puVar2 = PTR_DAT_05e62670;
  lVar4 = *(long *)(*(long *)(lVar7 + 0xb8) + 0x10);
  if (lVar4 != 0) {
    Tree_manager_Game_Exit_0x6000f03(lVar4,0);
    lVar4 = *(long *)(*(long *)(*(long *)puVar2 + 0xb8) + 8);
    if (lVar4 != 0) {
      Setting_EcoMode_Off_0x600052f(lVar4,0);
      if (*(long *)(param_1 + 0x40) != 0) {
        GameObject_SetActive_0x6000cfe(*(long *)(param_1 + 0x40),0,0);
        if (*(long *)(param_1 + 0x48) != 0) {
          GameObject_SetActive_0x6000cfe(*(long *)(param_1 + 0x48),1,0);
          *(undefined2 *)(param_1 + 0xb8) = 0;
          *(undefined1 *)(param_1 + 0xba) = 0;
          *(undefined4 *)(param_1 + 0xbc) = *(undefined4 *)(param_1 + 0xc0);
          if (*(long *)(param_1 + 200) != 0) {
            Disc_set_AngRadiansEnd_0x600003e(0x43b40000,*(long *)(param_1 + 200),0);
            plVar5 = *(long **)(param_1 + 0x140);
            *(undefined4 *)(param_1 + 0x13c) = 0;
            if (plVar5 != (long *)0x0) {
              (**(code **)(*plVar5 + 0x558))
                        (plVar5,*(undefined8 *)PTR_DAT_05e5e048,*(undefined8 *)(*plVar5 + 0x560));
              puVar2 = PTR_DAT_05e5d368;
              if (*(long *)(param_1 + 0x180) != 0) {
                GameObject_SetActive_0x6000cfe(*(long *)(param_1 + 0x180),1,0);
                puVar3 = PTR_DAT_05e5d5b0;
                if (**(long **)(*(long *)puVar2 + 0xb8) != 0) {
                  UI_manager_UI_Reload_0x60005fa(**(long **)(*(long *)puVar2 + 0xb8),4,0);
                  if (*(long *)(*(long *)(*(long *)puVar3 + 0xb8) + 8) != 0) {
                    Cat_manager_Warp_0x600077c
                              (*(undefined4 *)(param_1 + 0xe8),*(undefined4 *)(param_1 + 0xec),
                               *(undefined4 *)(param_1 + 0xf0));
                    if (*(long *)(*(long *)(*(long *)puVar3 + 0xb8) + 8) != 0) {
                      Cat_manager_Balance_Reload_0x6000779();
                      lVar4 = Camera_get_main_0x60002b1(0);
                      if (lVar4 != 0) {
                        Camera_set_orthographicSize_0x600027d(0x42340000,lVar4,0);
                        if (cRam000000000625ba57 == '\0') {
                          func_0x029f5a50(PTR_DAT_05e5dd70);
                          cRam000000000625ba57 = '\x01';
                        }
                        if (**(long **)(*(long *)PTR_DAT_05e5dd70 + 0xb8) != 0) {
                          Sound_manager_PlaySfx_0x600054a
                                    (0x3f800000,**(long **)(*(long *)PTR_DAT_05e5dd70 + 0xb8),10,0,0
                                    );
                          uVar6 = Monster_manager_Enter_Cor(param_1);
                          MonoBehaviour_StartCoroutine_0x6000d43(param_1,uVar6,0);
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
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

