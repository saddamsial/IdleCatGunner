/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b73494, Ghidra VA 02c73494. */

void Gun_Item_List_FuseItems(long param_1,long param_2,long param_3)

{
  int iVar1;
  uint uVar2;
  int iVar3;
  int iVar4;
  uint uVar5;
  int iVar6;
  int iVar7;
  undefined *puVar8;
  undefined *puVar9;
  undefined *puVar10;
  bool bVar11;
  uint uVar12;
  ulong uVar13;
  long lVar14;
  undefined8 uVar15;
  undefined8 uVar16;
  undefined8 *puVar17;
  int *piVar18;
  long *plVar19;
  undefined8 uVar20;
  long lVar21;
  uint uStack_6c;
  int iStack_68;
  int iStack_64;
  
  puVar8 = PTR_DAT_05e591c0;
  if ((bRam000000000625c2f0 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e58f08);
    func_0x029f5a50(PTR_DAT_05e63aa8);
    func_0x029f5a50(PTR_DAT_05e5dd40);
    func_0x029f5a50(PTR_DAT_05e591c0);
    func_0x029f5a50(PTR_DAT_05e63c00);
    func_0x029f5a50(PTR_DAT_05e63c08);
    func_0x029f5a50(PTR_DAT_05e63c10);
    func_0x029f5a50(PTR_DAT_05e63c18);
    bRam000000000625c2f0 = 1;
  }
  if (*(int *)(*(long *)puVar8 + 0xe4) == 0) {
    func_0x029f5bd0();
  }
  puVar9 = PTR_DAT_05e5dd40;
  uVar13 = Object_op_Inequality_0x6000ded(param_2,0,0);
  if ((uVar13 & 1) != 0) {
    if (param_2 == 0) goto LAB_02c73b1c;
    if (*(char *)(param_2 + 0x70) == '\0') goto LAB_02c73570;
LAB_02c735a0:
    Gun_Item_List_ReloadList(param_1);
    if (**(long **)(*(long *)puVar9 + 0xb8) != 0) {
      Gun_manager_AdRewardGun_TryWatch_0x6000a87(**(long **)(*(long *)puVar9 + 0xb8),0);
      return;
    }
    goto LAB_02c73b1c;
  }
LAB_02c73570:
  if (*(int *)(*(long *)puVar8 + 0xe4) == 0) {
    func_0x029f5bd0();
  }
  uVar13 = Object_op_Inequality_0x6000ded(param_3,0,0);
  puVar10 = PTR_DAT_05e63aa8;
  if ((uVar13 & 1) != 0) {
    if (param_3 == 0) goto LAB_02c73b1c;
    if (*(char *)(param_3 + 0x70) != '\0') goto LAB_02c735a0;
  }
  if (*(char *)(*(long *)(*(long *)PTR_DAT_05e63aa8 + 0xb8) + 8) != '\0') {
    puVar17 = (undefined8 *)PTR_DAT_05e63c10;
    if (*(int *)(*(long *)PTR_DAT_05e58f08 + 0xe4) == 0) {
      func_0x029f5bd0();
      puVar17 = (undefined8 *)PTR_DAT_05e63c10;
    }
    goto LAB_02c73780;
  }
  if (**(long **)(*(long *)puVar9 + 0xb8) == 0) goto LAB_02c73b1c;
  lVar21 = *(long *)(**(long **)(*(long *)puVar9 + 0xb8) + 0x40);
  if (*(int *)(*(long *)puVar8 + 0xe4) == 0) {
    func_0x029f5bd0();
  }
  uVar13 = Object_op_Inequality_0x6000ded(param_2,0,0);
  if ((uVar13 & 1) == 0) goto LAB_02c736a0;
  if ((param_2 == 0) || (lVar14 = Component_get_gameObject_0x6000c83(param_2,0), lVar14 == 0))
  goto LAB_02c73b1c;
  uVar13 = GameObject_get_activeSelf_0x6000cff(lVar14,0);
  if ((uVar13 & 1) == 0) {
LAB_02c736a0:
    bVar11 = false;
  }
  else {
    uVar2 = *(uint *)(param_2 + 0x90);
    if ((int)uVar2 < 0) goto LAB_02c736a0;
    if (lVar21 == 0) goto LAB_02c73b1c;
    if (*(int *)(lVar21 + 0x18) <= (int)uVar2) goto LAB_02c736a0;
    bVar11 = *(int *)(lVar21 + (ulong)uVar2 * 4 + 0x20) == *(int *)(param_2 + 0x8c);
  }
  if (*(int *)(*(long *)puVar8 + 0xe4) == 0) {
    func_0x029f5bd0();
  }
  uVar13 = Object_op_Inequality_0x6000ded(param_3,0,0);
  if ((uVar13 & 1) != 0) {
    if ((param_3 == 0) || (lVar14 = Component_get_gameObject_0x6000c83(param_3,0), lVar14 == 0))
    goto LAB_02c73b1c;
    uVar13 = GameObject_get_activeSelf_0x6000cff(lVar14,0);
    if ((uVar13 & 1) != 0) {
      uVar2 = *(uint *)(param_3 + 0x90);
      if (-1 < (int)uVar2) {
        if (lVar21 == 0) {
LAB_02c73b1c:
                    /* WARNING: Subroutine does not return */
          Throw_NullReference_Wrapper();
        }
        if ((((int)uVar2 < *(int *)(lVar21 + 0x18)) && (bVar11)) &&
           (*(int *)(lVar21 + (ulong)uVar2 * 4 + 0x20) == *(int *)(param_3 + 0x8c))) {
          if ((param_2 == 0) || (**(long **)(*(long *)puVar9 + 0xb8) == 0)) goto LAB_02c73b1c;
          uVar13 = Gun_manager_Is_Merge_Blocked_0x6000a55
                             (**(long **)(*(long *)puVar9 + 0xb8),*(undefined4 *)(param_2 + 0x90),
                              (ulong)uVar2,0);
          if ((uVar13 & 1) == 0) {
            piVar18 = (int *)(param_1 + 0x50);
            iVar4 = *piVar18;
            if ((iVar4 != -1) &&
               (((iVar4 == *(int *)(param_2 + 0x90) ||
                 (*(int *)(param_1 + 0x58) == *(int *)(param_2 + 0x90))) ||
                ((iVar4 == *(int *)(param_3 + 0x90) ||
                 (*(int *)(param_1 + 0x58) == *(int *)(param_3 + 0x90))))))) {
              piVar18[0] = -1;
              piVar18[1] = -1;
              *(undefined8 *)(param_1 + 0x58) = 0xffffffffffffffff;
            }
            lVar14 = **(long **)(*(long *)puVar9 + 0xb8);
            *(undefined1 *)(*(long *)(*(long *)puVar10 + 0xb8) + 8) = 1;
            if (lVar14 == 0) {
                    /* WARNING: Subroutine does not return */
              Throw_NullReference_Wrapper();
            }
            lVar14 = *(long *)(lVar14 + 0x48);
            if (lVar14 == 0) {
                    /* WARNING: Subroutine does not return */
              Throw_NullReference_Wrapper();
            }
            iVar3 = *(int *)(lVar14 + 0x18);
            iVar7 = *(int *)(param_2 + 0x8c) / 5;
            iVar4 = iVar7 + 1;
            iVar6 = iVar4 * 5;
            if (iVar6 < iVar3) {
              iVar1 = iVar6 + 4;
              if (iVar3 <= iVar6 + 4) {
                iVar1 = iVar3 + -1;
              }
              uVar12 = Random_Range_0x6000ba7(iVar6,iVar1 + 1,0);
              uVar2 = *(uint *)(lVar21 + 0x18);
              if (uVar2 <= *(uint *)(param_2 + 0x90)) {
                    /* WARNING: Subroutine does not return */
                Throw_Index_Wrapper();
              }
              uVar5 = *(uint *)(param_3 + 0x90);
              *(undefined4 *)(lVar21 + (long)(int)*(uint *)(param_2 + 0x90) * 4 + 0x20) = 0xffffffff
              ;
              if (uVar2 <= *(uint *)(param_3 + 0x90)) {
                    /* WARNING: Subroutine does not return */
                Throw_Index_Wrapper();
              }
              *(undefined4 *)(lVar21 + (long)(int)*(uint *)(param_3 + 0x90) * 4 + 0x20) = 0xffffffff
              ;
              if (uVar2 <= uVar5) {
                    /* WARNING: Subroutine does not return */
                Throw_Index_Wrapper();
              }
              plVar19 = *(long **)(*(long *)puVar9 + 0xb8);
              *(uint *)(lVar21 + (long)(int)uVar5 * 4 + 0x20) = uVar12;
              if (*plVar19 == 0) {
                    /* WARNING: Subroutine does not return */
                Throw_NullReference_Wrapper();
              }
              Gun_manager_Owned_Pause_Set(*plVar19,*(undefined4 *)(param_2 + 0x90),0,0);
              if (**(long **)(*(long *)puVar9 + 0xb8) == 0) {
                    /* WARNING: Subroutine does not return */
                Throw_NullReference_Wrapper();
              }
              Gun_manager_Owned_Pause_Set(**(long **)(*(long *)puVar9 + 0xb8),uVar5,0,0);
              lVar21 = **(long **)(*(long *)puVar9 + 0xb8);
              if (lVar21 == 0) {
                    /* WARNING: Subroutine does not return */
                Throw_NullReference_Wrapper();
              }
              lVar14 = *(long *)puVar8;
              uVar20 = *(undefined8 *)(lVar21 + 0xe0);
              *(undefined1 *)(lVar21 + 0xe8) = 1;
              if (*(int *)(lVar14 + 0xe4) == 0) {
                func_0x029f5bd0();
              }
              uVar13 = Object_op_Inequality_0x6000ded(uVar20,0,0);
              if ((uVar13 & 1) != 0) {
                if (**(long **)(*(long *)puVar9 + 0xb8) == 0) {
                    /* WARNING: Subroutine does not return */
                  Throw_NullReference_Wrapper();
                }
                lVar21 = *(long *)(**(long **)(*(long *)puVar9 + 0xb8) + 0xe0);
                if (lVar21 == 0) {
                    /* WARNING: Subroutine does not return */
                  Throw_NullReference_Wrapper();
                }
                Gun_Merge_Tutorial_Hide_0x6000a9a(lVar21,0);
              }
              if (**(long **)(*(long *)puVar9 + 0xb8) == 0) {
                    /* WARNING: Subroutine does not return */
                Throw_NullReference_Wrapper();
              }
              Gun_manager_OnWeaponAcquired_0x6000a79(**(long **)(*(long *)puVar9 + 0xb8),uVar12,0);
              Gun_Item_List_ReloadList(param_1);
              if (**(long **)(*(long *)puVar9 + 0xb8) == 0) {
                    /* WARNING: Subroutine does not return */
                Throw_NullReference_Wrapper();
              }
              Gun_manager_NewGun_UI_Reload(**(long **)(*(long *)puVar9 + 0xb8),uVar12,0);
              if (**(long **)(*(long *)puVar9 + 0xb8) == 0) {
                    /* WARNING: Subroutine does not return */
                Throw_NullReference_Wrapper();
              }
              Gun_manager_CheckAdGunEvent_0x6000a8d(**(long **)(*(long *)puVar9 + 0xb8),0);
              lVar21 = Gun_Item_List_FindActiveItemAtSlot_0x6000b66(param_1,uVar5);
              if (*(int *)(*(long *)puVar8 + 0xe4) == 0) {
                func_0x029f5bd0();
              }
              uVar13 = Object_op_Inequality_0x6000ded(lVar21,0,0);
              if ((uVar13 & 1) != 0) {
                if (lVar21 == 0) {
                    /* WARNING: Subroutine does not return */
                  Throw_NullReference_Wrapper();
                }
                Gun_Item_PlaySpawnBounce_0x6000b26(lVar21);
              }
              if (cRam000000000625ba57 == '\0') {
                func_0x029f5a50(PTR_DAT_05e5dd70);
                cRam000000000625ba57 = '\x01';
              }
              if (**(long **)(*(long *)PTR_DAT_05e5dd70 + 0xb8) == 0) {
                    /* WARNING: Subroutine does not return */
                Throw_NullReference_Wrapper();
              }
              Sound_manager_PlaySfx_0x600054a
                        (0x3f800000,**(long **)(*(long *)PTR_DAT_05e5dd70 + 0xb8),3,0,0);
              puVar8 = PTR_DAT_05e58a10;
              iStack_64 = iVar7;
              uVar20 = func_0x029f5bd8(*(undefined8 *)(PTR_DAT_05e58a10 + 0x48),&iStack_64);
              iStack_68 = iVar4;
              uVar15 = func_0x029f5bd8(*(undefined8 *)(puVar8 + 0x48),&iStack_68);
              uStack_6c = uVar12;
              uVar16 = func_0x029f5bd8(*(undefined8 *)(puVar8 + 0x48),&uStack_6c);
              uVar20 = String_Format_0x600029e
                                 (*(undefined8 *)PTR_DAT_05e63c00,uVar20,uVar15,uVar16,0);
              if (*(int *)(*(long *)PTR_DAT_05e58f08 + 0xe4) == 0) {
                func_0x029f5bd0();
              }
              Debug_Log_0x600033c(uVar20,0);
              *(undefined1 *)(*(long *)(*(long *)puVar10 + 0xb8) + 8) = 0;
              Gun_Item_List_StartAutoMergeChain_0x6000b6a(param_1);
            }
            else {
              uVar20 = Alarm_get_MaxGradeError_0x60012ee(0);
              UI_manager_Alert_0x6000602(uVar20,0);
              Gun_Item_List_ReloadList(param_1);
              *(undefined1 *)(*(long *)(*(long *)puVar10 + 0xb8) + 8) = 0;
            }
            return;
          }
          puVar17 = (undefined8 *)PTR_DAT_05e63c08;
          if (*(int *)(*(long *)PTR_DAT_05e58f08 + 0xe4) == 0) {
            func_0x029f5bd0();
            puVar17 = (undefined8 *)PTR_DAT_05e63c08;
          }
          goto LAB_02c73780;
        }
      }
    }
  }
  puVar17 = (undefined8 *)PTR_DAT_05e63c18;
  if (*(int *)(*(long *)PTR_DAT_05e58f08 + 0xe4) == 0) {
    func_0x029f5bd0();
    puVar17 = (undefined8 *)PTR_DAT_05e63c18;
  }
LAB_02c73780:
  Debug_LogWarning_0x6000346(*puVar17,0);
  Gun_Item_List_ReloadList(param_1);
  return;
}

