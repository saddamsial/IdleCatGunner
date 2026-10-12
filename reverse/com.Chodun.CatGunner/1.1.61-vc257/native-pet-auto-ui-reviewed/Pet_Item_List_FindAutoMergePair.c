/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b83e8c, Ghidra VA 02c83e8c. */

/* WARNING: Removing unreachable block (ram,0x02c840f4) */

undefined4 Pet_Item_List_FindAutoMergePair(long param_1,long *param_2,long *param_3)

{
  undefined *puVar1;
  undefined *puVar2;
  undefined *puVar3;
  undefined *puVar4;
  undefined *puVar5;
  undefined *puVar6;
  long lVar7;
  int iVar8;
  long lVar9;
  ulong uVar10;
  long lVar11;
  long lVar12;
  int iVar13;
  long lVar14;
  int iVar15;
  undefined8 uVar16;
  undefined4 uStack_ac;
  long lStack_98;
  long *plStack_90;
  long lStack_88;
  long lStack_80;
  long *plStack_78;
  long lStack_70;
  
  puVar1 = PTR_DAT_05e5d4d0;
  if ((bRam000000000625c36b & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e63da0);
    func_0x029f5a50(PTR_DAT_05e63da8);
    func_0x029f5a50(PTR_DAT_05e63db0);
    func_0x029f5a50(PTR_DAT_05e63e20);
    func_0x029f5a50(PTR_DAT_05e63e28);
    func_0x029f5a50(PTR_DAT_05e63e30);
    func_0x029f5a50(PTR_DAT_05e63e38);
    func_0x029f5a50(PTR_DAT_05e63db8);
    func_0x029f5a50(PTR_DAT_05e591c0);
    func_0x029f5a50(PTR_DAT_05e5d4d0);
    bRam000000000625c36b = 1;
  }
  lStack_80 = 0;
  plStack_78 = (long *)0x0;
  lStack_70 = 0;
  *param_2 = 0;
  Managed_WriteBarrier(param_2,0);
  *param_3 = 0;
  Managed_WriteBarrier(param_3,0);
  lVar9 = *(long *)puVar1;
  if (*(int *)(lVar9 + 0xe4) == 0) {
    func_0x029f5bd0();
    lVar9 = *(long *)puVar1;
  }
  puVar6 = PTR_DAT_05e63e38;
  puVar5 = PTR_DAT_05e63e30;
  puVar4 = PTR_DAT_05e63e20;
  puVar3 = PTR_DAT_05e63db8;
  puVar2 = PTR_DAT_05e63da8;
  puVar1 = PTR_DAT_05e63da0;
  if (*(long *)(param_1 + 0x40) != 0) {
    lVar14 = *(long *)(*(long *)(lVar9 + 0xb8) + 0x28);
    func_0x0452d690(&lStack_98,*(long *)(param_1 + 0x40),*(undefined8 *)PTR_DAT_05e63db8);
    lVar9 = 0;
    lStack_70 = lStack_88;
    plStack_78 = plStack_90;
    lStack_80 = lStack_98;
    lStack_98 = 0;
    plStack_90 = &lStack_80;
    while (uVar10 = func_0x03fa4e10(&lStack_80,*(undefined8 *)puVar2), lVar7 = lStack_70,
          lVar11 = lStack_98, (uVar10 & 1) != 0) {
      if (lStack_70 == 0) {
                    /* WARNING: Subroutine does not return */
        Throw_NullReference_Wrapper();
      }
      lVar11 = Component_get_gameObject_0x6000c83(lStack_70,0);
      if (lVar11 == 0) {
                    /* WARNING: Subroutine does not return */
        Throw_NullReference_Wrapper();
      }
      uVar10 = GameObject_get_activeSelf_0x6000cff(lVar11,0);
      if (((uVar10 & 1) != 0) && (*(char *)(lVar7 + 0x90) != '\0')) {
        if (lVar9 == 0) {
          lVar9 = func_0x029f5cec(*(undefined8 *)puVar6);
          func_0x042bb9a4(lVar9,*(undefined8 *)puVar5);
        }
        uVar16 = *(undefined8 *)(lVar7 + 0x98);
        if (*(int *)(*(long *)PTR_DAT_05e591c0 + 0xe4) == 0) {
          func_0x029f5bd0();
        }
        uVar10 = Object_op_Inequality_0x6000ded(uVar16,0,0);
        if ((uVar10 & 1) != 0) {
          if (lVar9 == 0) goto LAB_02c84338;
          func_0x042bcb98(lVar9,*(undefined8 *)(lVar7 + 0x98),*(undefined8 *)puVar4);
        }
        uVar16 = *(undefined8 *)(lVar7 + 0xa0);
        if (*(int *)(*(long *)PTR_DAT_05e591c0 + 0xe4) == 0) {
          func_0x029f5bd0();
        }
        uVar10 = Object_op_Inequality_0x6000ded(uVar16,0,0);
        if ((uVar10 & 1) != 0) {
          if (lVar9 == 0) {
                    /* WARNING: Subroutine does not return */
            Throw_NullReference_Wrapper();
          }
          func_0x042bcb98(lVar9,*(undefined8 *)(lVar7 + 0xa0),*(undefined8 *)puVar4);
        }
      }
    }
    func_0x03fa4e0c(plStack_90,*(undefined8 *)puVar1);
    if (lVar11 != 0) {
LAB_02c84330:
      func_0x029f5cf4(lVar11);
LAB_02c84338:
                    /* WARNING: Subroutine does not return */
      Throw_NullReference_Wrapper();
    }
    if ((lVar14 != 0) && (*(long *)(lVar14 + 0x20) != 0)) {
      iVar13 = *(int *)(*(long *)(lVar14 + 0x20) + 0x18) + -2;
      iVar8 = Pet_manager_get_AutoMerge_Limit_Degree(lVar14,0);
      if (iVar13 <= iVar8) {
        iVar8 = iVar13;
      }
      if (-1 < iVar8) {
        iVar13 = 0;
        uStack_ac = 0;
        do {
          if (*(long *)(param_1 + 0x40) == 0) goto LAB_02c8432c;
          func_0x0452d690(&lStack_98,*(long *)(param_1 + 0x40),*(undefined8 *)puVar3);
          lStack_80 = lStack_98;
          lStack_98 = 0;
          plStack_78 = plStack_90;
          lStack_70 = lStack_88;
          lVar11 = 0;
          plStack_90 = &lStack_80;
          do {
            do {
              lVar12 = lVar11;
              uVar10 = func_0x03fa4e10(&lStack_80,*(undefined8 *)puVar2);
              lVar7 = lStack_70;
              if ((uVar10 & 1) == 0) {
                iVar15 = 0xe;
                goto LAB_02c8426c;
              }
              if (lStack_70 == 0) {
                    /* WARNING: Subroutine does not return */
                Throw_NullReference_Wrapper();
              }
              lVar11 = Component_get_gameObject_0x6000c83(lStack_70,0);
              if (lVar11 == 0) {
                    /* WARNING: Subroutine does not return */
                Throw_NullReference_Wrapper();
              }
              uVar10 = GameObject_get_activeSelf_0x6000cff(lVar11,0);
              lVar11 = lVar12;
            } while ((((((uVar10 & 1) == 0) || (*(int *)(lVar7 + 100) != iVar13)) ||
                      (*(char *)(lVar7 + 0x6c) != '\0')) ||
                     ((*(char *)(lVar7 + 0x90) != '\0' || (*(char *)(lVar7 + 0x6d) != '\0')))) ||
                    ((uVar10 = Pet_manager_IsPetLocked_0x6000bcc
                                         (lVar14,*(undefined4 *)(lVar7 + 0x68),0), (uVar10 & 1) != 0
                     || ((lVar9 != 0 &&
                         (uVar10 = func_0x042bc0a8(lVar9,lVar7,*(undefined8 *)PTR_DAT_05e63e28),
                         (uVar10 & 1) != 0))))));
            if (*(int *)(*(long *)PTR_DAT_05e591c0 + 0xe4) == 0) {
              func_0x029f5bd0();
            }
            uVar10 = Object_op_Equality_0x6000dec(lVar12,0,0);
            lVar11 = lVar7;
          } while ((uVar10 & 1) != 0);
          *param_3 = lVar12;
          Managed_WriteBarrier(param_3,lVar12);
          *param_2 = lVar7;
          Managed_WriteBarrier(param_2,lVar7);
          iVar15 = 0xd;
          uStack_ac = 1;
LAB_02c8426c:
          lVar11 = lStack_98;
          func_0x03fa4e0c(plStack_90,*(undefined8 *)puVar1);
          if (lVar11 != 0) goto LAB_02c84330;
          if ((iVar15 != 0xe) && (iVar15 != 0)) {
            return uStack_ac;
          }
          iVar13 = iVar13 + 1;
        } while (iVar13 <= iVar8);
      }
      return 0;
    }
  }
LAB_02c8432c:
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

