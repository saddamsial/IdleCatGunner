/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b82c7c, Ghidra VA 02c82c7c. */

void Pet_Item_List_FuseItems(long param_1,long param_2,long param_3)

{
  int iVar1;
  uint uVar2;
  int iVar3;
  undefined *puVar4;
  undefined *puVar5;
  undefined *puVar6;
  undefined *puVar7;
  uint uVar8;
  uint uVar9;
  undefined8 uVar10;
  long lVar11;
  ulong uVar12;
  long lVar13;
  undefined8 uVar14;
  int *piVar15;
  long lVar16;
  int iStack_68;
  int iStack_64;
  
  puVar7 = PTR_DAT_05e63d98;
  if ((bRam000000000625c363 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e58f08);
    func_0x029f5a50(PTR_DAT_05e591c0);
    func_0x029f5a50(PTR_DAT_05e63d98);
    func_0x029f5a50(PTR_DAT_05e5d4d0);
    func_0x029f5a50(PTR_DAT_05e63c10);
    func_0x029f5a50(PTR_DAT_05e63c18);
    func_0x029f5a50(PTR_DAT_05e63e10);
    bRam000000000625c363 = 1;
  }
  puVar6 = PTR_DAT_05e63c10;
  puVar4 = PTR_DAT_05e5d4d0;
  puVar5 = PTR_DAT_05e58f08;
  if (*(char *)(*(long *)(*(long *)puVar7 + 0xb8) + 8) != '\0') {
    if (*(int *)(*(long *)PTR_DAT_05e58f08 + 0xe4) == 0) {
      func_0x029f5bd0();
    }
    uVar10 = *(undefined8 *)puVar6;
    goto LAB_02c82ee8;
  }
  lVar11 = *(long *)PTR_DAT_05e5d4d0;
  if (*(int *)(lVar11 + 0xe4) == 0) {
    func_0x029f5bd0();
    lVar11 = *(long *)puVar4;
  }
  puVar6 = PTR_DAT_05e591c0;
  lVar11 = *(long *)(*(long *)(lVar11 + 0xb8) + 0x28);
  if (lVar11 == 0) goto LAB_02c831d8;
  lVar11 = *(long *)(lVar11 + 0x38);
  if (*(int *)(*(long *)PTR_DAT_05e591c0 + 0xe4) == 0) {
    func_0x029f5bd0();
  }
  uVar12 = Object_op_Inequality_0x6000ded(param_2,0,0);
  if ((uVar12 & 1) == 0) goto LAB_02c82e24;
  if ((param_2 == 0) || (lVar13 = Component_get_gameObject_0x6000c83(param_2,0), lVar13 == 0))
  goto LAB_02c831d8;
  uVar12 = GameObject_get_activeSelf_0x6000cff(lVar13,0);
  if ((uVar12 & 1) == 0) {
LAB_02c82e24:
    uVar8 = 1;
  }
  else {
    uVar8 = *(uint *)(param_2 + 0x68);
    if ((int)uVar8 < 0) goto LAB_02c82e24;
    if (lVar11 == 0) goto LAB_02c831d8;
    if ((*(int *)(lVar11 + 0x18) <= (int)uVar8) ||
       (*(int *)(lVar11 + (ulong)uVar8 * 4 + 0x20) != *(int *)(param_2 + 100))) goto LAB_02c82e24;
    lVar13 = *(long *)puVar4;
    if (*(int *)(lVar13 + 0xe4) == 0) {
      func_0x029f5bd0();
      lVar13 = *(long *)puVar4;
    }
    lVar13 = *(long *)(*(long *)(lVar13 + 0xb8) + 0x28);
    if (lVar13 == 0) goto LAB_02c831d8;
    uVar8 = Pet_manager_IsPetLocked_0x6000bcc(lVar13,*(undefined4 *)(param_2 + 0x68),0);
  }
  if (*(int *)(*(long *)puVar6 + 0xe4) == 0) {
    func_0x029f5bd0();
  }
  uVar12 = Object_op_Inequality_0x6000ded(param_3,0,0);
  if ((uVar12 & 1) != 0) {
    if ((param_3 == 0) || (lVar13 = Component_get_gameObject_0x6000c83(param_3,0), lVar13 == 0))
    goto LAB_02c831d8;
    uVar12 = GameObject_get_activeSelf_0x6000cff(lVar13,0);
    if ((uVar12 & 1) != 0) {
      uVar9 = *(uint *)(param_3 + 0x68);
      if (-1 < (int)uVar9) {
        if (lVar11 == 0) goto LAB_02c831d8;
        if (((int)uVar9 < *(int *)(lVar11 + 0x18)) &&
           (*(int *)(lVar11 + (ulong)uVar9 * 4 + 0x20) == *(int *)(param_3 + 100))) {
          lVar13 = *(long *)puVar4;
          if (*(int *)(lVar13 + 0xe4) == 0) {
            func_0x029f5bd0();
            lVar13 = *(long *)puVar4;
          }
          lVar13 = *(long *)(*(long *)(lVar13 + 0xb8) + 0x28);
          if (lVar13 == 0) {
LAB_02c831d8:
                    /* WARNING: Subroutine does not return */
            Throw_NullReference_Wrapper();
          }
          uVar9 = Pet_manager_IsPetLocked_0x6000bcc(lVar13,*(undefined4 *)(param_3 + 0x68),0);
          if (((uVar8 | uVar9) & 1) == 0) {
            if (param_2 != 0) {
              piVar15 = (int *)(param_1 + 0x50);
              iVar3 = *piVar15;
              if ((iVar3 != -1) &&
                 ((((iVar3 == *(int *)(param_2 + 0x68) ||
                    (*(int *)(param_1 + 0x58) == *(int *)(param_2 + 0x68))) ||
                   (iVar3 == *(int *)(param_3 + 0x68))) ||
                  (*(int *)(param_1 + 0x58) == *(int *)(param_3 + 0x68))))) {
                piVar15[0] = -1;
                piVar15[1] = -1;
                *(undefined8 *)(param_1 + 0x58) = 0xffffffffffffffff;
              }
              lVar13 = *(long *)puVar4;
              iVar3 = *(int *)(param_2 + 100);
              iVar1 = *(int *)(lVar13 + 0xe4);
              *(undefined1 *)(*(long *)(*(long *)puVar7 + 0xb8) + 8) = 1;
              if (iVar1 == 0) {
                func_0x029f5bd0();
                lVar13 = *(long *)puVar4;
              }
              lVar16 = *(long *)(*(long *)(lVar13 + 0xb8) + 0x28);
              if (lVar16 == 0) {
                    /* WARNING: Subroutine does not return */
                Throw_NullReference_Wrapper();
              }
              if (*(long *)(lVar16 + 0x20) == 0) {
                    /* WARNING: Subroutine does not return */
                Throw_NullReference_Wrapper();
              }
              iVar1 = iVar3 + 1;
              if (iVar1 < *(int *)(*(long *)(lVar16 + 0x20) + 0x18)) {
                if (*(uint *)(lVar11 + 0x18) <= *(uint *)(param_2 + 0x68)) {
                    /* WARNING: Subroutine does not return */
                  Throw_Index_Wrapper();
                }
                uVar8 = *(uint *)(param_3 + 0x68);
                *(undefined4 *)(lVar11 + (long)(int)*(uint *)(param_2 + 0x68) * 4 + 0x20) =
                     0xffffffff;
                if (*(int *)(lVar13 + 0xe4) == 0) {
                  func_0x029f5bd0();
                  lVar16 = *(long *)(*(long *)(*(long *)puVar4 + 0xb8) + 0x28);
                  if (lVar16 == 0) {
                    /* WARNING: Subroutine does not return */
                    Throw_NullReference_Wrapper();
                  }
                }
                lVar13 = *(long *)(lVar16 + 0x40);
                if (lVar13 == 0) {
                    /* WARNING: Subroutine does not return */
                  Throw_NullReference_Wrapper();
                }
                uVar9 = *(uint *)(lVar13 + 0x18);
                if (uVar9 <= *(uint *)(param_2 + 0x68)) {
                    /* WARNING: Subroutine does not return */
                  Throw_Index_Wrapper();
                }
                *(undefined4 *)(lVar13 + (long)(int)*(uint *)(param_2 + 0x68) * 4 + 0x20) =
                     0xffffffff;
                uVar2 = *(uint *)(lVar11 + 0x18);
                if (uVar2 <= *(uint *)(param_3 + 0x68)) {
                    /* WARNING: Subroutine does not return */
                  Throw_Index_Wrapper();
                }
                *(undefined4 *)(lVar11 + (long)(int)*(uint *)(param_3 + 0x68) * 4 + 0x20) =
                     0xffffffff;
                if (uVar9 <= *(uint *)(param_3 + 0x68)) {
                    /* WARNING: Subroutine does not return */
                  Throw_Index_Wrapper();
                }
                *(undefined4 *)(lVar13 + (long)(int)*(uint *)(param_3 + 0x68) * 4 + 0x20) =
                     0xffffffff;
                if (uVar2 <= uVar8) {
                    /* WARNING: Subroutine does not return */
                  Throw_Index_Wrapper();
                }
                *(int *)(lVar11 + (long)(int)uVar8 * 4 + 0x20) = iVar1;
                if (uVar9 <= uVar8) {
                    /* WARNING: Subroutine does not return */
                  Throw_Index_Wrapper();
                }
                *(undefined4 *)(lVar13 + (long)(int)uVar8 * 4 + 0x20) = 0xffffffff;
                Pet_Item_List_ReloadList_0x6000c46(param_1);
                lVar11 = *(long *)(*(long *)(*(long *)puVar4 + 0xb8) + 0x28);
                if (lVar11 == 0) {
                    /* WARNING: Subroutine does not return */
                  Throw_NullReference_Wrapper();
                }
                Pet_manager_NewPet_UI_Reload_0x6000be6(lVar11,iVar1,0);
                lVar11 = Pet_Item_List_FindActiveItemAtSlot_0x6000c49(param_1,uVar8);
                if (*(int *)(*(long *)puVar6 + 0xe4) == 0) {
                  func_0x029f5bd0();
                }
                uVar12 = Object_op_Inequality_0x6000ded(lVar11,0,0);
                if ((uVar12 & 1) != 0) {
                  if (lVar11 == 0) {
                    /* WARNING: Subroutine does not return */
                    Throw_NullReference_Wrapper();
                  }
                  Pet_Item_PlaySpawnBounce_0x6000c12(lVar11,0);
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
                puVar4 = PTR_DAT_05e58a10;
                iStack_64 = iVar3;
                uVar10 = func_0x029f5bd8(*(undefined8 *)(PTR_DAT_05e58a10 + 0x48),&iStack_64);
                iStack_68 = iVar1;
                uVar14 = func_0x029f5bd8(*(undefined8 *)(puVar4 + 0x48),&iStack_68);
                uVar10 = String_Format_0x600029d(*(undefined8 *)PTR_DAT_05e63e10,uVar10,uVar14,0);
                if (*(int *)(*(long *)puVar5 + 0xe4) == 0) {
                  func_0x029f5bd0();
                }
                Debug_Log_0x600033c(uVar10,0);
                *(undefined1 *)(*(long *)(*(long *)puVar7 + 0xb8) + 8) = 0;
                Pet_Item_List_StartAutoMergeChain(param_1);
              }
              else {
                uVar10 = Alarm_get_MaxGradeError_0x60012ee(0);
                UI_manager_Alert_0x6000602(uVar10,0);
                Pet_Item_List_ReloadList_0x6000c46(param_1);
                *(undefined1 *)(*(long *)(*(long *)puVar7 + 0xb8) + 8) = 0;
              }
              return;
            }
            goto LAB_02c831d8;
          }
        }
      }
    }
  }
  if (*(int *)(*(long *)puVar5 + 0xe4) == 0) {
    func_0x029f5bd0();
  }
  uVar10 = *(undefined8 *)PTR_DAT_05e63c18;
LAB_02c82ee8:
  Debug_LogWarning_0x6000346(uVar10,0);
  Pet_Item_List_ReloadList_0x6000c46(param_1);
  return;
}

