/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b8339c, Ghidra VA 02c8339c. */

void Pet_Item_List_EquipToSlot(undefined8 param_1,long param_2,long param_3)

{
  int iVar1;
  uint uVar2;
  undefined4 uVar3;
  int iVar4;
  uint uVar5;
  uint uVar6;
  undefined *puVar7;
  undefined *puVar8;
  long lVar9;
  undefined8 uVar10;
  long lVar11;
  ulong uVar12;
  long lVar13;
  int *piVar14;
  long lVar15;
  undefined4 *puVar16;
  long lVar17;
  undefined4 uVar18;
  ulong uVar19;
  
  if ((bRam000000000625c365 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e591c0);
    func_0x029f5a50(PTR_DAT_05e5d4d0);
    bRam000000000625c365 = 1;
  }
  puVar8 = PTR_DAT_05e5d4d0;
  if ((param_2 != 0) && (param_3 != 0)) {
    iVar1 = *(int *)(param_2 + 100);
    uVar5 = *(uint *)(param_3 + 0x20);
    lVar9 = *(long *)PTR_DAT_05e5d4d0;
    if (*(int *)(lVar9 + 0xe4) == 0) {
      func_0x029f5bd0();
      lVar9 = *(long *)puVar8;
    }
    lVar9 = *(long *)(*(long *)(lVar9 + 0xb8) + 0x28);
    if ((lVar9 != 0) && (lVar13 = *(long *)(lVar9 + 0x30), lVar13 != 0)) {
      if (uVar5 < *(uint *)(lVar13 + 0x18)) {
        lVar15 = *(long *)(lVar9 + 0x48);
        if (lVar15 == 0) goto LAB_02c83630;
        if (uVar5 < *(uint *)(lVar15 + 0x18)) {
          lVar11 = *(long *)(lVar9 + 0x40);
          if (lVar11 == 0) goto LAB_02c83630;
          uVar6 = *(uint *)(param_2 + 0x68);
          lVar17 = (long)(int)uVar6;
          uVar2 = *(uint *)(lVar11 + 0x18);
          if (uVar6 < uVar2) {
            lVar9 = *(long *)(lVar9 + 0x38);
            piVar14 = (int *)(lVar13 + (long)(int)uVar5 * 4 + 0x20);
            iVar4 = *piVar14;
            uVar3 = *(undefined4 *)(lVar11 + lVar17 * 4 + 0x20);
            puVar16 = (undefined4 *)(lVar15 + (long)(int)uVar5 * 4 + 0x20);
            uVar18 = *puVar16;
            if (iVar4 == -1) {
              if (lVar9 == 0) goto LAB_02c83630;
              if (*(uint *)(lVar9 + 0x18) <= uVar6) goto LAB_02c8362c;
              uVar18 = 0xffffffff;
              *(undefined4 *)(lVar9 + lVar17 * 4 + 0x20) = 0xffffffff;
            }
            else {
              if (lVar9 == 0) goto LAB_02c83630;
              if (*(uint *)(lVar9 + 0x18) <= uVar6) goto LAB_02c8362c;
              *(int *)(lVar9 + lVar17 * 4 + 0x20) = iVar4;
            }
            if (*(uint *)(param_2 + 0x68) < uVar2) {
              *(undefined4 *)(lVar11 + (long)(int)*(uint *)(param_2 + 0x68) * 4 + 0x20) = uVar18;
              *piVar14 = iVar1;
              *puVar16 = uVar3;
              Pet_Slot_Reload_0x6000c60(param_3);
              Pet_Item_List_ReloadList_0x6000c46(param_1);
              lVar9 = *(long *)puVar8;
              if (*(int *)(lVar9 + 0xe4) == 0) {
                func_0x029f5bd0();
                lVar9 = *(long *)puVar8;
              }
              puVar7 = PTR_DAT_05e591c0;
              lVar9 = *(long *)(*(long *)(lVar9 + 0xb8) + 0x28);
              if ((lVar9 != 0) && (lVar9 = *(long *)(lVar9 + 0x90), lVar9 != 0)) {
                if (0 < (int)*(ulong *)(lVar9 + 0x18)) {
                  uVar19 = 0;
                  uVar12 = *(ulong *)(lVar9 + 0x18) & 0xffffffff;
                  do {
                    if (uVar12 <= uVar19) goto LAB_02c8362c;
                    lVar13 = *(long *)(lVar9 + 0x20 + uVar19 * 8);
                    if (*(int *)(*(long *)puVar7 + 0xe4) == 0) {
                      func_0x029f5bd0();
                    }
                    uVar12 = Object_op_Inequality_0x6000ded(lVar13,0,0);
                    if ((uVar12 & 1) != 0) {
                      if (lVar13 == 0) goto LAB_02c83630;
                      Pet_Slot_Reload_0x6000c60(lVar13);
                    }
                    uVar12 = (ulong)*(uint *)(lVar9 + 0x18);
                    uVar19 = uVar19 + 1;
                  } while ((long)uVar19 < (long)(int)*(uint *)(lVar9 + 0x18));
                }
                lVar9 = *(long *)puVar8;
                if (*(int *)(lVar9 + 0xe4) == 0) {
                  func_0x029f5bd0();
                  lVar9 = *(long *)puVar8;
                }
                lVar9 = *(long *)(*(long *)(lVar9 + 0xb8) + 0x28);
                if (lVar9 != 0) {
                  Pet_manager_Pet_Reload_0x6000bd9(lVar9,0);
                  if (cRam000000000625ba57 == '\0') {
                    func_0x029f5a50(PTR_DAT_05e5dd70);
                    cRam000000000625ba57 = '\x01';
                  }
                  if (**(long **)(*(long *)PTR_DAT_05e5dd70 + 0xb8) != 0) {
                    Sound_manager_PlaySfx_0x600054a
                              (0x3f800000,**(long **)(*(long *)PTR_DAT_05e5dd70 + 0xb8),9,0,0);
                    if ((iVar4 != -1) && (iVar4 == iVar1)) {
                      uVar10 = Alarm_get_SelectedFusionError_0x60012f6(0);
                      UI_manager_Alert_0x6000602(uVar10,0);
                    }
                    Pet_Item_List_StartAutoMergeChain_0x6000c4d(param_1);
                    return;
                  }
                }
              }
              goto LAB_02c83630;
            }
          }
        }
      }
LAB_02c8362c:
                    /* WARNING: Subroutine does not return */
      Throw_Index_Wrapper();
    }
  }
LAB_02c83630:
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

