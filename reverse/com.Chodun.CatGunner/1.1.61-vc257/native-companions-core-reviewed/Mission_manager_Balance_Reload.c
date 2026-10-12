/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2aa4574, Ghidra VA 02ba4574. */

void Mission_manager_Balance_Reload(long param_1)

{
  undefined *puVar1;
  undefined *puVar2;
  bool bVar3;
  int iVar4;
  undefined8 uVar5;
  long lVar6;
  uint uVar7;
  long lVar8;
  undefined8 uVar9;
  int iVar10;
  long lVar11;
  long lVar12;
  long lVar13;
  undefined8 *puVar14;
  uint uVar15;
  uint uStack_44;
  
  if ((bRam000000000625ba3c & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e5e700);
    bRam000000000625ba3c = 1;
  }
  lVar6 = *(long *)(param_1 + 0x28);
  if (lVar6 != 0) {
    uVar15 = (uint)*(undefined8 *)(lVar6 + 0x18);
    if (0 < (int)uVar15) {
      uVar7 = 0;
      iVar10 = 200;
      do {
        if (uVar15 == uVar7) goto LAB_02ba4764;
        lVar13 = *(long *)(lVar6 + (long)(int)uVar7 * 8 + 0x20);
        if (lVar13 == 0) goto LAB_02ba4748;
        bVar3 = (uVar7 / 3) * 3 + 2 == uVar7;
        *(uint *)(lVar13 + 0x10) = uVar7;
        *(uint *)(lVar13 + 0x14) = (uint)bVar3;
        iVar4 = iVar10;
        if (bVar3) {
          iVar4 = (uVar7 / 3 & 1) * 4 + (uVar7 / 6) * 5;
          if (0x12 < iVar4) {
            iVar4 = 0x13;
          }
          iVar4 = iVar4 + 10;
        }
        uVar7 = uVar7 + 1;
        iVar10 = iVar10 + 0x28;
        *(int *)(lVar13 + 0x18) = iVar4;
      } while ((uVar15 & ((int)uVar15 >> 0x1f ^ 0xffffffffU)) != uVar7);
    }
    if (0 < (int)uVar15) {
      lVar13 = *(long *)(param_1 + 0x30);
      if (lVar13 == 0) goto LAB_02ba4748;
      uVar9 = *(undefined8 *)(lVar13 + 0x18);
      lVar8 = 0;
      do {
        if ((int)uVar9 == (int)lVar8) goto LAB_02ba4764;
        lVar11 = *(long *)(lVar13 + 0x20 + lVar8 * 8);
        if (lVar11 == 0) goto LAB_02ba4748;
        lVar12 = *(long *)(lVar6 + 0x20 + lVar8 * 8);
        *(int *)(lVar11 + 0x10) = (int)lVar8;
        if (lVar12 == 0) goto LAB_02ba4748;
        lVar8 = lVar8 + 1;
        iVar10 = *(int *)(lVar12 + 0x18) * 3;
        if (*(int *)(lVar12 + 0x14) != 0) {
          iVar10 = *(int *)(lVar12 + 0x18) + 5;
        }
        *(int *)(lVar11 + 0x14) = *(int *)(lVar12 + 0x14);
        *(int *)(lVar11 + 0x18) = iVar10;
      } while (uVar15 != (uint)lVar8);
    }
    puVar2 = PTR_DAT_05e5e700;
    puVar1 = PTR_DAT_05e58a10;
    lVar6 = *(long *)(param_1 + 0x20);
    if (lVar6 != 0) {
      lVar13 = 4;
      do {
        uVar15 = (int)lVar13 - 4;
        if ((int)*(uint *)(lVar6 + 0x18) <= (int)uVar15) {
          return;
        }
        if (*(uint *)(lVar6 + 0x18) <= uVar15) {
LAB_02ba4764:
                    /* WARNING: Subroutine does not return */
          Throw_Index_Wrapper();
        }
        lVar8 = *(long *)(lVar6 + lVar13 * 8);
        uStack_44 = uVar15;
        uVar9 = func_0x029f5bd8(*(undefined8 *)(puVar1 + 0x48),&uStack_44);
        lVar6 = *(long *)(param_1 + 0x20);
        if (lVar6 == 0) break;
        if (*(uint *)(lVar6 + 0x18) <= uVar15) goto LAB_02ba4764;
        lVar6 = *(long *)(lVar6 + lVar13 * 8);
        if (lVar6 == 0) break;
        uVar5 = Mission_manager_Mission_Name_str_return_0x6000362
                          (uVar9,*(undefined4 *)(lVar6 + 0x18));
        uVar9 = String_Format_0x600029d(*(undefined8 *)puVar2,uVar9,uVar5,0);
        if (lVar8 == 0) break;
        puVar14 = (undefined8 *)(lVar8 + 0x10);
        *puVar14 = uVar9;
        Managed_WriteBarrier(puVar14,uVar9);
        lVar6 = *(long *)(param_1 + 0x20);
        lVar13 = lVar13 + 1;
      } while (lVar6 != 0);
    }
  }
LAB_02ba4748:
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

