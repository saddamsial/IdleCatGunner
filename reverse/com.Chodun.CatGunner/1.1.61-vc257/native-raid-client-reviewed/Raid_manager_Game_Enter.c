/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b577f8, Ghidra VA 02c577f8. */

void Raid_manager_Game_Enter(long param_1,undefined4 param_2)

{
  undefined *puVar1;
  undefined *puVar2;
  int iVar3;
  undefined4 uVar4;
  ulong uVar5;
  long lVar6;
  long lVar7;
  undefined8 uVar8;
  
  if ((bRam000000000625c1ae & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e5d5b0);
    func_0x029f5a50(PTR_DAT_05e5d338);
    func_0x029f5a50(PTR_DAT_05e591c0);
    func_0x029f5a50(PTR_DAT_05e5e070);
    func_0x029f5a50(PTR_DAT_05e62670);
    func_0x029f5a50(PTR_DAT_05e5dc20);
    func_0x029f5a50(PTR_DAT_05e5d368);
    bRam000000000625c1ae = 1;
  }
  *(undefined4 *)(param_1 + 0xe4) = param_2;
  *(undefined1 *)(param_1 + 0xe8) = 0;
  iVar3 = Raid_manager_GetEquippedCount(param_1);
  if (iVar3 == 0) {
    lVar6 = *(long *)(param_1 + 0x88);
    if (lVar6 != 0) {
      iVar3 = 0;
      do {
        if (*(int *)(lVar6 + 0x18) <= iVar3) goto LAB_02c57884;
        Raid_manager_Gun_Select_Default(param_1,iVar3);
        lVar6 = *(long *)(param_1 + 0x88);
        iVar3 = iVar3 + 1;
      } while (lVar6 != 0);
    }
  }
  else {
LAB_02c57884:
    uVar8 = *(undefined8 *)(param_1 + 0x30);
    if (*(int *)(*(long *)PTR_DAT_05e591c0 + 0xe4) == 0) {
      func_0x029f5bd0();
    }
    uVar5 = Object_op_Inequality_0x6000ded(uVar8,0,0);
    if ((uVar5 & 1) != 0) {
      if ((*(long *)(param_1 + 0x30) == 0) ||
         (lVar6 = Component_get_gameObject_0x6000c83(*(long *)(param_1 + 0x30),0), lVar6 == 0))
      goto LAB_02c57ad0;
      GameObject_SetActive_0x6000cfe(lVar6,0,0);
    }
    puVar2 = PTR_DAT_05e5dc20;
    puVar1 = PTR_DAT_05e5d338;
    lVar6 = *(long *)PTR_DAT_05e5d338;
    if (*(int *)(lVar6 + 0xe4) == 0) {
      func_0x029f5bd0();
      lVar6 = *(long *)puVar1;
    }
    lVar7 = *(long *)puVar2;
    iVar3 = *(int *)(lVar7 + 0xe4);
    **(undefined1 **)(lVar6 + 0xb8) = 0;
    if (iVar3 == 0) {
      func_0x029f5bd0(lVar7);
      lVar7 = *(long *)puVar2;
    }
    puVar1 = PTR_DAT_05e62670;
    lVar6 = *(long *)(*(long *)(lVar7 + 0xb8) + 0x10);
    if (lVar6 != 0) {
      Tree_manager_Game_Exit_0x6000f03(lVar6,0);
      lVar6 = *(long *)(*(long *)(*(long *)puVar1 + 0xb8) + 8);
      if (lVar6 != 0) {
        Setting_EcoMode_Off_0x600052f(lVar6,0);
        if (*(long *)(param_1 + 0xc0) != 0) {
          GameObject_SetActive_0x6000cfe(*(long *)(param_1 + 0xc0),0,0);
          if (*(long *)(param_1 + 200) != 0) {
            GameObject_SetActive_0x6000cfe(*(long *)(param_1 + 200),1,0);
            if (*(long *)(param_1 + 0xd0) != 0) {
              GameObject_SetActive_0x6000cfe(*(long *)(param_1 + 0xd0),1,0);
              if ((*(long *)(param_1 + 0xf0) != 0) &&
                 (lVar6 = Component_get_gameObject_0x6000c83(*(long *)(param_1 + 0xf0),0),
                 puVar2 = PTR_DAT_05e5e070, puVar1 = PTR_DAT_05e5d368, lVar6 != 0)) {
                GameObject_SetActive_0x6000cfe(lVar6,0,0);
                *(undefined4 *)(param_1 + 0xb0) = 0;
                Raid_manager_Season_Check_0x600090a(param_1);
                if (*(int *)(*(long *)puVar2 + 0xe4) == 0) {
                  func_0x029f5bd0();
                }
                uVar4 = Raid_manager_GetBossIndex();
                lVar6 = *(long *)puVar1;
                *(undefined4 *)(param_1 + 0x20) = uVar4;
                puVar1 = PTR_DAT_05e5d5b0;
                if (**(long **)(lVar6 + 0xb8) != 0) {
                  UI_manager_UI_Reload_0x60005fa(**(long **)(lVar6 + 0xb8),5,0);
                  if (*(long *)(*(long *)(*(long *)puVar1 + 0xb8) + 8) != 0) {
                    Cat_manager_Warp_0x600077c
                              (*(undefined4 *)(param_1 + 0xd8),*(undefined4 *)(param_1 + 0xdc),
                               *(undefined4 *)(param_1 + 0xe0));
                    if (*(long *)(*(long *)(*(long *)puVar1 + 0xb8) + 8) != 0) {
                      Cat_manager_Balance_Reload_0x6000779();
                      if (cRam000000000625ba57 == '\0') {
                        func_0x029f5a50(PTR_DAT_05e5dd70);
                        cRam000000000625ba57 = '\x01';
                      }
                      if (**(long **)(*(long *)PTR_DAT_05e5dd70 + 0xb8) != 0) {
                        Sound_manager_PlaySfx_0x600054a
                                  (0x3f800000,**(long **)(*(long *)PTR_DAT_05e5dd70 + 0xb8),10,0,0);
                        uVar8 = Raid_manager_Enter_Cor_0x6000918(param_1);
                        MonoBehaviour_StartCoroutine_0x6000d43(param_1,uVar8,0);
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
LAB_02c57ad0:
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

