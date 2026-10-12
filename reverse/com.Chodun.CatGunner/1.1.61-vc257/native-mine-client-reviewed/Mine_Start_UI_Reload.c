/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b49110, Ghidra VA 02c49110. */

void Mine_Start_UI_Reload(long param_1)

{
  int iVar1;
  undefined *puVar2;
  undefined *puVar3;
  undefined *puVar4;
  int iVar5;
  uint uVar6;
  undefined8 uVar7;
  undefined8 uVar8;
  long *plVar9;
  undefined4 uVar10;
  undefined4 uVar11;
  undefined4 uVar12;
  undefined4 uVar13;
  undefined4 uStack_54;
  int iStack_48;
  int iStack_44;
  
  puVar3 = PTR_DAT_05e5dd48;
  if ((bRam000000000625c123 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e5dd48);
    func_0x029f5a50(PTR_DAT_05e63398);
    func_0x029f5a50(PTR_DAT_05e61f28);
    bRam000000000625c123 = 1;
  }
  if (**(long **)(*(long *)puVar3 + 0xb8) != 0) {
    Mine_manager_Ticket_Reload();
    puVar4 = PTR_DAT_05e61f28;
    if (**(long **)(*(long *)puVar3 + 0xb8) != 0) {
      iVar1 = *(int *)(**(long **)(*(long *)puVar3 + 0xb8) + 0x50);
      iVar5 = Mine_manager_Ticket_MaxCount_return();
      puVar2 = PTR_DAT_05e58a10;
      iStack_44 = iVar5 - iVar1;
      plVar9 = *(long **)(param_1 + 0x20);
      uVar7 = func_0x029f5bd8(*(undefined8 *)(PTR_DAT_05e58a10 + 0x48),&iStack_44);
      iStack_48 = iVar5;
      uVar8 = func_0x029f5bd8(*(undefined8 *)(puVar2 + 0x48),&iStack_48);
      uVar7 = String_Format_0x600029d(*(undefined8 *)puVar4,uVar7,uVar8,0);
      if (plVar9 != (long *)0x0) {
        (**(code **)(*plVar9 + 0x558))(plVar9,uVar7,*(undefined8 *)(*plVar9 + 0x560));
        uVar13 = 0x3f800000;
        uVar12 = 0x3f800000;
        plVar9 = *(long **)(param_1 + 0x20);
        uVar11 = 0x3f800000;
        uVar10 = 0x3f800000;
        if (iVar5 <= iVar1) {
          uVar10 = *(undefined4 *)(param_1 + 0x28);
          uVar11 = *(undefined4 *)(param_1 + 0x2c);
          uVar12 = *(undefined4 *)(param_1 + 0x30);
          uVar13 = *(undefined4 *)(param_1 + 0x34);
        }
        if (plVar9 != (long *)0x0) {
          (**(code **)(*plVar9 + 0x2a8))
                    (uVar10,uVar11,uVar12,uVar13,plVar9,*(undefined8 *)(*plVar9 + 0x2b0));
          if (**(long **)(*(long *)puVar3 + 0xb8) != 0) {
            uVar6 = Mine_manager_is_SweepAble_0x60007f8();
            if (*(long *)(param_1 + 0x38) != 0) {
              GameObject_SetActive_0x6000cfe(*(long *)(param_1 + 0x38),(uVar6 ^ 0xffffffff) & 1,0);
              if (*(long *)(param_1 + 0x40) != 0) {
                GameObject_SetActive_0x6000cfe(*(long *)(param_1 + 0x40),uVar6 & 1,0);
                if ((uVar6 & 1) == 0) {
LAB_02c492f4:
                  Mine_Start_UI_Banner_Reload_0x6000827(param_1);
                  Mine_Start_UI_SpeedBuff_Reload(param_1);
                  return;
                }
                if (**(long **)(*(long *)puVar3 + 0xb8) != 0) {
                  plVar9 = *(long **)(param_1 + 0x48);
                  uStack_54 = Mine_manager_SweepReward_return_0x60007fd();
                  uVar7 = func_0x029f5bd8(*(undefined8 *)(puVar2 + 0x48),&uStack_54);
                  uVar7 = String_Format_0x600029c(*(undefined8 *)PTR_DAT_05e63398,uVar7,0);
                  if (plVar9 != (long *)0x0) {
                    (**(code **)(*plVar9 + 0x558))(plVar9,uVar7,*(undefined8 *)(*plVar9 + 0x560));
                    goto LAB_02c492f4;
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

