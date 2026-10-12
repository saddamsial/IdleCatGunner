/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b4957c, Ghidra VA 02c4957c. */

void Mine_manager_Game_Enter(long param_1)

{
  int iVar1;
  undefined4 uVar2;
  undefined *puVar3;
  int iVar4;
  long lVar5;
  undefined8 uVar6;
  long lVar7;
  
  if ((bRam000000000625c109 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e5d5b0);
    func_0x029f5a50(PTR_DAT_05e5d338);
    func_0x029f5a50(PTR_DAT_05e5dd50);
    func_0x029f5a50(PTR_DAT_05e62670);
    func_0x029f5a50(PTR_DAT_05e5d920);
    func_0x029f5a50(PTR_DAT_05e5dc20);
    func_0x029f5a50(PTR_DAT_05e5d368);
    bRam000000000625c109 = 1;
  }
  Mine_manager_Ticket_Reload(param_1);
  iVar1 = *(int *)(param_1 + 0x50);
  iVar4 = Mine_manager_Ticket_MaxCount_return();
  if (iVar1 < iVar4) {
    if ((*(long *)(param_1 + 0x28) != 0) &&
       (lVar5 = Component_get_gameObject_0x6000c83(*(long *)(param_1 + 0x28),0), lVar5 != 0)) {
      GameObject_SetActive_0x6000cfe(lVar5,0,0);
      puVar3 = PTR_DAT_05e5d338;
      *(undefined2 *)(param_1 + 0x68) = 0;
      *(undefined1 *)(param_1 + 0x6a) = 0;
      lVar5 = *(long *)puVar3;
      *(int *)(param_1 + 0x50) = *(int *)(param_1 + 0x50) + 1;
      if (*(int *)(lVar5 + 0xe4) == 0) {
        func_0x029f5bd0();
        lVar5 = *(long *)puVar3;
      }
      puVar3 = PTR_DAT_05e5dc20;
      lVar7 = *(long *)PTR_DAT_05e5dc20;
      **(undefined1 **)(lVar5 + 0xb8) = 0;
      if (*(int *)(lVar7 + 0xe4) == 0) {
        func_0x029f5bd0(lVar7);
        lVar7 = *(long *)puVar3;
      }
      lVar5 = *(long *)(*(long *)(lVar7 + 0xb8) + 0x10);
      if (lVar5 != 0) {
        Tree_manager_Game_Exit_0x6000f03(lVar5,0);
        lVar5 = *(long *)(*(long *)(*(long *)PTR_DAT_05e62670 + 0xb8) + 8);
        if (lVar5 != 0) {
          Setting_EcoMode_Off_0x600052f(lVar5,0);
          *(undefined4 *)(param_1 + 100) = 0;
          if (*(long *)(param_1 + 0x20) != 0) {
            uVar2 = *(undefined4 *)(*(long *)(param_1 + 0x20) + 0x18);
            lVar5 = *(long *)PTR_DAT_05e5d368;
            *(undefined4 *)(param_1 + 0x6c) = uVar2;
            *(undefined4 *)(param_1 + 0x70) = uVar2;
            if (**(long **)(lVar5 + 0xb8) != 0) {
              UI_manager_UI_Reload_0x60005fa(**(long **)(lVar5 + 0xb8),2,0);
              puVar3 = PTR_DAT_05e5d5b0;
              if (*(long *)(*(long *)(*(long *)PTR_DAT_05e5d5b0 + 0xb8) + 8) != 0) {
                Cat_manager_Warp_0x600077c
                          (*(undefined4 *)(param_1 + 0x88),*(undefined4 *)(param_1 + 0x8c),
                           *(undefined4 *)(param_1 + 0x90));
                if (*(long *)(*(long *)(*(long *)puVar3 + 0xb8) + 8) != 0) {
                  Cat_manager_Balance_Reload_0x6000779();
                  if (cRam000000000625ba57 == '\0') {
                    func_0x029f5a50(PTR_DAT_05e5dd70);
                    cRam000000000625ba57 = '\x01';
                  }
                  if (**(long **)(*(long *)PTR_DAT_05e5dd70 + 0xb8) != 0) {
                    Sound_manager_PlaySfx_0x600054a
                              (0x3f800000,**(long **)(*(long *)PTR_DAT_05e5dd70 + 0xb8),10,0,0);
                    uVar6 = Mine_manager_Enter_Cor(param_1);
                    MonoBehaviour_StartCoroutine_0x6000d43(param_1,uVar6,0);
                    puVar3 = PTR_DAT_05e5dd50;
                    lVar5 = *(long *)PTR_DAT_05e5dd50;
                    if (*(int *)(lVar5 + 0xe4) == 0) {
                      func_0x029f5bd0();
                      lVar5 = *(long *)puVar3;
                    }
                    lVar5 = *(long *)(*(long *)(lVar5 + 0xb8) + 8);
                    if (lVar5 != 0) {
                      Mission_manager_MissionValue_Increase_0x600035e(lVar5,3,0);
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
  else {
    uVar6 = Alarm_get_MaxTicket_0x60012f0(0);
    UI_manager_Alert_0x6000602(uVar6,0);
    if (cRam000000000625ba57 == '\0') {
      func_0x029f5a50(PTR_DAT_05e5dd70);
      cRam000000000625ba57 = '\x01';
    }
    if (**(long **)(*(long *)PTR_DAT_05e5dd70 + 0xb8) != 0) {
      Sound_manager_PlaySfx_0x600054a
                (0x3f800000,**(long **)(*(long *)PTR_DAT_05e5dd70 + 0xb8),5,0,0);
      puVar3 = PTR_DAT_05e5d920;
      lVar5 = *(long *)PTR_DAT_05e5d920;
      if (*(int *)(lVar5 + 0xe4) == 0) {
        func_0x029f5bd0();
        lVar5 = *(long *)puVar3;
      }
      if (*(char *)(*(long *)(lVar5 + 0xb8) + 0xd) != '\0') {
        return;
      }
      if (*(long *)(param_1 + 0x48) != 0) {
        GameObject_SetActive_0x6000cfe(*(long *)(param_1 + 0x48),1,0);
        return;
      }
    }
  }
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

