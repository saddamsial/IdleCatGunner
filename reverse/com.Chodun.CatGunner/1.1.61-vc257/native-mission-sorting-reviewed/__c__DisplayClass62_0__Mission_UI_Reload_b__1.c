/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b032fc, Ghidra VA 02c032fc. */

void __c__DisplayClass62_0__Mission_UI_Reload_b__1(long param_1,uint param_2,uint param_3)

{
  undefined4 uVar1;
  uint uVar2;
  uint uVar3;
  uint *puVar4;
  long lVar5;
  long lVar6;
  undefined8 uVar7;
  long lVar8;
  long lVar9;
  uint uStack_44;
  uint uStack_38;
  uint uStack_34;
  
  uStack_34 = param_2;
  if ((bRam000000000625be55 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e5dd50);
    bRam000000000625be55 = 1;
  }
  lVar5 = *(long *)(param_1 + 0x10);
  uStack_38 = 0;
  uStack_44 = 0;
  if (lVar5 != 0) {
    if (*(uint *)(lVar5 + 0x18) <= param_2) {
LAB_02c034a0:
                    /* WARNING: Subroutine does not return */
      Throw_Index_Wrapper();
    }
    if ((*(long *)(param_1 + 0x18) != 0) &&
       (lVar6 = *(long *)(*(long *)(param_1 + 0x18) + 0x20), lVar6 != 0)) {
      if (*(uint *)(lVar6 + 0x18) <= param_2) goto LAB_02c034a0;
      lVar9 = (long)(int)param_2;
      uVar1 = *(undefined4 *)(lVar5 + lVar9 * 4 + 0x20);
      uVar7 = *(undefined8 *)(lVar6 + lVar9 * 8 + 0x20);
      if (*(int *)(*(long *)PTR_DAT_05e5dd50 + 0xe4) == 0) {
        func_0x029f5bd0();
      }
      uVar2 = Mission_manager__Mission_UI_Reload_g__GetSortPriority_62_0(uVar1,uVar7,0);
      lVar5 = *(long *)(param_1 + 0x10);
      uStack_38 = uVar2;
      if (lVar5 != 0) {
        if (*(uint *)(lVar5 + 0x18) <= param_3) goto LAB_02c034a0;
        if ((*(long *)(param_1 + 0x18) != 0) &&
           (lVar6 = *(long *)(*(long *)(param_1 + 0x18) + 0x20), lVar6 != 0)) {
          if (*(uint *)(lVar6 + 0x18) <= param_3) goto LAB_02c034a0;
          lVar8 = (long)(int)param_3;
          uVar3 = Mission_manager__Mission_UI_Reload_g__GetSortPriority_62_0
                            (*(undefined4 *)(lVar5 + lVar8 * 4 + 0x20),
                             *(undefined8 *)(lVar6 + lVar8 * 8 + 0x20),0);
          if (uVar2 != uVar3) {
            puVar4 = &uStack_38;
LAB_02c0347c:
            Int32_CompareTo_0x600080a(puVar4,uVar3,0);
            return;
          }
          if ((*(long *)(param_1 + 0x18) != 0) &&
             (lVar5 = *(long *)(*(long *)(param_1 + 0x18) + 0x20), lVar5 != 0)) {
            if (*(uint *)(lVar5 + 0x18) <= param_2) goto LAB_02c034a0;
            lVar6 = *(long *)(lVar5 + lVar9 * 8 + 0x20);
            if (lVar6 != 0) {
              uStack_44 = *(uint *)(lVar6 + 0x18);
              if (*(uint *)(lVar5 + 0x18) <= param_3) goto LAB_02c034a0;
              lVar5 = *(long *)(lVar5 + lVar8 * 8 + 0x20);
              if (lVar5 != 0) {
                uVar3 = *(uint *)(lVar5 + 0x18);
                if (uStack_44 == uVar3) {
                  puVar4 = &uStack_34;
                  uVar3 = param_3;
                }
                else {
                  puVar4 = &uStack_44;
                }
                goto LAB_02c0347c;
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

