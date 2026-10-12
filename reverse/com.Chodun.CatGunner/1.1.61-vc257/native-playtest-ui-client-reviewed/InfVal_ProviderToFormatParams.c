/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x455a75c, Ghidra VA 0465a75c. */

long * InfVal_ProviderToFormatParams(long *param_1,long *param_2)

{
  uint uVar1;
  undefined *puVar2;
  undefined *puVar3;
  short sVar4;
  int iVar5;
  int iVar6;
  int iVar7;
  undefined8 *puVar8;
  long *plVar9;
  long lVar10;
  long lVar11;
  ulong uVar12;
  undefined8 uVar13;
  long *plVar14;
  ulong *puVar15;
  long lVar16;
  ulong uVar17;
  int *piVar18;
  undefined8 uVar19;
  undefined8 uVar20;
  undefined1 auVar21 [16];
  long *plStack_a0;
  long lStack_98;
  long lStack_90;
  long lStack_88;
  ulong uStack_80;
  ulong uStack_78;
  ulong uStack_70;
  code *pcStack_60;
  
  if ((bRam0000000006260a39 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e718d8);
    func_0x029f5a50(PTR_DAT_05e71aa0);
    func_0x029f5a50(PTR_DAT_05e71aa8);
    func_0x029f5a50(PTR_DAT_05e71ab0);
    func_0x029f5a50(PTR_DAT_05e58a90);
    func_0x029f5a50(PTR_DAT_05e71980);
    bRam0000000006260a39 = 1;
  }
  puVar2 = PTR_DAT_05e71aa0;
  if (param_2 != (long *)0x0) {
    uVar20 = *(undefined8 *)PTR_DAT_05e71aa8;
    if (*(int *)(*(long *)(PTR_DAT_05e58a10 + 0xe0) + 0xe4) == 0) {
      func_0x029f5bd0();
    }
    uVar20 = Type_GetTypeFromHandle_0x6000b54(uVar20,0);
    lVar16 = *param_2;
    uVar17 = (ulong)*(ushort *)(lVar16 + 0x12e);
    if (uVar17 != 0) {
      piVar18 = (int *)(*(long *)(lVar16 + 0xb0) + 8);
      do {
        if (*(long *)(piVar18 + -2) == *(long *)puVar2) {
          puVar8 = (undefined8 *)(lVar16 + (long)*piVar18 * 0x10 + 0x138);
          goto LAB_0465a858;
        }
        uVar17 = uVar17 - 1;
        piVar18 = piVar18 + 4;
      } while (uVar17 != 0);
    }
    puVar8 = (undefined8 *)func_0x02a2ed2c(param_2,*(long *)puVar2,0);
LAB_0465a858:
    plVar14 = (long *)puVar8[1];
    plVar9 = (long *)(*(code *)*puVar8)(param_2,uVar20);
    puVar2 = PTR_DAT_05e58a90;
    if (plVar9 != (long *)0x0) {
      if (*plVar9 == *(long *)PTR_DAT_05e71ab0) {
        lVar16 = func_0x029f5b40(*(undefined8 *)PTR_DAT_05e58a90,1);
        if (lVar16 == 0) {
LAB_0465a990:
                    /* WARNING: Subroutine does not return */
          Throw_NullReference_Wrapper();
        }
        if (*(int *)(lVar16 + 0x18) == 0) {
LAB_0465a994:
                    /* WARNING: Subroutine does not return */
          Throw_Index_Wrapper();
        }
        *(long *)(lVar16 + 0x20) = plVar9[7];
        Managed_WriteBarrier();
        lVar10 = func_0x029f5b40(*(undefined8 *)puVar2,1);
        if (lVar10 == 0) goto LAB_0465a990;
        if (*(int *)(lVar10 + 0x18) == 0) goto LAB_0465a994;
        *(long *)(lVar10 + 0x20) = plVar9[8];
        Managed_WriteBarrier();
        puVar2 = PTR_DAT_05e718d8;
        lVar11 = *(long *)PTR_DAT_05e718d8;
        if (*(int *)(lVar11 + 0xe4) == 0) {
          func_0x029f5bd0();
          lVar11 = *(long *)puVar2;
        }
        lVar11 = *(long *)(*(long *)(lVar11 + 0xb8) + 8);
        *param_1 = 0;
        param_1[1] = 0;
        param_1[2] = 0;
        goto code_r0x029f59f4;
      }
      auVar21 = func_0x029f607c(plVar9);
      puVar15 = auVar21._8_8_;
      plVar9 = auVar21._0_8_;
      pcStack_60 = InfVal_InternalToString;
      if ((bRam0000000006260a37 & 1) == 0) {
        func_0x029f5a50(PTR_DAT_05e718d8);
        func_0x029f5a50(PTR_DAT_05e59000);
        func_0x029f5a50(PTR_DAT_05e590d8);
        func_0x029f5a50(PTR_DAT_05e5d528);
        func_0x029f5a50(PTR_DAT_05e5acc0);
        func_0x029f5a50(PTR_DAT_05e59050);
        func_0x029f5a50(PTR_DAT_05e5e048);
        bRam0000000006260a37 = 1;
      }
      puVar2 = PTR_DAT_05e5e048;
      uStack_70 = 0;
      lStack_90 = plVar14[1];
      lStack_98 = *plVar14;
      lStack_88 = plVar14[2];
      plStack_a0 = (long *)0x0;
      uStack_78 = 0;
      uStack_80 = 0;
      Managed_WriteBarrier((ulong)&plStack_a0 | 8,0);
      uStack_78 = puVar15[1];
      uStack_80 = *puVar15;
      uStack_70 = puVar15[2];
      Managed_WriteBarrier(&uStack_78,0);
      uVar12 = InfVal_get_isZero_0x6000099(plVar9);
      uVar17 = uStack_78;
      puVar3 = PTR_DAT_05e718d8;
      if ((uVar12 & 1) != 0) {
        if (((byte)uStack_70 >> 3 & 1) == 0) {
LAB_0465aaa0:
          return *(long **)puVar2;
        }
        iVar7 = (int)uStack_80 + -1;
        if ((iVar7 == 0) || (iVar6 = (int)plVar9[1], -1 < iVar6)) goto LAB_0465aaa0;
        if (lStack_98 == 0) goto LAB_0465b034;
        if (*(int *)(lStack_98 + 0x18) != 0) {
          uVar20 = *(undefined8 *)(lStack_98 + 0x20);
          uVar19 = *(undefined8 *)puVar2;
          if ((int)uStack_80 < 1) {
            iVar6 = -iVar6;
          }
          else {
            if (*(int *)(*(long *)PTR_DAT_05e59000 + 0xe4) == 0) {
              func_0x029f5bd0();
            }
            iVar6 = Math_Min_0x600088f(-iVar6,iVar7,0);
          }
          uVar13 = String_CreateString_0x600030d(0,0x30,iVar6,0);
          plVar14 = (long *)String_Concat_0x6000299(uVar19,uVar20,uVar13,0);
          return plVar14;
        }
        goto LAB_0465b038;
      }
      if (*(int *)(*(long *)PTR_DAT_05e718d8 + 0xe4) == 0) {
        func_0x029f5bd0();
      }
      uVar17 = Configuration_AreUnitsValid_0x6000109(uVar17);
      if ((uVar17 & 1) == 0) {
        if (*(int *)(*(long *)puVar3 + 0xe4) == 0) {
          func_0x029f5bd0();
        }
        uStack_78 = Configuration_get_unitsList();
        Managed_WriteBarrier(&uStack_78,uStack_78);
      }
      if ((bRam0000000006260a1d & 1) == 0) {
        func_0x029f5a50(PTR_DAT_05e5e048);
        bRam0000000006260a1d = 1;
      }
      lVar16 = *(long *)puVar2;
      if (*plVar9 != 0) {
        lVar16 = *plVar9;
      }
      if (lVar16 == 0) goto LAB_0465b034;
      uVar17 = String_StartsWith_0x600025e(lVar16,*(undefined8 *)PTR_DAT_05e5acc0,0);
      if ((uVar17 & 1) == 0) {
        if ((bRam0000000006260a1d & 1) == 0) {
          func_0x029f5a50(PTR_DAT_05e5e048);
          bRam0000000006260a1d = 1;
        }
        lVar16 = *(long *)puVar2;
        if (*plVar9 != 0) {
          lVar16 = *plVar9;
        }
      }
      else {
        if ((bRam0000000006260a1d & 1) == 0) {
          func_0x029f5a50(PTR_DAT_05e5e048);
          bRam0000000006260a1d = 1;
        }
        lVar16 = *(long *)puVar2;
        if (*plVar9 != 0) {
          lVar16 = *plVar9;
        }
        if (lVar16 == 0) goto LAB_0465b034;
        lVar16 = String_Substring_0x60002c2(lVar16,1,0);
      }
      plVar14 = (long *)func_0x029f5cec(*(undefined8 *)PTR_DAT_05e590d8);
      StringBuilder__ctor_0x60016c2(plVar14,lVar16,0);
      plStack_a0 = plVar14;
      Managed_WriteBarrier(&plStack_a0,plVar14);
      iVar7 = (int)plVar9[1];
      if (0 < (int)uStack_80) {
        if (plStack_a0 == (long *)0x0) goto LAB_0465b034;
        iVar6 = StringBuilder_get_Length_0x60016ce(plStack_a0,0);
        if ((int)uStack_80 < iVar6) {
          if ((plStack_a0 == (long *)0x0) ||
             (iVar6 = StringBuilder_get_Length_0x60016ce(plStack_a0,0), plStack_a0 == (long *)0x0))
          goto LAB_0465b034;
          iVar7 = (iVar6 + iVar7) - (int)uStack_80;
          StringBuilder_set_Length_0x60016cf(plStack_a0,uStack_80 & 0xffffffff,0);
        }
      }
      if (((uint)uStack_70 >> 3 & 1) == 0) {
        while (plStack_a0 != (long *)0x0) {
          iVar6 = StringBuilder_get_Length_0x60016ce(plStack_a0,0);
          plVar14 = plStack_a0;
          if (iVar6 < 2) {
LAB_0465acb4:
            goto LAB_0465acb8;
          }
          if (plStack_a0 == (long *)0x0) break;
          iVar6 = StringBuilder_get_Length_0x60016ce(plStack_a0,0);
          sVar4 = StringBuilder_get_Chars_0x60016d0(plVar14,iVar6 + -1,0);
          plVar14 = plStack_a0;
          if (sVar4 != 0x30) goto LAB_0465acb4;
          if (plStack_a0 == (long *)0x0) break;
          iVar7 = iVar7 + 1;
          iVar6 = StringBuilder_get_Length_0x60016ce(plStack_a0,0);
          StringBuilder_set_Length_0x60016cf(plVar14,iVar6 + -1,0);
        }
        goto LAB_0465b034;
      }
LAB_0465acb8:
      if (((uint)uStack_70 >> 2 & 1) == 0) {
        if (0 < (int)uStack_80) {
          if (0 < iVar7) {
            if (plStack_a0 == (long *)0x0) goto LAB_0465b034;
            iVar6 = StringBuilder_get_Length_0x60016ce(plStack_a0,0);
            if ((int)uStack_80 < iVar6 + iVar7) goto LAB_0465ad20;
          }
          if (plStack_a0 == (long *)0x0) goto LAB_0465b034;
          iVar6 = StringBuilder_get_Length_0x60016ce(plStack_a0,0);
          if ((iVar7 <= -iVar6) && ((int)uStack_80 < 1 - iVar7)) goto LAB_0465ad20;
        }
        plVar14 = plStack_a0;
        if (iVar7 < 1) {
          if (plStack_a0 == (long *)0x0) goto LAB_0465b034;
          iVar6 = StringBuilder_get_Length_0x60016ce(plStack_a0,0);
          plVar14 = plStack_a0;
          if (iVar7 <= -iVar6) {
            if (plStack_a0 == (long *)0x0) goto LAB_0465b034;
            iVar6 = StringBuilder_get_Length_0x60016ce(plStack_a0,0);
            uVar20 = String_CreateString_0x600030d(0,0x30,(1 - iVar7) - iVar6,0);
            StringBuilder_Insert_0x60016e7(plVar14,0,uVar20,0);
          }
        }
        else {
          uVar20 = String_CreateString_0x600030d(0,0x30,iVar7,0);
          if (plVar14 == (long *)0x0) goto LAB_0465b034;
          StringBuilder_Append_0x60016d4(plVar14,uVar20,0);
          iVar7 = 0;
        }
        if (plStack_a0 == (long *)0x0) goto LAB_0465b034;
        iVar6 = StringBuilder_get_Length_0x60016ce(plStack_a0,0);
        InfVal__InternalToString_g__AddDecimalPointAndSeparators_161_0_0x60000bc
                  (iVar6 + iVar7,&plStack_a0);
      }
      else {
LAB_0465ad20:
        if (plStack_a0 == (long *)0x0) goto LAB_0465b034;
        iVar6 = StringBuilder_get_Length_0x60016ce(plStack_a0,0);
        iVar7 = iVar7 + iVar6 + -1;
        if ((uStack_78 == 0) || (iVar7 < 3)) {
          InfVal__InternalToString_g__AddDecimalPointAndSeparators_161_0_0x60000bc(1,&plStack_a0);
          if (iVar7 == 0) goto LAB_0465af28;
        }
        else {
          if (iVar7 / 3 <= *(int *)(uStack_78 + 0x18)) {
            if (plStack_a0 == (long *)0x0) goto LAB_0465b034;
            iVar6 = iVar7 % 3;
            iVar5 = StringBuilder_get_Length_0x60016ce(plStack_a0,0);
            if ((iVar6 < iVar5) || (iVar6 < (int)uStack_80)) {
              if (plStack_a0 == (long *)0x0) goto LAB_0465b034;
              iVar5 = StringBuilder_get_Length_0x60016ce(plStack_a0,0);
              plVar14 = plStack_a0;
              if (iVar5 <= iVar6) {
                if (plStack_a0 == (long *)0x0) goto LAB_0465b034;
                iVar5 = StringBuilder_get_Length_0x60016ce(plStack_a0,0);
                uVar20 = String_CreateString_0x600030d(0,0x30,(iVar6 + 1) - iVar5,0);
                StringBuilder_Append_0x60016d4(plVar14,uVar20,0);
              }
              InfVal__InternalToString_g__AddDecimalPointAndSeparators_161_0_0x60000bc
                        (iVar6 + 1,&plStack_a0);
              if (uStack_78 == 0) goto LAB_0465b034;
              uVar1 = iVar7 / 3 - 1;
              if (*(uint *)(uStack_78 + 0x18) <= uVar1) goto LAB_0465b038;
              if (plStack_a0 == (long *)0x0) goto LAB_0465b034;
              StringBuilder_Append_0x60016d4
                        (plStack_a0,*(undefined8 *)(uStack_78 + (ulong)uVar1 * 8 + 0x20),0);
              goto LAB_0465af28;
            }
          }
          InfVal__InternalToString_g__AddDecimalPointAndSeparators_161_0_0x60000bc(1,&plStack_a0);
        }
        if (lStack_88 == 0) goto LAB_0465b034;
        if (*(int *)(lStack_88 + 0x18) == 0) {
LAB_0465b038:
                    /* WARNING: Subroutine does not return */
          Throw_Index_Wrapper();
        }
        if ((plStack_a0 == (long *)0x0) ||
           (StringBuilder_Append_0x60016d4(plStack_a0,*(undefined8 *)(lStack_88 + 0x20),0),
           plStack_a0 == (long *)0x0)) goto LAB_0465b034;
        puVar8 = (undefined8 *)PTR_DAT_05e5d528;
        if (iVar7 < 1) {
          puVar8 = (undefined8 *)PTR_DAT_05e59050;
        }
        StringBuilder_Append_0x60016d4(plStack_a0,*puVar8,0);
        if (plStack_a0 == (long *)0x0) goto LAB_0465b034;
        StringBuilder_Append_0x60016df(plStack_a0,iVar7,0);
      }
LAB_0465af28:
      iVar7 = InfVal_get_sign_0x600009d(plVar9);
      if (iVar7 < 0) {
        if (plStack_a0 == (long *)0x0) goto LAB_0465b034;
        StringBuilder_Insert_0x60016e8(plStack_a0,0,0x2d,0);
      }
      if (plStack_a0 != (long *)0x0) {
        plVar14 = (long *)(**(code **)(*plStack_a0 + 0x168))
                                    (plStack_a0,*(undefined8 *)(*plStack_a0 + 0x170));
        return plVar14;
      }
LAB_0465b034:
                    /* WARNING: Subroutine does not return */
      Throw_NullReference_Wrapper();
    }
  }
  if (*(int *)(*(long *)PTR_DAT_05e718d8 + 0xe4) == 0) {
    func_0x029f5bd0();
  }
  lVar16 = Configuration_get_decimalPoints_0x6000100();
  lVar10 = Configuration_get_separations_0x6000101();
  lVar11 = Configuration_get_exponents_0x6000102();
  param_1[1] = 0;
  param_1[2] = 0;
  *param_1 = 0;
code_r0x029f59f4:
  *param_1 = lVar16;
  Managed_WriteBarrier();
  param_1[1] = lVar10;
  Managed_WriteBarrier(param_1 + 1,lVar10);
  param_1 = param_1 + 2;
  *param_1 = lVar11;
  if (iRam0000000006484da8 != 0) {
    param_1 = (long *)func_0x02ae4790(1L << ((ulong)param_1 >> 0xc & 0x3f),
                                      ((ulong)param_1 >> 0x12 & 0x7fff) * 8 + 0x62b8d80);
  }
  return param_1;
}

