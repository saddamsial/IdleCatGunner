/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b73fc4, Ghidra VA 02c73fc4. */

void Gun_Item_FinalizeSwap(long param_1)

{
  uint uVar1;
  undefined4 uVar2;
  undefined4 uVar3;
  bool bVar4;
  undefined *puVar5;
  undefined *puVar6;
  uint uVar7;
  uint uVar8;
  ulong uVar9;
  ulong uVar10;
  long lVar11;
  uint uVar12;
  undefined4 *puVar13;
  long lVar14;
  undefined4 *puVar15;
  
  puVar5 = PTR_DAT_05e5dd40;
  if ((bRam000000000625c2e0 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e63aa8);
    func_0x029f5a50(PTR_DAT_05e5dd40);
    bRam000000000625c2e0 = 1;
  }
  puVar6 = PTR_DAT_05e63aa8;
  lVar11 = **(long **)(*(long *)puVar5 + 0xb8);
  if ((lVar11 == 0) || (*(long *)(param_1 + 0xd0) == 0)) goto LAB_02c74214;
  uVar1 = *(uint *)(param_1 + 0xdc);
  if (-1 < (int)uVar1) {
    lVar14 = *(long *)(lVar11 + 0x40);
    if (lVar14 == 0) goto LAB_02c74214;
    if ((int)uVar1 < *(int *)(lVar14 + 0x18)) {
      uVar12 = *(uint *)(*(long *)(param_1 + 0xd0) + 0x90);
      if ((-1 < (int)uVar12) && ((int)uVar12 < *(int *)(lVar14 + 0x18))) {
        uVar9 = Gun_manager_Is_AdRewardSlot_0x6000a84(lVar11,uVar1,0);
        uVar10 = Gun_manager_Is_AdRewardSlot_0x6000a84(lVar11,uVar12,0);
        if ((*(int *)(param_1 + 0xd8) == -1) ||
           (uVar7 = *(uint *)(lVar14 + 0x18), (int)uVar7 <= *(int *)(param_1 + 0xd8))) {
          Gun_manager_Owned_Swap(lVar11,uVar1,uVar12,0);
          bVar4 = true;
        }
        else {
          if ((uVar7 <= uVar1) || (uVar7 <= uVar12)) {
LAB_02c74218:
                    /* WARNING: Subroutine does not return */
            Throw_Index_Wrapper();
          }
          puVar13 = (undefined4 *)(lVar14 + (ulong)uVar1 * 4 + 0x20);
          uVar2 = *puVar13;
          puVar15 = (undefined4 *)(lVar14 + (ulong)uVar12 * 4 + 0x20);
          uVar3 = *puVar15;
          uVar7 = Gun_manager_Owned_Pause_Get_0x6000a4e(lVar11,uVar1,0);
          uVar8 = Gun_manager_Owned_Pause_Get_0x6000a4e(lVar11,uVar12,0);
          if (*(uint *)(lVar14 + 0x18) <= uVar1) goto LAB_02c74218;
          *puVar13 = 0xffffffff;
          Gun_manager_Owned_Pause_Set_0x6000a50(lVar11,uVar1,0,0);
          if (*(uint *)(lVar14 + 0x18) <= *(uint *)(param_1 + 0xd8)) goto LAB_02c74218;
          *(undefined4 *)(lVar14 + (long)(int)*(uint *)(param_1 + 0xd8) * 4 + 0x20) = uVar3;
          Gun_manager_Owned_Pause_Set_0x6000a50(lVar11,*(undefined4 *)(param_1 + 0xd8),uVar8 & 1,0);
          if (*(uint *)(param_1 + 0xd8) != uVar12) {
            if (*(uint *)(lVar14 + 0x18) <= uVar12) goto LAB_02c74218;
            *puVar15 = 0xffffffff;
            Gun_manager_Owned_Pause_Set_0x6000a50(lVar11,uVar12,0,0);
          }
          if (*(uint *)(lVar14 + 0x18) <= uVar12) goto LAB_02c74218;
          *puVar15 = uVar2;
          Gun_manager_Owned_Pause_Set_0x6000a50(lVar11,uVar12,uVar7 & 1,0);
          bVar4 = false;
        }
        if ((uVar9 & 1) == 0) {
          if ((uVar10 & 1) == 0) goto LAB_02c741e4;
          uVar12 = uVar1;
          if (!bVar4) {
            uVar12 = *(uint *)(param_1 + 0xd8);
          }
        }
        *(uint *)(lVar11 + 0xc0) = uVar12;
      }
    }
  }
LAB_02c741e4:
  if (**(long **)(*(long *)puVar6 + 0xb8) != 0) {
    Gun_Item_List_ReloadList_0x6000b63();
    return;
  }
LAB_02c74214:
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

