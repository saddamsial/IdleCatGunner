/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x4555028, Ghidra VA 04655028. */

void InfVal__ctor_0x6000029(undefined8 *param_1,undefined8 *param_2,ulong param_3)

{
  undefined *puVar1;
  undefined *puVar2;
  undefined *puVar3;
  short sVar4;
  int iVar5;
  int iVar6;
  int iVar7;
  undefined4 uVar8;
  undefined8 uVar9;
  undefined8 uVar10;
  ulong uVar11;
  undefined8 *puVar12;
  undefined8 uVar13;
  undefined8 uVar14;
  long lVar15;
  long lVar16;
  long *plVar17;
  long lVar18;
  undefined8 *puVar19;
  ulong uVar20;
  undefined8 *puVar21;
  ulong uVar22;
  undefined1 (*pauVar23) [16];
  long lVar24;
  undefined1 auVar25 [16];
  undefined1 auStack_170 [16];
  code *pcStack_160;
  long lStack_158;
  long lStack_150;
  undefined8 *puStack_148;
  ulong uStack_140;
  undefined8 uStack_138;
  int iStack_124;
  undefined8 uStack_120;
  undefined8 uStack_118;
  code *pcStack_110;
  undefined8 uStack_108;
  undefined8 uStack_b0;
  undefined8 uStack_a8;
  undefined8 uStack_a0;
  undefined8 uStack_90;
  undefined8 uStack_88;
  undefined8 uStack_80;
  ulong uStack_78;
  code *pcStack_70;
  ulong uStack_28;
  
  uStack_28 = param_3;
  if ((bRam00000000062609db & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e5a298);
    func_0x029f5a50(PTR_DAT_05e66730);
    bRam00000000062609db = 1;
  }
  param_1[1] = 0;
  *param_1 = 0;
  param_1[3] = 0;
  param_1[2] = 0;
  InfVal_set_digits_0x6000094(param_1,*param_2,param_2[1]);
  *(undefined4 *)(param_1 + 1) = 0;
  puVar1 = PTR_DAT_05e66730;
  if ((param_3 & 0xff) == 0) {
    return;
  }
  iVar5 = func_0x035f6da8(&uStack_28,*(undefined8 *)PTR_DAT_05e66730);
  if (0 < iVar5) {
    iVar5 = *(int *)(param_1 + 1);
    iVar6 = InfVal_get_precision_0x6000097(param_1);
    iVar7 = func_0x035f6da8(&uStack_28,*(undefined8 *)puVar1);
    InfVal_set_exponent_0x6000096(param_1,(iVar6 + iVar5) - iVar7);
    return;
  }
  func_0x029f5a64(PTR_DAT_05e65dc8);
  uVar9 = func_0x029f5cec();
  uVar10 = func_0x029f5a64(PTR_DAT_05e71960);
  uVar11 = func_0x029f5a64(PTR_DAT_05e71968);
  ArgumentException__ctor_0x60003e7(uVar9,uVar10,uVar11,0);
  uVar10 = func_0x029f5a64(PTR_DAT_05e71978);
  auVar25 = func_0x029f5bc0(uVar9,uVar10);
  puVar1 = PTR_DAT_05e718d8;
  puVar12 = auVar25._0_8_;
  pcStack_70 = InfVal__ctor_0x600002a;
  uStack_78 = uVar11;
  if ((bRam00000000062609dc & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e718d8);
    func_0x029f5a50(PTR_DAT_05e5a298);
    func_0x029f5a50(PTR_DAT_05e66730);
    func_0x029f5a50(PTR_DAT_05e71980);
    bRam00000000062609dc = 1;
  }
  puVar12[1] = 0;
  *puVar12 = 0;
  puVar12[3] = 0;
  puVar12[2] = 0;
  puVar2 = PTR_DAT_05e71980;
  if (*(int *)(*(long *)puVar1 + 0xe4) == 0) {
    func_0x029f5bd0();
  }
  uVar9 = Configuration_get_unitsList_0x60000fe();
  uVar10 = Configuration_get_decimalPoints_0x6000100();
  uVar13 = Configuration_get_separations_0x6000101();
  uVar14 = Configuration_get_exponents_0x6000102();
  uStack_90 = 0;
  uStack_88 = 0;
  uStack_80 = 0;
  func_0x03baabe0(&uStack_90,uVar10,uVar13,uVar14,*(undefined8 *)puVar2);
  uVar20 = 0;
  uStack_a8 = uStack_88;
  uStack_b0 = uStack_90;
  uStack_a0 = uStack_80;
  InfVal_SetValueFromString_0x60000b8(puVar12,auVar25._8_8_,uVar9,&uStack_b0);
  puVar1 = PTR_DAT_05e66730;
  if ((uVar11 & 0xff) == 0) {
    return;
  }
  iVar5 = func_0x035f6da8(&uStack_78,*(undefined8 *)PTR_DAT_05e66730);
  if (0 < iVar5) {
    iVar5 = *(int *)(puVar12 + 1);
    iVar6 = InfVal_get_precision_0x6000097(puVar12);
    iVar7 = func_0x035f6da8(&uStack_78,*(undefined8 *)puVar1);
    InfVal_set_exponent_0x6000096(puVar12,(iVar6 + iVar5) - iVar7);
    return;
  }
  func_0x029f5a64(PTR_DAT_05e65dc8);
  uVar9 = func_0x029f5cec();
  uVar10 = func_0x029f5a64(PTR_DAT_05e71960);
  lVar15 = func_0x029f5a64(PTR_DAT_05e71968);
  puVar19 = (undefined8 *)0x0;
  ArgumentException__ctor_0x60003e7(uVar9,uVar10);
  uVar10 = func_0x029f5a64(PTR_DAT_05e71988);
  auVar25 = func_0x029f5bc0(uVar9,uVar10);
  puVar1 = PTR_DAT_05e718d8;
  lVar18 = auVar25._8_8_;
  puVar12 = auVar25._0_8_;
  pcStack_110 = InfVal_SetValueFromString_0x60000b8;
  lVar16 = lVar15;
  if ((bRam0000000006260a38 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e5fe98);
    func_0x029f5a50(PTR_DAT_05e58fe0);
    func_0x029f5a50(PTR_DAT_05e718d8);
    func_0x029f5a50(PTR_DAT_05e60ad8);
    func_0x029f5a50(PTR_DAT_05e60ae0);
    func_0x029f5a50(PTR_DAT_05e60ae8);
    func_0x029f5a50(PTR_DAT_05e71990);
    func_0x029f5a50(PTR_DAT_05e71998);
    bRam0000000006260a38 = 1;
  }
  uStack_108 = 0;
  uStack_120 = 0;
  uStack_118 = 0;
  iStack_124 = 0;
  if (*(int *)(*(long *)puVar1 + 0xe4) == 0) {
    func_0x029f5bd0();
  }
  uVar11 = Configuration_AreUnitsValid_0x6000109(lVar15);
  if ((uVar11 & 1) == 0) {
    if (*(int *)(*(long *)puVar1 + 0xe4) == 0) {
      func_0x029f5bd0();
    }
    lVar15 = Configuration_get_unitsList_0x60000fe();
  }
  uVar11 = String_IsNullOrWhiteSpace_0x6000278(lVar18,0);
  puVar1 = PTR_DAT_05e71998;
  if ((uVar11 & 1) != 0) {
    if ((uVar20 & 1) == 0) {
      InfVal_set_exponent_0x6000096(puVar12,0);
      if (*(int *)(*(long *)PTR_DAT_05e58fe0 + 0xe4) == 0) {
        func_0x029f5bd0();
      }
      auVar25 = BigInteger_op_Implicit_0x600003d(0,0);
      puVar1 = PTR_DAT_05e58fe0;
      if ((bRam0000000006260a1e & 1) == 0) {
        func_0x029f5a50(PTR_DAT_05e58fe0);
        bRam0000000006260a1e = 1;
      }
      pauVar23 = (undefined1 (*) [16])(puVar12 + 2);
      uVar9 = *(undefined8 *)*pauVar23;
      uVar10 = puVar12[3];
      if (*(int *)(*(long *)puVar1 + 0xe4) == 0) {
        func_0x029f5bd0();
      }
      uVar11 = BigInteger_op_Equality_0x600005f(uVar9,uVar10,auVar25._0_8_,auVar25._8_8_,0);
      if ((uVar11 & 1) != 0) {
        return;
      }
      *pauVar23 = auVar25;
      Managed_WriteBarrier(puVar12 + 3,0);
      if (*(int *)(*(long *)puVar1 + 0xe4) == 0) {
        func_0x029f5bd0();
      }
      uVar9 = BigInteger_ToString_0x6000032(pauVar23,0);
      *puVar12 = uVar9;
      if (iRam0000000006484da8 != 0) {
        func_0x02ae4790(1L << ((ulong)puVar12 >> 0xc & 0x3f),
                        ((ulong)puVar12 >> 0x12 & 0x7fff) * 8 + 0x62b8d80);
      }
      return;
    }
    goto code_r0x04655900;
  }
  lVar16 = *(long *)PTR_DAT_05e71998;
  if (*(int *)(lVar16 + 0xe4) == 0) {
    func_0x029f5bd0();
    lVar16 = *(long *)puVar1;
  }
  puVar3 = PTR_DAT_05e60ae0;
  puVar2 = PTR_DAT_05e60ad8;
  puVar21 = *(undefined8 **)(lVar16 + 0xb8);
  lVar24 = puVar21[1];
  if (lVar24 == 0) {
    if (*(int *)(lVar16 + 0xe4) == 0) {
      func_0x029f5bd0();
      puVar21 = *(undefined8 **)(*(long *)puVar1 + 0xb8);
    }
    uVar9 = *puVar21;
    lVar24 = func_0x029f5cec(*(undefined8 *)PTR_DAT_05e60ae8);
    func_0x0423c35c(lVar24,uVar9,*(undefined8 *)PTR_DAT_05e71990,0);
    plVar17 = (long *)(*(long *)(*(long *)puVar1 + 0xb8) + 8);
    *plVar17 = lVar24;
    Managed_WriteBarrier(plVar17,lVar24);
  }
  uVar9 = func_0x03069d2c(lVar18,lVar24,*(undefined8 *)puVar3);
  uVar9 = func_0x03066420(uVar9,*(undefined8 *)puVar2);
  lVar18 = String_CreateString_0x600030c(0,uVar9,0);
  if ((uVar20 & 1) != 0) {
    lVar24 = puVar19[1];
    if (lVar24 == 0) goto code_r0x046558fc;
    if (0 < (int)*(ulong *)(lVar24 + 0x18)) {
      uVar11 = 0;
      uVar22 = *(ulong *)(lVar24 + 0x18) & 0xffffffff;
      do {
        if (uVar22 <= uVar11) goto code_r0x046558f8;
        uVar9 = *(undefined8 *)(lVar24 + 0x20 + uVar11 * 8);
        uVar22 = String_IsNullOrWhiteSpace_0x6000278(uVar9,0);
        if ((uVar22 & 1) == 0) {
          uVar9 = String_Concat_0x6000298(uVar9,uVar9,0);
          if (lVar18 == 0) goto code_r0x046558fc;
          lVar16 = 0;
          uVar22 = String_Contains_0x60002d7(lVar18,uVar9,0);
          if ((uVar22 & 1) != 0) goto code_r0x04655900;
        }
        uVar22 = (ulong)*(uint *)(lVar24 + 0x18);
        uVar11 = uVar11 + 1;
      } while ((long)uVar11 < (long)(int)*(uint *)(lVar24 + 0x18));
    }
  }
  puVar1 = PTR_DAT_05e58a10;
  lVar16 = puVar19[1];
  if (lVar16 == 0) goto code_r0x046558fc;
  if (0 < (int)*(ulong *)(lVar16 + 0x18)) {
    uVar11 = 0;
    uVar22 = *(ulong *)(lVar16 + 0x18) & 0xffffffff;
    do {
      if (uVar22 <= uVar11) {
code_r0x046558f8:
                    /* WARNING: Subroutine does not return */
        Throw_Index_Wrapper();
      }
      uVar9 = *(undefined8 *)(lVar16 + 0x20 + uVar11 * 8);
      uVar22 = String_IsNullOrWhiteSpace_0x6000278(uVar9,0);
      if ((uVar22 & 1) == 0) {
        if (lVar18 == 0) goto code_r0x046558fc;
        lVar18 = String_Replace_0x60002b3
                           (lVar18,uVar9,**(undefined8 **)(*(long *)(puVar1 + 0x90) + 0xb8),0);
      }
      uVar22 = (ulong)*(uint *)(lVar16 + 0x18);
      uVar11 = uVar11 + 1;
    } while ((long)uVar11 < (long)(int)*(uint *)(lVar16 + 0x18));
  }
  if (lVar18 == 0) goto code_r0x046558fc;
  sVar4 = String_get_Chars_0x6000310(lVar18,0,0);
  if (sVar4 == 0x2b) {
code_r0x0465564c:
    iVar5 = 1;
  }
  else {
    sVar4 = String_get_Chars_0x6000310(lVar18,0,0);
    iVar5 = 0;
    if (sVar4 == 0x2d) goto code_r0x0465564c;
  }
  puVar1 = PTR_DAT_05e58a10;
  iVar6 = *(int *)(lVar18 + 0x10);
  if (iVar5 < iVar6) {
    do {
      uVar8 = String_get_Chars_0x6000310(lVar18,iVar5,0);
      if (*(int *)(*(long *)(puVar1 + 0x88) + 0xe4) == 0) {
        func_0x029f5bd0(*(long *)(puVar1 + 0x88));
      }
      uVar11 = Char_IsDigit_0x600049f(uVar8,0);
      iVar6 = *(int *)(lVar18 + 0x10);
    } while (((uVar11 & 1) != 0) && (iVar5 = iVar5 + 1, iVar5 < iVar6));
  }
  if ((iVar5 < iVar6) &&
     (uVar11 = InfVal_IsFollowedBy_0x60000b9(lVar18,iVar5,*puVar19,(long)&uStack_108 + 4),
     (uVar11 & 1) != 0)) {
    lVar18 = String_Remove_0x60002b0(lVar18,iVar5,uStack_108._4_4_,0);
    if ((uVar20 & 1) == 0) {
      if (lVar18 == 0) goto code_r0x046558fc;
    }
    else {
      if (lVar18 == 0) goto code_r0x046558fc;
      lVar16 = 0;
      uVar8 = String_get_Chars_0x6000310(lVar18,iVar5,0);
      if (*(int *)(*(long *)(PTR_DAT_05e58a10 + 0x88) + 0xe4) == 0) {
        func_0x029f5bd0(*(long *)(PTR_DAT_05e58a10 + 0x88));
      }
      uVar11 = Char_IsDigit_0x600049f(uVar8,0);
      if ((uVar11 & 1) == 0) goto code_r0x04655900;
    }
    puVar1 = PTR_DAT_05e58a10;
    if (*(int *)(lVar18 + 0x10) <= iVar5) goto code_r0x0465579c;
    iVar6 = 0;
    do {
      uVar8 = String_get_Chars_0x6000310(lVar18,iVar5,0);
      if (*(int *)(*(long *)(puVar1 + 0x88) + 0xe4) == 0) {
        func_0x029f5bd0(*(long *)(puVar1 + 0x88));
      }
      uVar11 = Char_IsDigit_0x600049f(uVar8,0);
      if ((uVar11 & 1) == 0) break;
      iVar5 = iVar5 + 1;
      iVar6 = iVar6 + -1;
    } while (iVar5 < *(int *)(lVar18 + 0x10));
  }
  else {
code_r0x0465579c:
    iVar6 = 0;
  }
  uVar9 = String_Substring_0x60002c3(lVar18,0,iVar5,0);
  puVar1 = PTR_DAT_05e58fe0;
  if (*(int *)(*(long *)PTR_DAT_05e58fe0 + 0xe4) == 0) {
    func_0x029f5bd0(*(long *)PTR_DAT_05e58fe0);
  }
  lVar16 = 0;
  uVar11 = BigInteger_TryParse_0x6000018(uVar9,&uStack_120,0);
  if ((uVar11 & 1) != 0) {
    InfVal_set_digits_0x6000094(puVar12,uStack_120,uStack_118);
    lVar18 = String_Substring_0x60002c2(lVar18,iVar5,0);
    if (lVar18 == 0) {
code_r0x046558fc:
                    /* WARNING: Subroutine does not return */
      Throw_NullReference_Wrapper();
    }
    if (*(int *)(lVar18 + 0x10) != 0) {
      if ((lVar15 == 0) ||
         (iVar5 = func_0x032b04d4(lVar15,lVar18,*(undefined8 *)PTR_DAT_05e5fe98), iVar5 < 0)) {
        lVar16 = puVar19[2];
        uVar11 = InfVal_IsFollowedBy_0x60000b9(lVar18,0,lVar16,&uStack_108);
        if ((uVar11 & 1) != 0) {
          uVar9 = String_Substring_0x60002c2(lVar18,uStack_108 & 0xffffffff,0);
          lVar16 = 0;
          uVar11 = Int32_TryParse_0x6000818(uVar9,&iStack_124,0);
          if ((uVar11 & 1) != 0) {
            iVar6 = iStack_124 + iVar6;
            goto code_r0x046558d4;
          }
        }
        if ((uVar20 & 1) != 0) goto code_r0x04655900;
      }
      else {
        iVar6 = iVar6 + iVar5 * 3 + 3;
      }
    }
code_r0x046558d4:
    *(int *)(puVar12 + 1) = iVar6;
    return;
  }
  if ((uVar20 & 1) == 0) {
    InfVal_set_exponent_0x6000096(puVar12,0);
    if (*(int *)(*(long *)puVar1 + 0xe4) == 0) {
      func_0x029f5bd0();
    }
    auVar25 = BigInteger_op_Implicit_0x600003d(0,0);
    InfVal_set_digits_0x6000094(puVar12,auVar25._0_8_,auVar25._8_8_);
    return;
  }
code_r0x04655900:
  func_0x029f5a64(PTR_DAT_05e69b58);
  uVar9 = func_0x029f5cec();
  FormatException__ctor_0x60006d3(uVar9,0);
  uVar10 = func_0x029f5a64(PTR_DAT_05e719a0);
  auVar25 = func_0x029f5bc0(uVar9,uVar10);
  puVar1 = PTR_DAT_05e58fe0;
  pcStack_160 = InfVal__ctor_0x600002b;
  lStack_158 = lVar18;
  lStack_150 = lVar15;
  puStack_148 = puVar19;
  uStack_140 = uVar20 & 0xffffffff;
  uStack_138 = uVar9;
  if ((bRam00000000062609dd & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e58fe0);
    bRam00000000062609dd = 1;
  }
  auStack_170._0_8_ = 0;
  auStack_170._8_8_ = 0;
  if (*(int *)(*(long *)puVar1 + 0xe4) == 0) {
    func_0x029f5bd0();
  }
  auStack_170 = BigInteger_op_Implicit_0x600003a(auVar25._8_8_ & 0xffffffff,0);
  InfVal__ctor_0x6000029(auVar25._0_8_,auStack_170,lVar16);
  return;
}

