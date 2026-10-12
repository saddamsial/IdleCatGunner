/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2aa56f4, Ghidra VA 02ba56f4. */

void Mission_manager_Mission_UI_Reload(long param_1)

{
  long lVar1;
  int iVar2;
  undefined *puVar3;
  undefined *puVar4;
  undefined *puVar5;
  undefined *puVar6;
  undefined *puVar7;
  undefined4 uVar8;
  long lVar9;
  undefined8 uVar10;
  undefined4 uVar11;
  long lVar12;
  ulong uVar13;
  uint uVar14;
  ulong uVar15;
  long lVar16;
  long *plVar17;
  long lVar18;
  
  puVar3 = PTR_DAT_05e5e748;
  if ((bRam000000000625ba49 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e5e750);
    func_0x029f5a50(PTR_DAT_05e5e758);
    func_0x029f5a50(PTR_DAT_05e5d790);
    func_0x029f5a50(PTR_DAT_05e5e760);
    func_0x029f5a50(PTR_DAT_05e5e768);
    func_0x029f5a50(PTR_DAT_05e5e748);
    bRam000000000625ba49 = 1;
  }
  lVar9 = func_0x029f5cec(*(undefined8 *)puVar3);
  __c__DisplayClass62_0__ctor_0x600036f(lVar9,0);
  if (lVar9 != 0) {
    *(long *)(lVar9 + 0x18) = param_1;
    Managed_WriteBarrier((long *)(lVar9 + 0x18),param_1);
    puVar7 = PTR_DAT_05e5e768;
    puVar6 = PTR_DAT_05e5e760;
    puVar5 = PTR_DAT_05e5e758;
    puVar4 = PTR_DAT_05e5e750;
    puVar3 = PTR_DAT_05e5d790;
    lVar12 = *(long *)(param_1 + 0x90);
    if (lVar12 != 0) {
      uVar14 = 0;
      do {
        if (*(int *)(lVar12 + 0x18) <= (int)uVar14) {
          lVar12 = func_0x029f5b40(*(undefined8 *)puVar3);
          if (lVar12 != 0) {
            uVar15 = *(ulong *)(lVar12 + 0x18);
            uVar14 = (uint)uVar15;
            if ((int)uVar14 < 1) goto LAB_02ba58d8;
            uVar13 = 0;
            goto LAB_02ba58c0;
          }
          break;
        }
        lVar12 = *(long *)(param_1 + 0x20);
        if (lVar12 == 0) break;
        if (*(uint *)(lVar12 + 0x18) <= uVar14) goto LAB_02ba5a18;
        lVar16 = *(long *)(lVar12 + (long)(int)uVar14 * 8 + 0x20);
        uVar8 = Mission_manager_Mission_Status_return(param_1,lVar16);
        lVar12 = *(long *)(param_1 + 0x90);
        if (lVar12 == 0) break;
        if (*(uint *)(lVar12 + 0x18) <= uVar14) goto LAB_02ba5a18;
        if (lVar16 == 0) break;
        iVar2 = *(int *)(lVar16 + 0x18);
        uVar11 = 0;
        if (iVar2 < 2) {
          if (iVar2 == 0) {
            uVar11 = *(undefined4 *)(param_1 + 0x50);
          }
          else if (iVar2 == 1) {
            uVar11 = *(undefined4 *)(param_1 + 0x54);
          }
        }
        else if (iVar2 == 2) {
          uVar11 = *(undefined4 *)(param_1 + 0x58);
        }
        else if (iVar2 == 3) {
          uVar11 = *(undefined4 *)(param_1 + 0x5c);
        }
        lVar12 = *(long *)(lVar12 + (long)(int)uVar14 * 8 + 0x20);
        if (lVar12 == 0) break;
        uVar14 = uVar14 + 1;
        Mission_Item_UI_Value_Reload_0x6000386(lVar12,uVar11,*(undefined4 *)(lVar16 + 0x1c),uVar8,0)
        ;
        lVar12 = *(long *)(param_1 + 0x90);
      } while (lVar12 != 0);
    }
  }
  goto LAB_02ba5964;
LAB_02ba59a8:
  if (uVar14 <= (uint)uVar15) {
LAB_02ba5a18:
                    /* WARNING: Subroutine does not return */
    Throw_Index_Wrapper();
  }
  lVar9 = *(long *)(param_1 + 0x90);
  if (lVar9 == 0) goto LAB_02ba5964;
  uVar14 = *(uint *)(lVar12 + 0x20 + uVar15 * 4);
  if (*(uint *)(lVar9 + 0x18) <= uVar14) goto LAB_02ba5a18;
  lVar9 = *(long *)(lVar9 + (long)(int)uVar14 * 8 + 0x20);
  if ((lVar9 == 0) || (lVar9 = Component_get_transform_0x6000c82(lVar9,0), lVar9 == 0))
  goto LAB_02ba5964;
  Transform_SetSiblingIndex_0x6000f7f(lVar9,uVar15 & 0xffffffff,0);
  uVar14 = *(uint *)(lVar12 + 0x18);
  uVar15 = uVar15 + 1;
  if ((int)uVar14 <= (int)uVar15) {
    return;
  }
  goto LAB_02ba59a8;
  while( true ) {
    *(int *)(lVar12 + 0x20 + uVar13 * 4) = (int)uVar13;
    uVar13 = uVar13 + 1;
    if ((uVar14 & ((int)uVar14 >> 0x1f ^ 0xffffffffU)) == uVar13) break;
LAB_02ba58c0:
    if ((uVar15 & 0xffffffff) == uVar13) goto LAB_02ba5a18;
  }
LAB_02ba58d8:
  if (*(long *)(param_1 + 0x90) != 0) {
    lVar16 = func_0x029f5b40(*(undefined8 *)puVar6,*(undefined4 *)(*(long *)(param_1 + 0x90) + 0x18)
                            );
    plVar17 = (long *)(lVar9 + 0x10);
    *plVar17 = lVar16;
    Managed_WriteBarrier(plVar17,lVar16);
    lVar16 = *(long *)(param_1 + 0x90);
    if (lVar16 != 0) {
      uVar15 = 0;
      do {
        if ((long)*(int *)(lVar16 + 0x18) <= (long)uVar15) {
          uVar10 = func_0x029f5cec(*(undefined8 *)puVar5);
          func_0x03cf77bc(uVar10,lVar9,*(undefined8 *)puVar7,0);
          func_0x02f4973c(lVar12,uVar10,*(undefined8 *)puVar4);
          uVar14 = *(uint *)(lVar12 + 0x18);
          if ((int)uVar14 < 1) {
            return;
          }
          uVar15 = 0;
          goto LAB_02ba59a8;
        }
        lVar16 = *(long *)(param_1 + 0x20);
        if (lVar16 == 0) break;
        if (*(uint *)(lVar16 + 0x18) <= uVar15) goto LAB_02ba5a18;
        lVar18 = *plVar17;
        uVar8 = Mission_manager_Mission_Status_return
                          (param_1,*(undefined8 *)(lVar16 + uVar15 * 8 + 0x20));
        if (lVar18 == 0) break;
        if (*(uint *)(lVar18 + 0x18) <= uVar15) goto LAB_02ba5a18;
        lVar1 = uVar15 * 4;
        lVar16 = *(long *)(param_1 + 0x90);
        uVar15 = uVar15 + 1;
        *(undefined4 *)(lVar18 + lVar1 + 0x20) = uVar8;
      } while (lVar16 != 0);
    }
  }
LAB_02ba5964:
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

