/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b73c20, Ghidra VA 02c73c20. */

void Gun_Item_List_ReloadList(long param_1)

{
  int iVar1;
  uint uVar2;
  undefined *puVar3;
  undefined *puVar4;
  undefined *puVar5;
  undefined *puVar6;
  undefined *puVar7;
  ulong uVar8;
  long lVar9;
  long lVar10;
  ulong uVar11;
  long lVar12;
  long *plVar13;
  long lVar14;
  undefined8 uVar15;
  long lVar16;
  uint uVar17;
  undefined8 uStack_88;
  undefined8 *puStack_80;
  long lStack_78;
  undefined8 uStack_70;
  undefined8 *puStack_68;
  long lStack_60;
  
  puVar4 = PTR_DAT_05e5dd40;
  if ((bRam000000000625c2ec & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e63a90);
    func_0x029f5a50(PTR_DAT_05e63a98);
    func_0x029f5a50(PTR_DAT_05e63aa0);
    func_0x029f5a50(PTR_DAT_05e5dd40);
    func_0x029f5a50(PTR_DAT_05e63c20);
    func_0x029f5a50(PTR_DAT_05e63c28);
    func_0x029f5a50(PTR_DAT_05e63ab0);
    func_0x029f5a50(PTR_DAT_05e591c0);
    bRam000000000625c2ec = 1;
  }
  puVar7 = PTR_DAT_05e63c20;
  puVar6 = PTR_DAT_05e63a98;
  puVar5 = PTR_DAT_05e63a90;
  puVar3 = PTR_DAT_05e591c0;
  uStack_70 = 0;
  puStack_68 = (undefined8 *)0x0;
  lStack_60 = 0;
  if ((**(long **)(*(long *)puVar4 + 0xb8) != 0) && (*(long *)(param_1 + 0x40) != 0)) {
    lVar16 = *(long *)(**(long **)(*(long *)puVar4 + 0xb8) + 0x40);
    func_0x0452d690(&uStack_88,*(long *)(param_1 + 0x40),*(undefined8 *)PTR_DAT_05e63ab0);
    lStack_60 = lStack_78;
    puStack_68 = puStack_80;
    uStack_70 = uStack_88;
    uStack_88 = 0;
    puStack_80 = &uStack_70;
    while (uVar8 = func_0x03fa4e10(&uStack_70,*(undefined8 *)puVar6), lVar9 = lStack_60,
          (uVar8 & 1) != 0) {
      if (lStack_60 == 0) {
                    /* WARNING: Subroutine does not return */
        Throw_NullReference_Wrapper();
      }
      if (*(char *)(lStack_60 + 0xb8) != '\0') {
        Gun_Item_ForceEndDrag_0x6000b19(lStack_60);
      }
      lVar9 = Component_get_gameObject_0x6000c83(lVar9,0);
      if (lVar9 == 0) {
                    /* WARNING: Subroutine does not return */
        Throw_NullReference_Wrapper();
      }
      GameObject_SetActive_0x6000cfe(lVar9,0,0);
    }
    func_0x03fa4e0c(&uStack_70,*(undefined8 *)puVar5);
    lVar9 = *(long *)(param_1 + 0x40);
    if (lVar9 != 0) {
      iVar1 = *(int *)(lVar9 + 0x18);
      *(undefined4 *)(lVar9 + 0x18) = 0;
      *(int *)(lVar9 + 0x1c) = *(int *)(lVar9 + 0x1c) + 1;
      if (0 < iVar1) {
        Array_Clear_0x6000d48(*(undefined8 *)(lVar9 + 0x10),0,iVar1,0);
      }
      if (lVar16 != 0) {
        if (0 < (int)*(ulong *)(lVar16 + 0x18)) {
          uVar17 = 0;
          uVar8 = 0;
          uVar11 = *(ulong *)(lVar16 + 0x18) & 0xffffffff;
          do {
            if (uVar11 <= uVar8) {
LAB_02c73f60:
                    /* WARNING: Subroutine does not return */
              Throw_Index_Wrapper();
            }
            iVar1 = *(int *)(lVar16 + 0x20 + uVar8 * 4);
            if (iVar1 != -1) {
              lVar9 = *(long *)(param_1 + 0x20);
              if (lVar9 == 0) goto LAB_02c73f54;
              if ((int)*(uint *)(lVar9 + 0x18) <= (int)uVar17) break;
              if (*(uint *)(lVar9 + 0x18) <= uVar17) goto LAB_02c73f60;
              lVar9 = *(long *)(lVar9 + (long)(int)uVar17 * 8 + 0x20);
              if (lVar9 == 0) goto LAB_02c73f54;
              Gun_Item_Reload_0x6000b18(lVar9,iVar1,uVar8 & 0xffffffff);
              lVar10 = Component_get_gameObject_0x6000c83(lVar9,0);
              if (lVar10 == 0) goto LAB_02c73f54;
              GameObject_SetActive_0x6000cfe(lVar10,1,0);
              lVar10 = *(long *)(param_1 + 0x40);
              if (lVar10 == 0) goto LAB_02c73f54;
              lVar12 = *(long *)(lVar10 + 0x10);
              lVar14 = *(long *)puVar7;
              *(int *)(lVar10 + 0x1c) = *(int *)(lVar10 + 0x1c) + 1;
              if (lVar12 == 0) goto LAB_02c73f54;
              uVar2 = *(uint *)(lVar10 + 0x18);
              if (uVar2 < *(uint *)(lVar12 + 0x18)) {
                *(uint *)(lVar10 + 0x18) = uVar2 + 1;
                plVar13 = (long *)(lVar12 + (long)(int)uVar2 * 8 + 0x20);
                *plVar13 = lVar9;
                Managed_WriteBarrier(plVar13,lVar9);
              }
              else {
                func_0x0452cba8(lVar10,lVar9,
                                *(undefined8 *)(*(long *)(*(long *)(lVar14 + 0x20) + 0xc0) + 0x70));
              }
              uVar17 = uVar17 + 1;
            }
            uVar11 = (ulong)*(uint *)(lVar16 + 0x18);
            uVar8 = uVar8 + 1;
          } while ((long)uVar8 < (long)(int)*(uint *)(lVar16 + 0x18));
        }
        Gun_Item_List_AlignGrid(param_1);
        Gun_Item_List_RestoreAutoMergePairState_0x6000b71(param_1);
        uVar15 = **(undefined8 **)(*(long *)puVar4 + 0xb8);
        if (*(int *)(*(long *)puVar3 + 0xe4) == 0) {
          func_0x029f5bd0();
        }
        uVar8 = Object_op_Inequality_0x6000ded(uVar15,0,0);
        if ((uVar8 & 1) != 0) {
          if (**(long **)(*(long *)puVar4 + 0xb8) == 0) goto LAB_02c73f54;
          uVar15 = *(undefined8 *)(**(long **)(*(long *)puVar4 + 0xb8) + 0xe0);
          if (*(int *)(*(long *)puVar3 + 0xe4) == 0) {
            func_0x029f5bd0();
          }
          uVar8 = Object_op_Inequality_0x6000ded(uVar15,0,0);
          if ((uVar8 & 1) != 0) {
            if ((**(long **)(*(long *)puVar4 + 0xb8) == 0) ||
               (lVar16 = *(long *)(**(long **)(*(long *)puVar4 + 0xb8) + 0xe0), lVar16 == 0))
            goto LAB_02c73f54;
            Gun_Merge_Tutorial_Reload_0x6000a99(lVar16,0);
          }
        }
        return;
      }
    }
  }
LAB_02c73f54:
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

