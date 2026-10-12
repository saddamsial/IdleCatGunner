/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b8607c, Ghidra VA 02c8607c. */

void Pet_Slot_Unequip(long param_1)

{
  int iVar1;
  uint uVar2;
  uint uVar3;
  undefined *puVar4;
  undefined *puVar5;
  undefined *puVar6;
  uint uVar7;
  long lVar8;
  ulong uVar9;
  undefined8 uVar10;
  long lVar11;
  long lVar12;
  ulong uVar13;
  undefined8 uVar14;
  long lVar15;
  int iStack_54;
  undefined4 uStack_48;
  uint uStack_44;
  
  puVar4 = PTR_DAT_05e5d4d0;
  if ((bRam000000000625c37d & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e58f08);
    func_0x029f5a50(PTR_DAT_05e591c0);
    func_0x029f5a50(PTR_DAT_05e63d98);
    func_0x029f5a50(PTR_DAT_05e5d4d0);
    func_0x029f5a50(PTR_DAT_05e63e90);
    func_0x029f5a50(PTR_DAT_05e63ce8);
    func_0x029f5a50(PTR_DAT_05e63cf8);
    bRam000000000625c37d = 1;
  }
  lVar8 = *(long *)puVar4;
  if (*(int *)(lVar8 + 0xe4) == 0) {
    func_0x029f5bd0();
    lVar8 = *(long *)puVar4;
  }
  lVar11 = *(long *)(*(long *)(lVar8 + 0xb8) + 0x28);
  if ((lVar11 == 0) || (lVar15 = *(long *)(lVar11 + 0x30), lVar15 == 0)) goto LAB_02c864a8;
  uVar7 = *(uint *)(param_1 + 0x20);
  if (*(uint *)(lVar15 + 0x18) <= uVar7) goto LAB_02c864a4;
  iVar1 = *(int *)(lVar15 + (long)(int)uVar7 * 4 + 0x20);
  if (iVar1 == -1) {
    uStack_44 = uVar7;
    uVar14 = func_0x029f5bd8(*(undefined8 *)(PTR_DAT_05e58a10 + 0x48),&uStack_44);
    uVar14 = String_Format_0x600029c(*(undefined8 *)PTR_DAT_05e63cf8,uVar14,0);
LAB_02c86418:
    if (*(int *)(*(long *)PTR_DAT_05e58f08 + 0xe4) == 0) {
      func_0x029f5bd0(*(long *)PTR_DAT_05e58f08);
    }
    Debug_Log_0x600033c(uVar14,0);
    return;
  }
  if (*(int *)(lVar8 + 0xe4) == 0) {
    func_0x029f5bd0();
    lVar11 = *(long *)(*(long *)(*(long *)puVar4 + 0xb8) + 0x28);
    if (lVar11 == 0) goto LAB_02c864a8;
  }
  uVar7 = Pet_manager_FindFirstEmptyOwned_0x6000bef(lVar11,0);
  if (uVar7 == 0xffffffff) {
    if (*(int *)(*(long *)PTR_DAT_05e58f08 + 0xe4) == 0) {
      func_0x029f5bd0();
    }
    Debug_LogWarning_0x6000346(*(undefined8 *)PTR_DAT_05e63ce8,0);
    return;
  }
  lVar8 = *(long *)puVar4;
  if (*(int *)(lVar8 + 0xe4) == 0) {
    func_0x029f5bd0();
    lVar8 = *(long *)puVar4;
  }
  lVar8 = *(long *)(*(long *)(lVar8 + 0xb8) + 0x28);
  if ((lVar8 != 0) && (lVar11 = *(long *)(lVar8 + 0x38), lVar11 != 0)) {
    if (uVar7 < *(uint *)(lVar11 + 0x18)) {
      lVar12 = *(long *)(lVar8 + 0x48);
      *(int *)(lVar11 + (long)(int)uVar7 * 4 + 0x20) = iVar1;
      if (lVar12 == 0) goto LAB_02c864a8;
      uVar2 = *(uint *)(lVar12 + 0x18);
      if (*(uint *)(param_1 + 0x20) < uVar2) {
        lVar8 = *(long *)(lVar8 + 0x40);
        if (lVar8 == 0) goto LAB_02c864a8;
        if (uVar7 < *(uint *)(lVar8 + 0x18)) {
          uVar3 = *(uint *)(lVar15 + 0x18);
          *(undefined4 *)(lVar8 + (long)(int)uVar7 * 4 + 0x20) =
               *(undefined4 *)(lVar12 + (long)(int)*(uint *)(param_1 + 0x20) * 4 + 0x20);
          if (*(uint *)(param_1 + 0x20) < uVar3) {
            *(undefined4 *)(lVar15 + (long)(int)*(uint *)(param_1 + 0x20) * 4 + 0x20) = 0xffffffff;
            if (*(uint *)(param_1 + 0x20) < uVar2) {
              *(undefined4 *)(lVar12 + (long)(int)*(uint *)(param_1 + 0x20) * 4 + 0x20) = 0xffffffff
              ;
              Pet_Slot_Reload(param_1);
              puVar6 = PTR_DAT_05e63d98;
              puVar5 = PTR_DAT_05e591c0;
              uVar14 = **(undefined8 **)(*(long *)PTR_DAT_05e63d98 + 0xb8);
              if (*(int *)(*(long *)PTR_DAT_05e591c0 + 0xe4) == 0) {
                func_0x029f5bd0();
              }
              uVar9 = Object_op_Inequality_0x6000ded(uVar14,0,0);
              if ((uVar9 & 1) != 0) {
                if (**(long **)(*(long *)puVar6 + 0xb8) == 0) goto LAB_02c864a8;
                Pet_Item_List_ReloadList_0x6000c46();
              }
              lVar8 = *(long *)puVar4;
              if (*(int *)(lVar8 + 0xe4) == 0) {
                func_0x029f5bd0();
                lVar8 = *(long *)puVar4;
              }
              lVar8 = *(long *)(*(long *)(lVar8 + 0xb8) + 0x28);
              if ((lVar8 != 0) && (lVar8 = *(long *)(lVar8 + 0x90), lVar8 != 0)) {
                if (0 < (int)*(ulong *)(lVar8 + 0x18)) {
                  uVar9 = 0;
                  uVar13 = *(ulong *)(lVar8 + 0x18) & 0xffffffff;
                  do {
                    if (uVar13 <= uVar9) goto LAB_02c864a4;
                    lVar11 = *(long *)(lVar8 + 0x20 + uVar9 * 8);
                    if (*(int *)(*(long *)puVar5 + 0xe4) == 0) {
                      func_0x029f5bd0();
                    }
                    uVar13 = Object_op_Inequality_0x6000ded(lVar11,0,0);
                    if ((uVar13 & 1) != 0) {
                      if (lVar11 == 0) goto LAB_02c864a8;
                      Pet_Slot_Reload(lVar11);
                    }
                    uVar13 = (ulong)*(uint *)(lVar8 + 0x18);
                    uVar9 = uVar9 + 1;
                  } while ((long)uVar9 < (long)(int)*(uint *)(lVar8 + 0x18));
                }
                lVar8 = *(long *)puVar4;
                if (*(int *)(lVar8 + 0xe4) == 0) {
                  func_0x029f5bd0();
                  lVar8 = *(long *)puVar4;
                }
                lVar8 = *(long *)(*(long *)(lVar8 + 0xb8) + 0x28);
                if (lVar8 != 0) {
                  Pet_manager_Pet_Reload(lVar8,0);
                  if (cRam000000000625ba57 == '\0') {
                    func_0x029f5a50(PTR_DAT_05e5dd70);
                    cRam000000000625ba57 = '\x01';
                  }
                  if (**(long **)(*(long *)PTR_DAT_05e5dd70 + 0xb8) != 0) {
                    Sound_manager_PlaySfx_0x600054a
                              (0x3f800000,**(long **)(*(long *)PTR_DAT_05e5dd70 + 0xb8),0xd,0,0);
                    puVar4 = PTR_DAT_05e58a10;
                    uStack_48 = *(undefined4 *)(param_1 + 0x20);
                    uVar14 = func_0x029f5bd8(*(undefined8 *)(PTR_DAT_05e58a10 + 0x48),&uStack_48);
                    iStack_54 = iVar1;
                    uVar10 = func_0x029f5bd8(*(undefined8 *)(puVar4 + 0x48),&iStack_54);
                    uVar14 = String_Format_0x600029d
                                       (*(undefined8 *)PTR_DAT_05e63e90,uVar14,uVar10,0);
                    goto LAB_02c86418;
                  }
                }
              }
              goto LAB_02c864a8;
            }
          }
        }
      }
    }
LAB_02c864a4:
                    /* WARNING: Subroutine does not return */
    Throw_Index_Wrapper();
  }
LAB_02c864a8:
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

