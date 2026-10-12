/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b72fc0, Ghidra VA 02c72fc0. */

void Gun_Item_List_EquipToSlot(undefined8 param_1,long param_2,long param_3)

{
  int iVar1;
  uint uVar2;
  int iVar3;
  undefined *puVar4;
  uint uVar5;
  uint uVar6;
  ulong uVar7;
  undefined8 uVar8;
  uint uVar9;
  int iVar10;
  undefined8 uVar11;
  long lVar12;
  long lVar13;
  int *piVar14;
  long lVar15;
  int iStack_68;
  uint uStack_64;
  
  if ((bRam000000000625c2f2 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e5d5b0);
    func_0x029f5a50(PTR_DAT_05e58f08);
    func_0x029f5a50(PTR_DAT_05e5dd40);
    func_0x029f5a50(PTR_DAT_05e591c0);
    func_0x029f5a50(PTR_DAT_05e63bf8);
    bRam000000000625c2f2 = 1;
  }
  puVar4 = PTR_DAT_05e5dd40;
  if (param_2 != 0) {
    if (*(char *)(param_2 + 0x70) == '\0') {
      if (((param_3 != 0) && (lVar12 = **(long **)(*(long *)PTR_DAT_05e5dd40 + 0xb8), lVar12 != 0))
         && (lVar13 = *(long *)(lVar12 + 0x28), lVar13 != 0)) {
        uVar2 = *(uint *)(param_3 + 0x20);
        if (uVar2 < *(uint *)(lVar13 + 0x18)) {
          lVar15 = *(long *)(lVar12 + 0x40);
          iVar1 = *(int *)(param_2 + 0x8c);
          piVar14 = (int *)(lVar13 + (long)(int)uVar2 * 4 + 0x20);
          iVar3 = *piVar14;
          uVar5 = Gun_manager_Owned_Pause_Get_0x6000a4e(lVar12,*(undefined4 *)(param_2 + 0x90),0);
          uVar6 = Gun_manager_Selected_Pause_Get_0x6000a4f(lVar12,uVar2,0);
          if (uVar2 < *(uint *)(lVar13 + 0x18)) {
            iVar10 = *piVar14;
            if (iVar10 == -1) {
              if (lVar15 == 0) goto LAB_02c73350;
              uVar9 = *(uint *)(param_2 + 0x90);
              if (*(uint *)(lVar15 + 0x18) <= uVar9) goto LAB_02c73354;
              uVar6 = 0;
              iVar10 = -1;
            }
            else {
              if (lVar15 == 0) goto LAB_02c73350;
              uVar9 = *(uint *)(param_2 + 0x90);
              if (*(uint *)(lVar15 + 0x18) <= uVar9) goto LAB_02c73354;
            }
            *(int *)(lVar15 + (long)(int)uVar9 * 4 + 0x20) = iVar10;
            Gun_manager_Owned_Pause_Set(lVar12,*(undefined4 *)(param_2 + 0x90),uVar6 & 1,0);
            if (uVar2 < *(uint *)(lVar13 + 0x18)) {
              *piVar14 = iVar1;
              Gun_manager_Selected_Pause_Set(lVar12,uVar2,uVar5 & 1,0);
              Gun_Slot_Reload_0x6000b7e(param_3);
              Gun_Item_List_ReloadList(param_1);
              lVar12 = *(long *)(lVar12 + 0x98);
              if (lVar12 != 0) {
                uVar5 = *(uint *)(lVar12 + 0x18);
                if (0 < (int)uVar5) {
                  lVar13 = 0;
                  do {
                    if (uVar5 <= (uint)lVar13) goto LAB_02c73354;
                    if (*(long *)(lVar12 + 0x20 + lVar13 * 8) == 0) goto LAB_02c73350;
                    Gun_Slot_Reload_0x6000b7e();
                    uVar5 = *(uint *)(lVar12 + 0x18);
                    lVar13 = lVar13 + 1;
                  } while ((int)lVar13 < (int)uVar5);
                }
                puVar4 = PTR_DAT_05e5d5b0;
                uVar11 = *(undefined8 *)(*(long *)(*(long *)PTR_DAT_05e5d5b0 + 0xb8) + 8);
                if (*(int *)(*(long *)PTR_DAT_05e591c0 + 0xe4) == 0) {
                  func_0x029f5bd0();
                }
                uVar7 = Object_op_Inequality_0x6000ded(uVar11,0,0);
                if ((uVar7 & 1) != 0) {
                  lVar12 = *(long *)(*(long *)(*(long *)puVar4 + 0xb8) + 8);
                  if (lVar12 == 0) goto LAB_02c73350;
                  Cat_manager_Balance_Reload_0x6000779(lVar12,0);
                }
                if (cRam000000000625ba57 == '\0') {
                  func_0x029f5a50(PTR_DAT_05e5dd70);
                  cRam000000000625ba57 = '\x01';
                }
                if (**(long **)(*(long *)PTR_DAT_05e5dd70 + 0xb8) != 0) {
                  Sound_manager_PlaySfx_0x600054a
                            (0x3f800000,**(long **)(*(long *)PTR_DAT_05e5dd70 + 0xb8),9,0,0);
                  puVar4 = PTR_DAT_05e58a10;
                  uStack_64 = uVar2;
                  uVar11 = func_0x029f5bd8(*(undefined8 *)(PTR_DAT_05e58a10 + 0x48),&uStack_64);
                  iStack_68 = iVar1;
                  uVar8 = func_0x029f5bd8(*(undefined8 *)(puVar4 + 0x48),&iStack_68);
                  uVar11 = String_Format_0x600029d(*(undefined8 *)PTR_DAT_05e63bf8,uVar11,uVar8,0);
                  if (*(int *)(*(long *)PTR_DAT_05e58f08 + 0xe4) == 0) {
                    func_0x029f5bd0(*(long *)PTR_DAT_05e58f08);
                  }
                  Debug_Log_0x600033c(uVar11,0);
                  if ((iVar3 != -1) && (iVar3 / 5 == iVar1 / 5)) {
                    uVar11 = Alarm_get_SelectedFusionError_0x60012f6(0);
                    UI_manager_Alert_0x6000602(uVar11,0);
                  }
                  Gun_Item_List_StartAutoMergeChain_0x6000b6a(param_1);
                  return;
                }
              }
              goto LAB_02c73350;
            }
          }
        }
LAB_02c73354:
                    /* WARNING: Subroutine does not return */
        Throw_Index_Wrapper();
      }
    }
    else {
      Gun_Item_List_ReloadList(param_1);
      if (**(long **)(*(long *)puVar4 + 0xb8) != 0) {
        Gun_manager_AdRewardGun_TryWatch_0x6000a87(**(long **)(*(long *)puVar4 + 0xb8),0);
        return;
      }
    }
  }
LAB_02c73350:
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

