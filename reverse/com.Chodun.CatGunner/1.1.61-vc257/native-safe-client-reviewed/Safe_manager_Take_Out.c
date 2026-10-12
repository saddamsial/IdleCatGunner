/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b6c118, Ghidra VA 02c6c118. */

uint Safe_manager_Take_Out(long param_1,uint param_2)

{
  int iVar1;
  undefined *puVar2;
  undefined *puVar3;
  char cVar4;
  uint uVar5;
  ulong uVar6;
  long lVar7;
  long lVar8;
  undefined8 uVar9;
  
  puVar3 = PTR_DAT_05e5dd40;
  puVar2 = PTR_DAT_05e591c0;
  if ((bRam000000000625c293 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e5dd40);
    func_0x029f5a50(PTR_DAT_05e591c0);
    func_0x029f5a50(PTR_DAT_05e63a78);
    bRam000000000625c293 = 1;
  }
  lVar8 = **(long **)(*(long *)puVar3 + 0xb8);
  if (*(int *)(*(long *)puVar2 + 0xe4) == 0) {
    func_0x029f5bd0();
  }
  uVar6 = Object_op_Equality_0x6000dec(lVar8,0,0);
  if (0xf < param_2) {
    return 0xffffffff;
  }
  if ((uVar6 & 1) != 0) {
    return 0xffffffff;
  }
  lVar7 = *(long *)(param_1 + 0x20);
  if (lVar7 != 0) {
    if (*(uint *)(lVar7 + 0x18) <= param_2) goto LAB_02c6c358;
    iVar1 = *(int *)(lVar7 + (ulong)param_2 * 4 + 0x20);
    if (iVar1 == -1) {
      return 0xffffffff;
    }
    if (lVar8 != 0) {
      uVar5 = Gun_manager_FindFirstEmptyOwned_0x6000a49(lVar8);
      if (uVar5 == 0xffffffff) {
        uVar9 = Gun_manager_Loc_0x6000a7a(*(undefined8 *)PTR_DAT_05e63a78);
        UI_manager_Alert_0x6000602(uVar9,0);
        if (cRam000000000625ba57 == '\0') {
          func_0x029f5a50(PTR_DAT_05e5dd70);
          cRam000000000625ba57 = '\x01';
        }
        if (**(long **)(*(long *)PTR_DAT_05e5dd70 + 0xb8) != 0) {
          Sound_manager_PlaySfx_0x600054a
                    (0x3f800000,**(long **)(*(long *)PTR_DAT_05e5dd70 + 0xb8),5,0,0);
          return 0xffffffff;
        }
      }
      else {
        lVar7 = *(long *)(lVar8 + 0x40);
        if (lVar7 != 0) {
          if (*(uint *)(lVar7 + 0x18) <= uVar5) {
LAB_02c6c358:
                    /* WARNING: Subroutine does not return */
            Throw_Index_Wrapper();
          }
          *(int *)(lVar7 + (long)(int)uVar5 * 4 + 0x20) = iVar1;
          Gun_manager_Owned_Pause_Set_0x6000a50(lVar8,uVar5,1);
          cVar4 = cRam000000000625ba57;
          lVar7 = *(long *)(param_1 + 0x20);
          if (lVar7 != 0) {
            if (*(uint *)(lVar7 + 0x18) <= param_2) goto LAB_02c6c358;
            *(undefined4 *)(lVar7 + (ulong)param_2 * 4 + 0x20) = 0xffffffff;
            if (cVar4 == '\0') {
              func_0x029f5a50(PTR_DAT_05e5dd70);
              cRam000000000625ba57 = '\x01';
            }
            if (**(long **)(*(long *)PTR_DAT_05e5dd70 + 0xb8) != 0) {
              Sound_manager_PlaySfx_0x600054a
                        (0x3f800000,**(long **)(*(long *)PTR_DAT_05e5dd70 + 0xb8),0xd,0,0);
              Gun_manager_ReloadGunUI_0x6000a6b(lVar8);
              uVar9 = *(undefined8 *)(lVar8 + 0x58);
              if (*(int *)(*(long *)puVar2 + 0xe4) == 0) {
                func_0x029f5bd0();
              }
              uVar6 = Object_op_Inequality_0x6000ded(uVar9,0,0);
              if ((uVar6 & 1) != 0) {
                if (*(long *)(lVar8 + 0x58) == 0) goto LAB_02c6c354;
                Gun_Item_List_PlaySpawnBounceAtSlot_0x6000b68(*(long *)(lVar8 + 0x58),uVar5,0);
              }
              return uVar5;
            }
          }
        }
      }
    }
  }
LAB_02c6c354:
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

