/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b79470, Ghidra VA 02c79470. */

void Gun_Slot_Unequip(long param_1)

{
  int iVar1;
  undefined *puVar2;
  undefined *puVar3;
  int iVar4;
  uint uVar5;
  uint uVar6;
  ulong uVar7;
  undefined8 uVar8;
  long lVar9;
  ulong uVar10;
  long lVar11;
  undefined8 uVar12;
  long lVar13;
  int iStack_4c;
  undefined4 uStack_48;
  uint uStack_44;
  
  puVar2 = PTR_DAT_05e5dd40;
  if ((bRam000000000625c30d & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e5d5b0);
    func_0x029f5a50(PTR_DAT_05e58f08);
    func_0x029f5a50(PTR_DAT_05e63aa8);
    func_0x029f5a50(PTR_DAT_05e5dd40);
    func_0x029f5a50(PTR_DAT_05e591c0);
    func_0x029f5a50(PTR_DAT_05e63ce0);
    func_0x029f5a50(PTR_DAT_05e63ce8);
    func_0x029f5a50(PTR_DAT_05e63cf0);
    func_0x029f5a50(PTR_DAT_05e63cf8);
    bRam000000000625c30d = 1;
  }
  lVar11 = **(long **)(*(long *)puVar2 + 0xb8);
  if ((lVar11 == 0) || (lVar13 = *(long *)(lVar11 + 0x28), lVar13 == 0)) goto LAB_02c79894;
  uVar5 = *(uint *)(param_1 + 0x20);
  if (*(uint *)(lVar13 + 0x18) <= uVar5) goto LAB_02c79890;
  iVar1 = *(int *)(lVar13 + (long)(int)uVar5 * 4 + 0x20);
  if (iVar1 == -1) {
    uStack_44 = uVar5;
    uVar12 = func_0x029f5bd8(*(undefined8 *)(PTR_DAT_05e58a10 + 0x48),&uStack_44);
    uVar12 = String_Format_0x600029c(*(undefined8 *)PTR_DAT_05e63cf8,uVar12,0);
LAB_02c797cc:
    if (*(int *)(*(long *)PTR_DAT_05e58f08 + 0xe4) == 0) {
      func_0x029f5bd0(*(long *)PTR_DAT_05e58f08);
    }
    Debug_Log_0x600033c(uVar12,0);
    return;
  }
  iVar4 = Gun_Slot_GetEquippedCount();
  if (iVar4 < 2) {
    if (*(int *)(*(long *)PTR_DAT_05e58f08 + 0xe4) == 0) {
      func_0x029f5bd0();
    }
    Debug_Log_0x600033c(*(undefined8 *)PTR_DAT_05e63cf0,0);
    return;
  }
  uVar5 = Gun_manager_FindFirstEmptyOwned(lVar11,0);
  if (uVar5 == 0xffffffff) {
    if (*(int *)(*(long *)PTR_DAT_05e58f08 + 0xe4) == 0) {
      func_0x029f5bd0();
    }
    Debug_LogWarning_0x6000346(*(undefined8 *)PTR_DAT_05e63ce8,0);
    return;
  }
  lVar9 = *(long *)(lVar11 + 0x40);
  if (lVar9 == 0) goto LAB_02c79894;
  if (uVar5 < *(uint *)(lVar9 + 0x18)) {
    *(int *)(lVar9 + (long)(int)uVar5 * 4 + 0x20) = iVar1;
    uVar6 = Gun_manager_Selected_Pause_Get_0x6000a4f(lVar11,*(undefined4 *)(param_1 + 0x20),0);
    Gun_manager_Owned_Pause_Set_0x6000a50(lVar11,uVar5,uVar6 & 1,0);
    if (*(uint *)(param_1 + 0x20) < *(uint *)(lVar13 + 0x18)) {
      *(undefined4 *)(lVar13 + (long)(int)*(uint *)(param_1 + 0x20) * 4 + 0x20) = 0xffffffff;
      Gun_manager_Selected_Pause_Set_0x6000a51(lVar11,*(undefined4 *)(param_1 + 0x20),0,0);
      Gun_Slot_Reload(param_1);
      puVar3 = PTR_DAT_05e63aa8;
      puVar2 = PTR_DAT_05e591c0;
      uVar12 = **(undefined8 **)(*(long *)PTR_DAT_05e63aa8 + 0xb8);
      if (*(int *)(*(long *)PTR_DAT_05e591c0 + 0xe4) == 0) {
        func_0x029f5bd0();
      }
      uVar7 = Object_op_Inequality_0x6000ded(uVar12,0,0);
      if ((uVar7 & 1) != 0) {
        if (**(long **)(*(long *)puVar3 + 0xb8) == 0) goto LAB_02c79894;
        Gun_Item_List_ReloadList_0x6000b63();
      }
      lVar11 = *(long *)(lVar11 + 0x98);
      if (lVar11 != 0) {
        if (0 < (int)*(ulong *)(lVar11 + 0x18)) {
          uVar7 = 0;
          uVar10 = *(ulong *)(lVar11 + 0x18) & 0xffffffff;
          do {
            if (uVar10 <= uVar7) goto LAB_02c79890;
            lVar13 = *(long *)(lVar11 + 0x20 + uVar7 * 8);
            if (*(int *)(*(long *)puVar2 + 0xe4) == 0) {
              func_0x029f5bd0();
            }
            uVar10 = Object_op_Inequality_0x6000ded(lVar13,0,0);
            if ((uVar10 & 1) != 0) {
              if (lVar13 == 0) goto LAB_02c79894;
              Gun_Slot_Reload(lVar13);
            }
            uVar10 = (ulong)*(uint *)(lVar11 + 0x18);
            uVar7 = uVar7 + 1;
          } while ((long)uVar7 < (long)(int)*(uint *)(lVar11 + 0x18));
        }
        puVar3 = PTR_DAT_05e5d5b0;
        uVar12 = *(undefined8 *)(*(long *)(*(long *)PTR_DAT_05e5d5b0 + 0xb8) + 8);
        if (*(int *)(*(long *)puVar2 + 0xe4) == 0) {
          func_0x029f5bd0();
        }
        uVar7 = Object_op_Inequality_0x6000ded(uVar12,0,0);
        if ((uVar7 & 1) != 0) {
          lVar11 = *(long *)(*(long *)(*(long *)puVar3 + 0xb8) + 8);
          if (lVar11 == 0) goto LAB_02c79894;
          Cat_manager_Balance_Reload(lVar11,0);
        }
        if (cRam000000000625ba57 == '\0') {
          func_0x029f5a50(PTR_DAT_05e5dd70);
          cRam000000000625ba57 = '\x01';
        }
        if (**(long **)(*(long *)PTR_DAT_05e5dd70 + 0xb8) != 0) {
          Sound_manager_PlaySfx_0x600054a
                    (0x3f800000,**(long **)(*(long *)PTR_DAT_05e5dd70 + 0xb8),0xd,0,0);
          puVar2 = PTR_DAT_05e58a10;
          uStack_48 = *(undefined4 *)(param_1 + 0x20);
          uVar12 = func_0x029f5bd8(*(undefined8 *)(PTR_DAT_05e58a10 + 0x48),&uStack_48);
          iStack_4c = iVar1;
          uVar8 = func_0x029f5bd8(*(undefined8 *)(puVar2 + 0x48),&iStack_4c);
          uVar12 = String_Format_0x600029d(*(undefined8 *)PTR_DAT_05e63ce0,uVar12,uVar8,0);
          goto LAB_02c797cc;
        }
      }
LAB_02c79894:
                    /* WARNING: Subroutine does not return */
      Throw_NullReference_Wrapper();
    }
  }
LAB_02c79890:
                    /* WARNING: Subroutine does not return */
  Throw_Index_Wrapper();
}

