/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b535b4, Ghidra VA 02c535b4. */

undefined8 Raid_Mission_manager_Reward_ReGet(long param_1,uint param_2)

{
  undefined4 uVar1;
  undefined *puVar2;
  undefined *puVar3;
  int iVar4;
  long *plVar5;
  undefined8 uVar6;
  ulong uVar7;
  long lVar8;
  long lVar9;
  long lVar10;
  undefined4 uStack_50;
  undefined4 uStack_4c;
  undefined4 uStack_48;
  uint uStack_44;
  
  if ((bRam000000000625c17d & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e58f08);
    func_0x029f5a50(PTR_DAT_05e5d338);
    func_0x029f5a50(PTR_DAT_05e59768);
    func_0x029f5a50(PTR_DAT_05e591c0);
    func_0x029f5a50(PTR_DAT_05e5e068);
    func_0x029f5a50(PTR_DAT_05e635e0);
    bRam000000000625c17d = 1;
  }
  puVar3 = PTR_DAT_05e591c0;
  iVar4 = Raid_Mission_manager_State_return(param_1,param_2);
  if (iVar4 == 2) {
    if (*(char *)(param_1 + 0x48) != '\0') {
      lVar8 = *(long *)(param_1 + 0x40);
      if (lVar8 != 0) {
        if (*(uint *)(lVar8 + 0x18) <= param_2) {
LAB_02c53a18:
                    /* WARNING: Subroutine does not return */
          Throw_Index_Wrapper();
        }
        lVar10 = (long)(int)param_2;
        lVar9 = *(long *)(param_1 + 0x20);
        *(undefined1 *)(lVar8 + lVar10 + 0x20) = 1;
        if (lVar9 != 0) {
          if (*(uint *)(lVar9 + 0x18) <= param_2) goto LAB_02c53a18;
          lVar8 = *(long *)(lVar9 + lVar10 * 8 + 0x20);
          if (lVar8 != 0) {
            uVar1 = *(undefined4 *)(lVar8 + 0x18);
            if (*(int *)(*(long *)PTR_DAT_05e5d338 + 0xe4) == 0) {
              func_0x029f5bd0();
            }
            Gamemanager_Get_StarGem_0x6000080(uVar1,0);
            Raid_Mission_manager_SendLog_MissionRaid(param_1,param_2,1);
            SaveSystem_Save_0x600048a(0);
            plVar5 = (long *)func_0x029f5b40(*(undefined8 *)PTR_DAT_05e59768,4);
            puVar2 = PTR_DAT_05e58a10;
            uStack_44 = param_2;
            lVar8 = func_0x029f5bd8(*(undefined8 *)(PTR_DAT_05e58a10 + 0x48),&uStack_44);
            if (plVar5 != (long *)0x0) {
              if ((lVar8 != 0) &&
                 (lVar9 = func_0x029f5bd4(lVar8,*(undefined8 *)(*plVar5 + 0x40)), lVar9 == 0))
              goto LAB_02c53a1c;
              if ((int)plVar5[3] != 0) {
                plVar5[4] = lVar8;
                Managed_WriteBarrier(plVar5 + 4,lVar8);
                lVar8 = *(long *)(param_1 + 0x20);
                if (lVar8 == 0) goto LAB_02c53a14;
                if (param_2 < *(uint *)(lVar8 + 0x18)) {
                  lVar8 = *(long *)(lVar8 + lVar10 * 8 + 0x20);
                  if (lVar8 == 0) goto LAB_02c53a14;
                  uStack_48 = *(undefined4 *)(lVar8 + 0x18);
                  lVar8 = func_0x029f5bd8(*(undefined8 *)(puVar2 + 0x48),&uStack_48);
                  if ((lVar8 != 0) &&
                     (lVar9 = func_0x029f5bd4(lVar8,*(undefined8 *)(*plVar5 + 0x40)), lVar9 == 0)) {
LAB_02c53a1c:
                    uVar6 = func_0x029f5d20();
                    lVar8 = func_0x029f5bc0(uVar6,0);
                    *(undefined4 *)(lVar8 + 0x60) = 0xffffffff;
                    uVar6 = MonoBehaviour__ctor_0x6000d5a(lVar8,0);
                    return uVar6;
                  }
                  if ((*(uint *)(plVar5 + 3) & 0xfffffffe) != 0) {
                    plVar5[5] = lVar8;
                    Managed_WriteBarrier(plVar5 + 5,lVar8);
                    uStack_4c = Raid_Mission_manager_get_ReGet_Count(param_1);
                    lVar8 = func_0x029f5bd8(*(undefined8 *)(puVar2 + 0x48),&uStack_4c);
                    if ((lVar8 != 0) &&
                       (lVar9 = func_0x029f5bd4(lVar8,*(undefined8 *)(*plVar5 + 0x40)), lVar9 == 0))
                    goto LAB_02c53a1c;
                    if (2 < *(uint *)(plVar5 + 3)) {
                      plVar5[6] = lVar8;
                      Managed_WriteBarrier(plVar5 + 6,lVar8);
                      uStack_50 = 8;
                      lVar8 = func_0x029f5bd8(*(undefined8 *)(puVar2 + 0x48),&uStack_50);
                      if ((lVar8 != 0) &&
                         (lVar9 = func_0x029f5bd4(lVar8,*(undefined8 *)(*plVar5 + 0x40)), lVar9 == 0
                         )) goto LAB_02c53a1c;
                      if ((*(uint *)(plVar5 + 3) & 0xfffffffc) != 0) {
                        plVar5[7] = lVar8;
                        Managed_WriteBarrier(plVar5 + 7,lVar8);
                        uVar6 = String_Format_0x600029f(*(undefined8 *)PTR_DAT_05e635e0,plVar5,0);
                        if (*(int *)(*(long *)PTR_DAT_05e58f08 + 0xe4) == 0) {
                          func_0x029f5bd0(*(long *)PTR_DAT_05e58f08);
                        }
                        Debug_Log_0x600033c(uVar6,0);
                        if (cRam000000000625ba57 == '\0') {
                          func_0x029f5a50(PTR_DAT_05e5dd70);
                          cRam000000000625ba57 = '\x01';
                        }
                        puVar2 = PTR_DAT_05e5dd70;
                        uVar6 = **(undefined8 **)(*(long *)PTR_DAT_05e5dd70 + 0xb8);
                        if (*(int *)(*(long *)puVar3 + 0xe4) == 0) {
                          func_0x029f5bd0();
                        }
                        uVar7 = Object_op_Inequality_0x6000ded(uVar6,0,0);
                        if ((uVar7 & 1) != 0) {
                          if (cRam000000000625ba57 == '\0') {
                            func_0x029f5a50(PTR_DAT_05e5dd70);
                            cRam000000000625ba57 = '\x01';
                          }
                          if (**(long **)(*(long *)puVar2 + 0xb8) == 0) goto LAB_02c53a14;
                          Sound_manager_PlaySfx_0x600054a
                                    (0x3f800000,**(long **)(*(long *)puVar2 + 0xb8),7,0,0);
                        }
                        lVar8 = *(long *)(*(long *)(*(long *)PTR_DAT_05e5e068 + 0xb8) + 8);
                        if (lVar8 != 0) {
                          (**(code **)(lVar8 + 0x18))
                                    (*(undefined8 *)(lVar8 + 0x40),*(undefined8 *)(lVar8 + 0x28));
                        }
                        return 1;
                      }
                    }
                  }
                }
              }
              goto LAB_02c53a18;
            }
          }
        }
      }
LAB_02c53a14:
                    /* WARNING: Subroutine does not return */
      Throw_NullReference_Wrapper();
    }
    Raid_Mission_manager_Ticket_Popup_Open(param_1);
  }
  else {
    if (cRam000000000625ba57 == '\0') {
      func_0x029f5a50(PTR_DAT_05e5dd70);
      cRam000000000625ba57 = '\x01';
    }
    puVar2 = PTR_DAT_05e5dd70;
    uVar6 = **(undefined8 **)(*(long *)PTR_DAT_05e5dd70 + 0xb8);
    if (*(int *)(*(long *)puVar3 + 0xe4) == 0) {
      func_0x029f5bd0();
    }
    uVar7 = Object_op_Inequality_0x6000ded(uVar6,0,0);
    if ((uVar7 & 1) != 0) {
      if (cRam000000000625ba57 == '\0') {
        func_0x029f5a50(PTR_DAT_05e5dd70);
        cRam000000000625ba57 = '\x01';
      }
      if (**(long **)(*(long *)puVar2 + 0xb8) == 0) goto LAB_02c53a14;
      Sound_manager_PlaySfx_0x600054a(0x3f800000,**(long **)(*(long *)puVar2 + 0xb8),5,0,0);
    }
  }
  return 0;
}

