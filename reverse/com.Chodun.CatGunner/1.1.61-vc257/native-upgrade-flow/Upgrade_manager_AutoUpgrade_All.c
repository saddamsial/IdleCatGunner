/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2bb1dfc, Ghidra VA 02cb1dfc. */

int Upgrade_manager_AutoUpgrade_All(long param_1)

{
  bool bVar1;
  undefined *puVar2;
  undefined *puVar3;
  int iVar4;
  uint uVar5;
  int iVar6;
  ulong uVar7;
  long lVar8;
  uint uVar9;
  int iVar10;
  uint uVar11;
  long lVar12;
  long lVar13;
  
  if ((bRam000000000625c563 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e5d5b0);
    func_0x029f5a50(PTR_DAT_05e5d338);
    bRam000000000625c563 = 1;
  }
  puVar2 = PTR_DAT_05e5d338;
  lVar8 = *(long *)(param_1 + 0x20);
  if (lVar8 != 0) {
    iVar10 = 0;
    bVar1 = false;
    do {
      uVar11 = 0;
      iVar6 = 0x7fffffff;
      uVar9 = 0xffffffff;
      while ((int)uVar11 < (int)*(uint *)(lVar8 + 0x18)) {
        if (*(uint *)(lVar8 + 0x18) <= uVar11) goto LAB_02cb212c;
        lVar12 = (long)(int)uVar11;
        lVar8 = *(long *)(lVar8 + lVar12 * 8 + 0x20);
        if (lVar8 == 0) goto LAB_02cb2108;
        iVar4 = ObscuredInt_op_Implicit_0x6000412
                          (*(undefined8 *)(lVar8 + 0x18),*(undefined8 *)(lVar8 + 0x20),0);
        if (iVar4 < 10000) {
          if (*(int *)(*(long *)puVar2 + 0xe4) == 0) {
            func_0x029f5bd0();
          }
          lVar8 = *(long *)(param_1 + 0x20);
          if (lVar8 == 0) goto LAB_02cb2108;
          if (*(uint *)(lVar8 + 0x18) <= uVar11) goto LAB_02cb212c;
          lVar8 = *(long *)(lVar8 + lVar12 * 8 + 0x20);
          if (lVar8 == 0) goto LAB_02cb2108;
          lVar13 = *(long *)(param_1 + 0x30);
          uVar5 = ObscuredInt_op_Implicit_0x6000412
                            (*(undefined8 *)(lVar8 + 0x18),*(undefined8 *)(lVar8 + 0x20),0);
          if (lVar13 == 0) goto LAB_02cb2108;
          if (*(uint *)(lVar13 + 0x18) <= uVar5) goto LAB_02cb212c;
          uVar7 = InfVal_op_LessThan_0x600007e
                            (*(long *)(*(long *)puVar2 + 0xb8) + 0x30,
                             lVar13 + (long)(int)uVar5 * 0x20 + 0x20,0);
          if ((uVar7 & 1) == 0) {
            lVar8 = *(long *)(param_1 + 0x20);
            if (lVar8 == 0) goto LAB_02cb2108;
            if (*(uint *)(lVar8 + 0x18) <= uVar11) goto LAB_02cb212c;
            lVar8 = *(long *)(lVar8 + lVar12 * 8 + 0x20);
            if (lVar8 == 0) goto LAB_02cb2108;
            iVar4 = ObscuredInt_op_Implicit_0x6000412
                              (*(undefined8 *)(lVar8 + 0x18),*(undefined8 *)(lVar8 + 0x20),0);
            if (iVar4 < iVar6) {
              lVar8 = *(long *)(param_1 + 0x20);
              if (lVar8 == 0) goto LAB_02cb2108;
              if (*(uint *)(lVar8 + 0x18) <= uVar11) goto LAB_02cb212c;
              lVar8 = *(long *)(lVar8 + lVar12 * 8 + 0x20);
              if (lVar8 == 0) goto LAB_02cb2108;
              iVar6 = ObscuredInt_op_Implicit_0x6000412
                                (*(undefined8 *)(lVar8 + 0x18),*(undefined8 *)(lVar8 + 0x20),0);
              uVar9 = uVar11;
            }
          }
        }
        lVar8 = *(long *)(param_1 + 0x20);
        uVar11 = uVar11 + 1;
        if (lVar8 == 0) goto LAB_02cb2108;
      }
      if (((int)uVar9 < 0) ||
         (uVar7 = Upgrade_manager_Upgrade_Silent(param_1,uVar9), (uVar7 & 1) == 0)) {
        if (iVar10 == 0) {
          return 0;
        }
        if (*(long *)(param_1 + 0x58) == 0) break;
        Upgrade_list_Reload_0x6000f86();
        puVar3 = PTR_DAT_05e5d5b0;
        lVar8 = *(long *)(*(long *)(*(long *)PTR_DAT_05e5d5b0 + 0xb8) + 8);
        if (lVar8 == 0) break;
        Cat_manager_Balance_Reload_0x6000779(lVar8,0);
        if (bVar1) {
          if (*(int *)(*(long *)puVar2 + 0xe4) == 0) {
            func_0x029f5bd0();
          }
          Gamemanager_InvalidateMoneyCache_0x6000071(0);
        }
        if (**(char **)(*(long *)puVar3 + 0xb8) == '\0') {
          if (cRam000000000625ba57 == '\0') {
            func_0x029f5a50(PTR_DAT_05e5dd70);
            cRam000000000625ba57 = '\x01';
          }
          if (**(long **)(*(long *)PTR_DAT_05e5dd70 + 0xb8) == 0) break;
          Sound_manager_PlaySfx_0x600054a
                    (0x3f800000,**(long **)(*(long *)PTR_DAT_05e5dd70 + 0xb8),4,0,0);
        }
        lVar8 = *(long *)(param_1 + 0x28);
        if (lVar8 != 0) {
          uVar11 = 0;
          goto LAB_02cb2074;
        }
        break;
      }
      lVar8 = *(long *)(param_1 + 0x20);
      iVar10 = 1;
      bVar1 = (bool)(uVar9 == 2 | bVar1);
    } while (lVar8 != 0);
  }
  goto LAB_02cb2108;
  while( true ) {
    lVar8 = *(long *)(param_1 + 0x28);
    if (lVar8 == 0) break;
    if (*(uint *)(lVar8 + 0x18) <= uVar11) goto LAB_02cb212c;
    lVar8 = *(long *)(lVar8 + lVar12 * 8 + 0x20);
    if (lVar8 == 0) break;
    GameObject_SetActive_0x6000cfe(lVar8,1,0);
    lVar8 = *(long *)(param_1 + 0x28);
    uVar11 = uVar11 + 1;
    if (lVar8 == 0) break;
LAB_02cb2074:
    if ((int)*(uint *)(lVar8 + 0x18) <= (int)uVar11) {
      return iVar10;
    }
    if (*(uint *)(lVar8 + 0x18) <= uVar11) goto LAB_02cb212c;
    lVar12 = (long)(int)uVar11;
    lVar8 = *(long *)(lVar8 + lVar12 * 8 + 0x20);
    if (lVar8 == 0) break;
    uVar7 = GameObject_get_activeInHierarchy_0x6000d00(lVar8,0);
    if ((uVar7 & 1) != 0) {
      lVar8 = *(long *)(param_1 + 0x28);
      if (lVar8 == 0) break;
      if (*(uint *)(lVar8 + 0x18) <= uVar11) {
LAB_02cb212c:
                    /* WARNING: Subroutine does not return */
        Throw_Index_Wrapper();
      }
      lVar8 = *(long *)(lVar8 + lVar12 * 8 + 0x20);
      if (lVar8 == 0) break;
      GameObject_SetActive_0x6000cfe(lVar8,0,0);
    }
  }
LAB_02cb2108:
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

