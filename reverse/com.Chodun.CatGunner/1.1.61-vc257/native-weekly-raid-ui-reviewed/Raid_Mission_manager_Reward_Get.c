/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b531d8, Ghidra VA 02c531d8. */

bool Raid_Mission_manager_Reward_Get(long param_1,uint param_2)

{
  undefined4 uVar1;
  undefined *puVar2;
  undefined *puVar3;
  int iVar4;
  undefined8 uVar5;
  undefined8 uVar6;
  ulong uVar7;
  long lVar8;
  long lVar9;
  long lVar10;
  undefined4 uStack_38;
  uint uStack_34;
  
  if ((bRam000000000625c17c & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e58f08);
    func_0x029f5a50(PTR_DAT_05e5d338);
    func_0x029f5a50(PTR_DAT_05e591c0);
    func_0x029f5a50(PTR_DAT_05e5e068);
    func_0x029f5a50(PTR_DAT_05e635d8);
    bRam000000000625c17c = 1;
  }
  puVar3 = PTR_DAT_05e591c0;
  iVar4 = Raid_Mission_manager_State_return(param_1,param_2);
  if (iVar4 != 1) {
    if (cRam000000000625ba57 == '\0') {
      func_0x029f5a50(PTR_DAT_05e5dd70);
      cRam000000000625ba57 = '\x01';
    }
    puVar2 = PTR_DAT_05e5dd70;
    uVar5 = **(undefined8 **)(*(long *)PTR_DAT_05e5dd70 + 0xb8);
    if (*(int *)(*(long *)puVar3 + 0xe4) == 0) {
      func_0x029f5bd0();
    }
    uVar7 = Object_op_Inequality_0x6000ded(uVar5,0,0);
    if ((uVar7 & 1) != 0) {
      if (cRam000000000625ba57 == '\0') {
        func_0x029f5a50(PTR_DAT_05e5dd70);
        cRam000000000625ba57 = '\x01';
      }
      if (**(long **)(*(long *)puVar2 + 0xb8) == 0) goto LAB_02c534f8;
      Sound_manager_PlaySfx_0x600054a(0x3f800000,**(long **)(*(long *)puVar2 + 0xb8),5,0,0);
    }
LAB_02c534dc:
    return iVar4 == 1;
  }
  lVar8 = *(long *)(param_1 + 0x38);
  if (lVar8 != 0) {
    if (*(uint *)(lVar8 + 0x18) <= param_2) {
LAB_02c534fc:
                    /* WARNING: Subroutine does not return */
      Throw_Index_Wrapper();
    }
    lVar10 = (long)(int)param_2;
    lVar9 = *(long *)(param_1 + 0x20);
    *(undefined1 *)(lVar8 + lVar10 + 0x20) = 1;
    if (lVar9 != 0) {
      if (*(uint *)(lVar9 + 0x18) <= param_2) goto LAB_02c534fc;
      lVar8 = *(long *)(lVar9 + lVar10 * 8 + 0x20);
      if (lVar8 != 0) {
        uVar1 = *(undefined4 *)(lVar8 + 0x18);
        if (*(int *)(*(long *)PTR_DAT_05e5d338 + 0xe4) == 0) {
          func_0x029f5bd0();
        }
        Gamemanager_Get_StarGem_0x6000080(uVar1,0);
        Raid_Mission_manager_SendLog_MissionRaid(param_1,param_2,0);
        SaveSystem_Save_0x600048a(0);
        puVar2 = PTR_DAT_05e58a10;
        uStack_34 = param_2;
        uVar5 = func_0x029f5bd8(*(undefined8 *)(PTR_DAT_05e58a10 + 0x48),&uStack_34);
        lVar8 = *(long *)(param_1 + 0x20);
        if (lVar8 != 0) {
          if (*(uint *)(lVar8 + 0x18) <= param_2) goto LAB_02c534fc;
          lVar8 = *(long *)(lVar8 + lVar10 * 8 + 0x20);
          if (lVar8 != 0) {
            uStack_38 = *(undefined4 *)(lVar8 + 0x18);
            uVar6 = func_0x029f5bd8(*(undefined8 *)(puVar2 + 0x48),&uStack_38);
            uVar5 = String_Format_0x600029d(*(undefined8 *)PTR_DAT_05e635d8,uVar5,uVar6,0);
            if (*(int *)(*(long *)PTR_DAT_05e58f08 + 0xe4) == 0) {
              func_0x029f5bd0(*(long *)PTR_DAT_05e58f08);
            }
            Debug_Log_0x600033c(uVar5,0);
            if (cRam000000000625ba57 == '\0') {
              func_0x029f5a50(PTR_DAT_05e5dd70);
              cRam000000000625ba57 = '\x01';
            }
            puVar2 = PTR_DAT_05e5dd70;
            uVar5 = **(undefined8 **)(*(long *)PTR_DAT_05e5dd70 + 0xb8);
            if (*(int *)(*(long *)puVar3 + 0xe4) == 0) {
              func_0x029f5bd0();
            }
            uVar7 = Object_op_Inequality_0x6000ded(uVar5,0,0);
            if ((uVar7 & 1) != 0) {
              if (cRam000000000625ba57 == '\0') {
                func_0x029f5a50(PTR_DAT_05e5dd70);
                cRam000000000625ba57 = '\x01';
              }
              if (**(long **)(*(long *)puVar2 + 0xb8) == 0) goto LAB_02c534f8;
              Sound_manager_PlaySfx_0x600054a(0x3f800000,**(long **)(*(long *)puVar2 + 0xb8),7,0,0);
            }
            lVar8 = *(long *)(*(long *)(*(long *)PTR_DAT_05e5e068 + 0xb8) + 8);
            if (lVar8 != 0) {
              (**(code **)(lVar8 + 0x18))
                        (*(undefined8 *)(lVar8 + 0x40),*(undefined8 *)(lVar8 + 0x28));
            }
            goto LAB_02c534dc;
          }
        }
      }
    }
  }
LAB_02c534f8:
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

