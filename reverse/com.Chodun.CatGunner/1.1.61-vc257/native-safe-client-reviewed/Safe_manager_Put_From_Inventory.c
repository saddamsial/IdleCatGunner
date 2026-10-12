/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b6be58, Ghidra VA 02c6be58. */

uint Safe_manager_Put_From_Inventory(long param_1,uint param_2)

{
  int iVar1;
  undefined *puVar2;
  undefined *puVar3;
  uint uVar4;
  ulong uVar5;
  undefined8 uVar6;
  long lVar7;
  long lVar8;
  long lVar9;
  
  puVar3 = PTR_DAT_05e5dd40;
  puVar2 = PTR_DAT_05e591c0;
  if ((bRam000000000625c292 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e5dd40);
    func_0x029f5a50(PTR_DAT_05e591c0);
    func_0x029f5a50(PTR_DAT_05e63af0);
    bRam000000000625c292 = 1;
  }
  lVar9 = **(long **)(*(long *)puVar3 + 0xb8);
  if (*(int *)(*(long *)puVar2 + 0xe4) == 0) {
    func_0x029f5bd0();
  }
  uVar5 = Object_op_Equality_0x6000dec(lVar9,0,0);
  if ((uVar5 & 1) == 0) {
    uVar5 = Safe_manager_get_Is_Unlocked();
    if ((uVar5 & 1) == 0) {
      Safe_manager_Alert_Locked();
    }
    else if (-1 < (int)param_2) {
      if ((lVar9 == 0) || (lVar7 = *(long *)(lVar9 + 0x40), lVar7 == 0)) goto LAB_02c6c078;
      if (((int)param_2 < *(int *)(lVar7 + 0x18)) &&
         (iVar1 = *(int *)(lVar7 + (ulong)param_2 * 4 + 0x20), iVar1 != -1)) {
        if ((*(uint *)(lVar9 + 0xc0) == 0xffffffff) || (*(uint *)(lVar9 + 0xc0) != param_2)) {
          uVar4 = Safe_manager_FindFirstEmpty(param_1);
          if (uVar4 == 0xffffffff) {
            uVar6 = Gun_manager_Loc_0x6000a7a(*(undefined8 *)PTR_DAT_05e63af0);
            UI_manager_Alert_0x6000602(uVar6,0);
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
            lVar7 = *(long *)(param_1 + 0x20);
            if (lVar7 != 0) {
              if (*(uint *)(lVar7 + 0x18) <= uVar4) {
LAB_02c6c07c:
                    /* WARNING: Subroutine does not return */
                Throw_Index_Wrapper();
              }
              lVar8 = *(long *)(lVar9 + 0x40);
              *(int *)(lVar7 + (long)(int)uVar4 * 4 + 0x20) = iVar1;
              if (lVar8 != 0) {
                if (*(uint *)(lVar8 + 0x18) <= param_2) goto LAB_02c6c07c;
                *(undefined4 *)(lVar8 + (ulong)param_2 * 4 + 0x20) = 0xffffffff;
                Gun_manager_Owned_Pause_Set_0x6000a50(lVar9,param_2,0);
                if (cRam000000000625ba57 == '\0') {
                  func_0x029f5a50(PTR_DAT_05e5dd70);
                  cRam000000000625ba57 = '\x01';
                }
                if (**(long **)(*(long *)PTR_DAT_05e5dd70 + 0xb8) != 0) {
                  Sound_manager_PlaySfx_0x600054a
                            (0x3f800000,**(long **)(*(long *)PTR_DAT_05e5dd70 + 0xb8),9,0,0);
                  Gun_manager_ReloadGunUI_0x6000a6b(lVar9);
                  return uVar4;
                }
              }
            }
          }
LAB_02c6c078:
                    /* WARNING: Subroutine does not return */
          Throw_NullReference_Wrapper();
        }
        Gun_manager_AdRewardGun_TryWatch_0x6000a87(lVar9);
      }
    }
  }
  return 0xffffffff;
}

