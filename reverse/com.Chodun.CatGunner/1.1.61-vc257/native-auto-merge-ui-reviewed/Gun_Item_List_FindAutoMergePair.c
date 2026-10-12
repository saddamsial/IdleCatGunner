/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b76ccc, Ghidra VA 02c76ccc. */

/* WARNING: Removing unreachable block (ram,0x02c76f24) */

undefined4 Gun_Item_List_FindAutoMergePair(long param_1,long *param_2,long *param_3)

{
  undefined *puVar1;
  undefined *puVar2;
  undefined *puVar3;
  undefined *puVar4;
  undefined *puVar5;
  undefined *puVar6;
  bool bVar7;
  int iVar8;
  ulong uVar9;
  long lVar10;
  long lVar11;
  int iVar12;
  long lVar13;
  long lVar14;
  undefined8 uVar15;
  undefined4 uStack_ac;
  long lStack_98;
  long *plStack_90;
  long lStack_88;
  long lStack_80;
  long *plStack_78;
  long lStack_70;
  
  if ((bRam000000000625c2f8 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e63a90);
    func_0x029f5a50(PTR_DAT_05e63a98);
    func_0x029f5a50(PTR_DAT_05e63aa0);
    func_0x029f5a50(PTR_DAT_05e5dd40);
    func_0x029f5a50(PTR_DAT_05e63c68);
    func_0x029f5a50(PTR_DAT_05e63c70);
    func_0x029f5a50(PTR_DAT_05e63c78);
    func_0x029f5a50(PTR_DAT_05e63c80);
    func_0x029f5a50(PTR_DAT_05e63ab0);
    func_0x029f5a50(PTR_DAT_05e591c0);
    bRam000000000625c2f8 = 1;
  }
  lStack_80 = 0;
  plStack_78 = (long *)0x0;
  lStack_70 = 0;
  *param_2 = 0;
  Managed_WriteBarrier(param_2,0);
  *param_3 = 0;
  Managed_WriteBarrier(param_3,0);
  puVar6 = PTR_DAT_05e63c80;
  puVar5 = PTR_DAT_05e63c78;
  puVar4 = PTR_DAT_05e63c68;
  puVar3 = PTR_DAT_05e63ab0;
  puVar2 = PTR_DAT_05e63a98;
  puVar1 = PTR_DAT_05e63a90;
  if (*(long *)(param_1 + 0x40) != 0) {
    lVar14 = **(long **)(*(long *)PTR_DAT_05e5dd40 + 0xb8);
    func_0x0452d690(&lStack_98,*(long *)(param_1 + 0x40),*(undefined8 *)PTR_DAT_05e63ab0);
    lVar13 = 0;
    lStack_70 = lStack_88;
    plStack_78 = plStack_90;
    lStack_80 = lStack_98;
    lStack_98 = 0;
    plStack_90 = &lStack_80;
    while (uVar9 = func_0x03fa4e10(&lStack_80,*(undefined8 *)puVar2), lVar11 = lStack_70,
          lVar10 = lStack_98, (uVar9 & 1) != 0) {
      if (lStack_70 == 0) {
                    /* WARNING: Subroutine does not return */
        Throw_NullReference_Wrapper();
      }
      lVar10 = Component_get_gameObject_0x6000c83(lStack_70,0);
      if (lVar10 == 0) {
                    /* WARNING: Subroutine does not return */
        Throw_NullReference_Wrapper();
      }
      uVar9 = GameObject_get_activeSelf_0x6000cff(lVar10,0);
      if (((uVar9 & 1) != 0) && (*(char *)(lVar11 + 0xb8) != '\0')) {
        if (lVar13 == 0) {
          lVar13 = func_0x029f5cec(*(undefined8 *)puVar6);
          func_0x042bb9a4(lVar13,*(undefined8 *)puVar5);
        }
        uVar15 = *(undefined8 *)(lVar11 + 0xc0);
        if (*(int *)(*(long *)PTR_DAT_05e591c0 + 0xe4) == 0) {
          func_0x029f5bd0();
        }
        uVar9 = Object_op_Inequality_0x6000ded(uVar15,0,0);
        if ((uVar9 & 1) != 0) {
          if (lVar13 == 0) goto LAB_02c77190;
          func_0x042bcb98(lVar13,*(undefined8 *)(lVar11 + 0xc0),*(undefined8 *)puVar4);
        }
        uVar15 = *(undefined8 *)(lVar11 + 0xd0);
        if (*(int *)(*(long *)PTR_DAT_05e591c0 + 0xe4) == 0) {
          func_0x029f5bd0();
        }
        uVar9 = Object_op_Inequality_0x6000ded(uVar15,0,0);
        if ((uVar9 & 1) != 0) {
          if (lVar13 == 0) {
                    /* WARNING: Subroutine does not return */
            Throw_NullReference_Wrapper();
          }
          func_0x042bcb98(lVar13,*(undefined8 *)(lVar11 + 0xd0),*(undefined8 *)puVar4);
        }
      }
    }
    func_0x03fa4e0c(plStack_90,*(undefined8 *)puVar1);
    if (lVar10 != 0) {
LAB_02c77188:
      func_0x029f5cf4(lVar10);
LAB_02c77190:
                    /* WARNING: Subroutine does not return */
      Throw_NullReference_Wrapper();
    }
    if ((lVar14 != 0) && (*(long *)(lVar14 + 0x48) != 0)) {
      iVar12 = *(int *)(*(long *)(lVar14 + 0x48) + 0x18) / 5 + -2;
      iVar8 = Gun_manager_get_AutoMerge_Limit_Degree(lVar14,0);
      if (iVar12 <= iVar8) {
        iVar8 = iVar12;
      }
      if (-1 < iVar8) {
        iVar12 = 0;
        uStack_ac = 0;
        do {
          if (*(long *)(param_1 + 0x40) == 0) goto LAB_02c7717c;
          func_0x0452d690(&lStack_98,*(long *)(param_1 + 0x40),*(undefined8 *)puVar3);
          lStack_80 = lStack_98;
          lStack_98 = 0;
          plStack_78 = plStack_90;
          lStack_70 = lStack_88;
          lVar14 = 0;
          plStack_90 = &lStack_80;
          do {
            do {
              lVar11 = lVar14;
              uVar9 = func_0x03fa4e10(&lStack_80,*(undefined8 *)puVar2);
              lVar10 = lStack_70;
              if ((uVar9 & 1) == 0) {
                lVar10 = 0xe;
                goto LAB_02c770c0;
              }
              if (lStack_70 == 0) {
                    /* WARNING: Subroutine does not return */
                Throw_NullReference_Wrapper();
              }
              lVar14 = Component_get_gameObject_0x6000c83(lStack_70,0);
              if (lVar14 == 0) {
                    /* WARNING: Subroutine does not return */
                Throw_NullReference_Wrapper();
              }
              uVar9 = GameObject_get_activeSelf_0x6000cff(lVar14,0);
              lVar14 = lVar11;
            } while ((((((uVar9 & 1) == 0) || (*(int *)(lVar10 + 0x8c) / 5 != iVar12)) ||
                      (*(char *)(lVar10 + 0x70) != '\0')) ||
                     ((*(char *)(lVar10 + 0x78) != '\0' || (*(char *)(lVar10 + 0xb8) != '\0')))) ||
                    ((*(char *)(lVar10 + 0x79) != '\0' ||
                     ((lVar13 != 0 &&
                      (uVar9 = func_0x042bc0a8(lVar13,lVar10,*(undefined8 *)PTR_DAT_05e63c70),
                      (uVar9 & 1) != 0))))));
            if (*(int *)(*(long *)PTR_DAT_05e591c0 + 0xe4) == 0) {
              func_0x029f5bd0();
            }
            uVar9 = Object_op_Equality_0x6000dec(lVar11,0,0);
            lVar14 = lVar10;
          } while ((uVar9 & 1) != 0);
          *param_3 = lVar11;
          Managed_WriteBarrier(param_3,lVar11);
          *param_2 = lVar10;
          Managed_WriteBarrier(param_2,lVar10);
          lVar10 = 0xd;
          uStack_ac = 1;
LAB_02c770c0:
          lVar14 = lStack_98;
          func_0x03fa4e0c(plStack_90,*(undefined8 *)puVar1);
          if (lVar14 != 0) {
            func_0x029f5cf4(lVar14);
            goto LAB_02c77188;
          }
          if (((int)lVar10 != 0xe) && ((int)lVar10 != 0)) {
            return uStack_ac;
          }
          bVar7 = iVar12 != iVar8;
          iVar12 = iVar12 + 1;
        } while (bVar7);
      }
      return 0;
    }
  }
LAB_02c7717c:
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

