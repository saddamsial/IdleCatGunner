/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x455a9a0, Ghidra VA 0465a9a0. */

undefined8 InfVal_InternalToString(long *param_1,ulong *param_2,long *param_3)

{
  undefined8 *puVar1;
  uint uVar2;
  undefined *puVar3;
  undefined *puVar4;
  short sVar5;
  int iVar6;
  int iVar7;
  int iVar8;
  ulong uVar9;
  ulong uVar10;
  long lVar11;
  long *plVar12;
  undefined8 uVar13;
  undefined8 uVar14;
  undefined8 uVar15;
  long *plStack_70;
  long lStack_68;
  long lStack_60;
  long lStack_58;
  ulong uStack_50;
  ulong uStack_48;
  ulong uStack_40;
  
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
  puVar3 = PTR_DAT_05e5e048;
  uStack_40 = 0;
  lStack_60 = param_3[1];
  lStack_68 = *param_3;
  lStack_58 = param_3[2];
  plStack_70 = (long *)0x0;
  uStack_48 = 0;
  uStack_50 = 0;
  Managed_WriteBarrier((ulong)&plStack_70 | 8,0);
  uStack_48 = param_2[1];
  uStack_50 = *param_2;
  uStack_40 = param_2[2];
  Managed_WriteBarrier(&uStack_48,0);
  uVar9 = InfVal_get_isZero_0x6000099(param_1);
  uVar10 = uStack_48;
  puVar4 = PTR_DAT_05e718d8;
  if ((uVar9 & 1) != 0) {
    if (((byte)uStack_40 >> 3 & 1) == 0) {
LAB_0465aaa0:
      return *(undefined8 *)puVar3;
    }
    iVar8 = (int)uStack_50 + -1;
    if ((iVar8 == 0) || (iVar7 = (int)param_1[1], -1 < iVar7)) goto LAB_0465aaa0;
    if (lStack_68 == 0) goto LAB_0465b034;
    if (*(int *)(lStack_68 + 0x18) != 0) {
      uVar14 = *(undefined8 *)(lStack_68 + 0x20);
      uVar15 = *(undefined8 *)puVar3;
      if ((int)uStack_50 < 1) {
        iVar7 = -iVar7;
      }
      else {
        if (*(int *)(*(long *)PTR_DAT_05e59000 + 0xe4) == 0) {
          func_0x029f5bd0();
        }
        iVar7 = Math_Min_0x600088f(-iVar7,iVar8,0);
      }
      uVar13 = String_CreateString_0x600030d(0,0x30,iVar7,0);
      uVar14 = String_Concat_0x6000299(uVar15,uVar14,uVar13,0);
      return uVar14;
    }
    goto LAB_0465b038;
  }
  if (*(int *)(*(long *)PTR_DAT_05e718d8 + 0xe4) == 0) {
    func_0x029f5bd0();
  }
  uVar10 = Configuration_AreUnitsValid_0x6000109(uVar10);
  if ((uVar10 & 1) == 0) {
    if (*(int *)(*(long *)puVar4 + 0xe4) == 0) {
      func_0x029f5bd0();
    }
    uStack_48 = Configuration_get_unitsList();
    Managed_WriteBarrier(&uStack_48,uStack_48);
  }
  if ((bRam0000000006260a1d & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e5e048);
    bRam0000000006260a1d = 1;
  }
  lVar11 = *(long *)puVar3;
  if (*param_1 != 0) {
    lVar11 = *param_1;
  }
  if (lVar11 == 0) goto LAB_0465b034;
  uVar10 = String_StartsWith_0x600025e(lVar11,*(undefined8 *)PTR_DAT_05e5acc0,0);
  if ((uVar10 & 1) == 0) {
    if ((bRam0000000006260a1d & 1) == 0) {
      func_0x029f5a50(PTR_DAT_05e5e048);
      bRam0000000006260a1d = 1;
    }
    lVar11 = *(long *)puVar3;
    if (*param_1 != 0) {
      lVar11 = *param_1;
    }
  }
  else {
    if ((bRam0000000006260a1d & 1) == 0) {
      func_0x029f5a50(PTR_DAT_05e5e048);
      bRam0000000006260a1d = 1;
    }
    lVar11 = *(long *)puVar3;
    if (*param_1 != 0) {
      lVar11 = *param_1;
    }
    if (lVar11 == 0) goto LAB_0465b034;
    lVar11 = String_Substring_0x60002c2(lVar11,1,0);
  }
  plVar12 = (long *)func_0x029f5cec(*(undefined8 *)PTR_DAT_05e590d8);
  StringBuilder__ctor_0x60016c2(plVar12,lVar11,0);
  plStack_70 = plVar12;
  Managed_WriteBarrier(&plStack_70,plVar12);
  iVar8 = (int)param_1[1];
  if (0 < (int)uStack_50) {
    if (plStack_70 == (long *)0x0) goto LAB_0465b034;
    iVar7 = StringBuilder_get_Length_0x60016ce(plStack_70,0);
    if ((int)uStack_50 < iVar7) {
      if ((plStack_70 == (long *)0x0) ||
         (iVar7 = StringBuilder_get_Length_0x60016ce(plStack_70,0), plStack_70 == (long *)0x0))
      goto LAB_0465b034;
      iVar8 = (iVar7 + iVar8) - (int)uStack_50;
      StringBuilder_set_Length_0x60016cf(plStack_70,uStack_50 & 0xffffffff,0);
    }
  }
  if (((uint)uStack_40 >> 3 & 1) == 0) {
    while (plStack_70 != (long *)0x0) {
      iVar7 = StringBuilder_get_Length_0x60016ce(plStack_70,0);
      plVar12 = plStack_70;
      if (iVar7 < 2) {
LAB_0465acb4:
        goto LAB_0465acb8;
      }
      if (plStack_70 == (long *)0x0) break;
      iVar7 = StringBuilder_get_Length_0x60016ce(plStack_70,0);
      sVar5 = StringBuilder_get_Chars_0x60016d0(plVar12,iVar7 + -1,0);
      plVar12 = plStack_70;
      if (sVar5 != 0x30) goto LAB_0465acb4;
      if (plStack_70 == (long *)0x0) break;
      iVar8 = iVar8 + 1;
      iVar7 = StringBuilder_get_Length_0x60016ce(plStack_70,0);
      StringBuilder_set_Length_0x60016cf(plVar12,iVar7 + -1,0);
    }
    goto LAB_0465b034;
  }
LAB_0465acb8:
  if (((uint)uStack_40 >> 2 & 1) == 0) {
    if (0 < (int)uStack_50) {
      if (0 < iVar8) {
        if (plStack_70 == (long *)0x0) goto LAB_0465b034;
        iVar7 = StringBuilder_get_Length_0x60016ce(plStack_70,0);
        if ((int)uStack_50 < iVar7 + iVar8) goto LAB_0465ad20;
      }
      if (plStack_70 == (long *)0x0) goto LAB_0465b034;
      iVar7 = StringBuilder_get_Length_0x60016ce(plStack_70,0);
      if ((iVar8 <= -iVar7) && ((int)uStack_50 < 1 - iVar8)) goto LAB_0465ad20;
    }
    plVar12 = plStack_70;
    if (iVar8 < 1) {
      if (plStack_70 == (long *)0x0) goto LAB_0465b034;
      iVar7 = StringBuilder_get_Length_0x60016ce(plStack_70,0);
      plVar12 = plStack_70;
      if (iVar8 <= -iVar7) {
        if (plStack_70 == (long *)0x0) goto LAB_0465b034;
        iVar7 = StringBuilder_get_Length_0x60016ce(plStack_70,0);
        uVar14 = String_CreateString_0x600030d(0,0x30,(1 - iVar8) - iVar7,0);
        StringBuilder_Insert_0x60016e7(plVar12,0,uVar14,0);
      }
    }
    else {
      uVar14 = String_CreateString_0x600030d(0,0x30,iVar8,0);
      if (plVar12 == (long *)0x0) goto LAB_0465b034;
      StringBuilder_Append_0x60016d4(plVar12,uVar14,0);
      iVar8 = 0;
    }
    if (plStack_70 == (long *)0x0) goto LAB_0465b034;
    iVar7 = StringBuilder_get_Length_0x60016ce(plStack_70,0);
    InfVal__InternalToString_g__AddDecimalPointAndSeparators_161_0_0x60000bc
              (iVar7 + iVar8,&plStack_70);
  }
  else {
LAB_0465ad20:
    if (plStack_70 == (long *)0x0) goto LAB_0465b034;
    iVar7 = StringBuilder_get_Length_0x60016ce(plStack_70,0);
    iVar8 = iVar8 + iVar7 + -1;
    if ((uStack_48 == 0) || (iVar8 < 3)) {
      InfVal__InternalToString_g__AddDecimalPointAndSeparators_161_0_0x60000bc(1,&plStack_70);
      if (iVar8 == 0) goto LAB_0465af28;
    }
    else {
      if (iVar8 / 3 <= *(int *)(uStack_48 + 0x18)) {
        if (plStack_70 == (long *)0x0) goto LAB_0465b034;
        iVar7 = iVar8 % 3;
        iVar6 = StringBuilder_get_Length_0x60016ce(plStack_70,0);
        if ((iVar7 < iVar6) || (iVar7 < (int)uStack_50)) {
          if (plStack_70 == (long *)0x0) goto LAB_0465b034;
          iVar6 = StringBuilder_get_Length_0x60016ce(plStack_70,0);
          plVar12 = plStack_70;
          if (iVar6 <= iVar7) {
            if (plStack_70 == (long *)0x0) goto LAB_0465b034;
            iVar6 = StringBuilder_get_Length_0x60016ce(plStack_70,0);
            uVar14 = String_CreateString_0x600030d(0,0x30,(iVar7 + 1) - iVar6,0);
            StringBuilder_Append_0x60016d4(plVar12,uVar14,0);
          }
          InfVal__InternalToString_g__AddDecimalPointAndSeparators_161_0_0x60000bc
                    (iVar7 + 1,&plStack_70);
          if (uStack_48 == 0) goto LAB_0465b034;
          uVar2 = iVar8 / 3 - 1;
          if (*(uint *)(uStack_48 + 0x18) <= uVar2) goto LAB_0465b038;
          if (plStack_70 == (long *)0x0) goto LAB_0465b034;
          StringBuilder_Append_0x60016d4
                    (plStack_70,*(undefined8 *)(uStack_48 + (ulong)uVar2 * 8 + 0x20),0);
          goto LAB_0465af28;
        }
      }
      InfVal__InternalToString_g__AddDecimalPointAndSeparators_161_0_0x60000bc(1,&plStack_70);
    }
    if (lStack_58 == 0) goto LAB_0465b034;
    if (*(int *)(lStack_58 + 0x18) == 0) {
LAB_0465b038:
                    /* WARNING: Subroutine does not return */
      Throw_Index_Wrapper();
    }
    if ((plStack_70 == (long *)0x0) ||
       (StringBuilder_Append_0x60016d4(plStack_70,*(undefined8 *)(lStack_58 + 0x20),0),
       plStack_70 == (long *)0x0)) goto LAB_0465b034;
    puVar1 = (undefined8 *)PTR_DAT_05e5d528;
    if (iVar8 < 1) {
      puVar1 = (undefined8 *)PTR_DAT_05e59050;
    }
    StringBuilder_Append_0x60016d4(plStack_70,*puVar1,0);
    if (plStack_70 == (long *)0x0) goto LAB_0465b034;
    StringBuilder_Append_0x60016df(plStack_70,iVar8,0);
  }
LAB_0465af28:
  iVar8 = InfVal_get_sign_0x600009d(param_1);
  if (iVar8 < 0) {
    if (plStack_70 == (long *)0x0) goto LAB_0465b034;
    StringBuilder_Insert_0x60016e8(plStack_70,0,0x2d,0);
  }
  if (plStack_70 != (long *)0x0) {
    uVar14 = (**(code **)(*plStack_70 + 0x168))(plStack_70,*(undefined8 *)(*plStack_70 + 0x170));
    return uVar14;
  }
LAB_0465b034:
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

