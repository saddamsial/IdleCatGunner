/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b954d8, Ghidra VA 02c954d8. */

uint Shop_manager_TryGetCoreTypeFromId(undefined8 param_1,undefined8 param_2,undefined4 *param_3)

{
  undefined4 uVar1;
  undefined *puVar2;
  undefined *puVar3;
  undefined *puVar4;
  uint uVar5;
  long lVar6;
  undefined8 *puVar7;
  long *plVar8;
  undefined4 *puVar9;
  long *plVar10;
  long lVar11;
  long **pplVar12;
  long lVar13;
  ulong uVar14;
  int *piVar15;
  undefined8 uVar16;
  int iVar17;
  undefined1 auVar18 [12];
  undefined1 auVar19 [16];
  undefined4 auStack_74 [3];
  long lStack_68;
  long **pplStack_60;
  long *plStack_58;
  long lStack_50;
  long *plStack_48;
  
  puVar3 = PTR_DAT_05e64338;
  if ((bRam000000000625c42e & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e58a48);
    func_0x029f5a50(PTR_DAT_05e591f0);
    func_0x029f5a50(PTR_DAT_05e64338);
    func_0x029f5a50(PTR_DAT_05e64340);
    bRam000000000625c42e = 1;
  }
  puVar2 = PTR_DAT_05e58a10;
  uVar16 = *(undefined8 *)puVar3;
  lStack_50 = 0;
  plStack_48 = (long *)0x0;
  if (*(int *)(*(long *)(PTR_DAT_05e58a10 + 0xe0) + 0xe4) == 0) {
    func_0x029f5bd0();
  }
  uVar16 = Type_GetTypeFromHandle_0x6000b54(uVar16,0);
  if (*(int *)(*(long *)(puVar2 + 0x98) + 0xe4) == 0) {
    func_0x029f5bd0(*(long *)(puVar2 + 0x98));
  }
  lVar6 = Enum_GetValues_0x6000e08(uVar16,0);
  puVar4 = PTR_DAT_05e64340;
  puVar2 = PTR_DAT_05e591f0;
  puVar3 = PTR_DAT_05e58a48;
  if (lVar6 == 0) {
LAB_02c957a8:
                    /* WARNING: Subroutine does not return */
    Throw_NullReference_Wrapper();
  }
  plStack_48 = (long *)Array_GetEnumerator_0x6000d1a(lVar6,0);
  pplStack_60 = &plStack_48;
  lStack_68 = 0;
  plStack_58 = &lStack_50;
  do {
    plVar8 = plStack_48;
    if (plStack_48 == (long *)0x0) {
                    /* WARNING: Subroutine does not return */
      Throw_NullReference_Wrapper();
    }
    lVar11 = *plStack_48;
    lVar6 = *(long *)puVar2;
    uVar14 = (ulong)*(ushort *)(lVar11 + 0x12e);
    if (uVar14 != 0) {
      piVar15 = (int *)(*(long *)(lVar11 + 0xb0) + 8);
      do {
        if (*(long *)(piVar15 + -2) == lVar6) {
          puVar7 = (undefined8 *)(lVar11 + (long)*piVar15 * 0x10 + 0x138);
          goto LAB_02c9561c;
        }
        uVar14 = uVar14 - 1;
        piVar15 = piVar15 + 4;
      } while (uVar14 != 0);
    }
    puVar7 = (undefined8 *)func_0x02a2ed2c(plStack_48,lVar6,0);
LAB_02c9561c:
    uVar14 = (*(code *)*puVar7)(plVar8,puVar7[1]);
    plVar8 = plStack_48;
    if ((uVar14 & 1) == 0) {
      uVar5 = 0;
      iVar17 = 5;
      goto LAB_02c956ec;
    }
    if (plStack_48 == (long *)0x0) {
                    /* WARNING: Subroutine does not return */
      Throw_NullReference_Wrapper();
    }
    lVar11 = *plStack_48;
    lVar6 = *(long *)puVar2;
    uVar14 = (ulong)*(ushort *)(lVar11 + 0x12e);
    if (uVar14 != 0) {
      piVar15 = (int *)(*(long *)(lVar11 + 0xb0) + 8);
      do {
        if (*(long *)(piVar15 + -2) == lVar6) {
          puVar7 = (undefined8 *)(lVar11 + (long)(*piVar15 + 1) * 0x10 + 0x138);
          goto LAB_02c95684;
        }
        uVar14 = uVar14 - 1;
        piVar15 = piVar15 + 4;
      } while (uVar14 != 0);
    }
    puVar7 = (undefined8 *)func_0x02a2ed2c(plStack_48,lVar6,1);
LAB_02c95684:
    plVar8 = (long *)(*(code *)*puVar7)(plVar8,puVar7[1]);
    if (plVar8 == (long *)0x0) {
                    /* WARNING: Subroutine does not return */
      Throw_NullReference_Wrapper();
    }
    if (*(long *)(*plVar8 + 0x40) != *(long *)(*(long *)puVar4 + 0x40)) {
      func_0x029f607c();
      goto LAB_02c957a8;
    }
    puVar9 = (undefined4 *)func_0x029f5bdc();
    uVar1 = *puVar9;
    uVar16 = Shop_manager_Core_product_id_return(puVar9,uVar1);
    uVar14 = String_op_Equality_0x600025a(uVar16,param_2,0);
  } while ((uVar14 & 1) == 0);
  *param_3 = uVar1;
  uVar5 = 1;
  iVar17 = 4;
LAB_02c956ec:
  lVar6 = 0;
  pplVar12 = &plStack_48;
  plVar8 = &lStack_50;
  do {
    plVar10 = (long *)func_0x029f5bd4(*pplVar12,*(undefined8 *)puVar3);
    *plVar8 = (long)plVar10;
    if (plVar10 != (long *)0x0) {
      lVar13 = *plVar10;
      lVar11 = *(long *)puVar3;
      uVar14 = (ulong)*(ushort *)(lVar13 + 0x12e);
      if (uVar14 != 0) {
        piVar15 = (int *)(*(long *)(lVar13 + 0xb0) + 8);
        do {
          if (*(long *)(piVar15 + -2) == lVar11) {
            puVar7 = (undefined8 *)(lVar13 + (long)*piVar15 * 0x10 + 0x138);
            goto LAB_02c95758;
          }
          uVar14 = uVar14 - 1;
          piVar15 = piVar15 + 4;
        } while (uVar14 != 0);
      }
      puVar7 = (undefined8 *)func_0x02a2ed2c(plVar10,lVar11,0);
LAB_02c95758:
      (*(code *)*puVar7)(plVar10,puVar7[1]);
    }
    if (lVar6 == 0) {
      if ((iVar17 == 5) || (iVar17 == 0)) {
        uVar5 = 0;
        *param_3 = 0;
      }
      return uVar5;
    }
    auVar18 = func_0x029f5cf4(lVar6);
    if (auVar18._8_4_ != 1) {
      func_0x0262eed4(&lStack_68);
      func_0x02ae4a1c(auVar18._0_8_);
      auVar19 = func_0x02629f70();
      auStack_74[0] = 0;
      uVar5 = Shop_manager_TryGetCoreTypeFromId(auVar19._0_8_,auVar19._8_8_,auStack_74);
      return uVar5 & 1;
    }
    plVar8 = (long *)func_0x05afb1e0(auVar18._0_8_);
    lVar6 = *plVar8;
    lStack_68 = lVar6;
    func_0x05afb1f0();
    iVar17 = 0;
    uVar5 = 0;
    pplVar12 = pplStack_60;
    plVar8 = plStack_58;
  } while( true );
}

