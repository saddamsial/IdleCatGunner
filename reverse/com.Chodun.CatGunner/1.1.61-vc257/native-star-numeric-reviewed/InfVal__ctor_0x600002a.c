/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x4555144, Ghidra VA 04655144. */

void InfVal__ctor_0x600002a(undefined8 *param_1,undefined8 param_2,ulong param_3)

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
  undefined8 uVar11;
  undefined8 uVar12;
  long lVar13;
  undefined8 *puVar14;
  ulong uVar15;
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
  undefined1 auStack_140 [16];
  code *pcStack_130;
  long lStack_128;
  long lStack_120;
  undefined8 *puStack_118;
  ulong uStack_110;
  undefined8 uStack_108;
  int iStack_f4;
  undefined8 uStack_f0;
  undefined8 uStack_e8;
  code *pcStack_e0;
  undefined8 uStack_d8;
  undefined8 uStack_80;
  undefined8 uStack_78;
  undefined8 uStack_70;
  undefined8 uStack_60;
  undefined8 uStack_58;
  undefined8 uStack_50;
  ulong uStack_48;
  
  puVar1 = PTR_DAT_05e718d8;
  uStack_48 = param_3;
  if ((bRam00000000062609dc & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e718d8);
    func_0x029f5a50(PTR_DAT_05e5a298);
    func_0x029f5a50(PTR_DAT_05e66730);
    func_0x029f5a50(PTR_DAT_05e71980);
    bRam00000000062609dc = 1;
  }
  param_1[1] = 0;
  *param_1 = 0;
  param_1[3] = 0;
  param_1[2] = 0;
  puVar2 = PTR_DAT_05e71980;
  if (*(int *)(*(long *)puVar1 + 0xe4) == 0) {
    func_0x029f5bd0();
  }
  uVar9 = Configuration_get_unitsList_0x60000fe();
  uVar10 = Configuration_get_decimalPoints_0x6000100();
  uVar11 = Configuration_get_separations_0x6000101();
  uVar12 = Configuration_get_exponents_0x6000102();
  uStack_60 = 0;
  uStack_58 = 0;
  uStack_50 = 0;
  func_0x03baabe0(&uStack_60,uVar10,uVar11,uVar12,*(undefined8 *)puVar2);
  uVar20 = 0;
  uStack_78 = uStack_58;
  uStack_80 = uStack_60;
  uStack_70 = uStack_50;
  InfVal_SetValueFromString_0x60000b8(param_1,param_2,uVar9,&uStack_80);
  puVar1 = PTR_DAT_05e66730;
  if ((param_3 & 0xff) == 0) {
    return;
  }
  iVar5 = func_0x035f6da8(&uStack_48,*(undefined8 *)PTR_DAT_05e66730);
  if (0 < iVar5) {
    iVar5 = *(int *)(param_1 + 1);
    iVar6 = InfVal_get_precision_0x6000097(param_1);
    iVar7 = func_0x035f6da8(&uStack_48,*(undefined8 *)puVar1);
    InfVal_set_exponent_0x6000096(param_1,(iVar6 + iVar5) - iVar7);
    return;
  }
  func_0x029f5a64(PTR_DAT_05e65dc8);
  uVar9 = func_0x029f5cec();
  uVar10 = func_0x029f5a64(PTR_DAT_05e71960);
  lVar13 = func_0x029f5a64(PTR_DAT_05e71968);
  puVar19 = (undefined8 *)0x0;
  ArgumentException__ctor_0x60003e7(uVar9,uVar10);
  uVar10 = func_0x029f5a64(PTR_DAT_05e71988);
  auVar25 = func_0x029f5bc0(uVar9,uVar10);
  puVar1 = PTR_DAT_05e718d8;
  lVar18 = auVar25._8_8_;
  puVar14 = auVar25._0_8_;
  pcStack_e0 = InfVal_SetValueFromString_0x60000b8;
  lVar16 = lVar13;
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
  uStack_d8 = 0;
  uStack_f0 = 0;
  uStack_e8 = 0;
  iStack_f4 = 0;
  if (*(int *)(*(long *)puVar1 + 0xe4) == 0) {
    func_0x029f5bd0();
  }
  uVar15 = Configuration_AreUnitsValid_0x6000109(lVar13);
  if ((uVar15 & 1) == 0) {
    if (*(int *)(*(long *)puVar1 + 0xe4) == 0) {
      func_0x029f5bd0();
    }
    lVar13 = Configuration_get_unitsList_0x60000fe();
  }
  uVar15 = String_IsNullOrWhiteSpace_0x6000278(lVar18,0);
  puVar1 = PTR_DAT_05e71998;
  if ((uVar15 & 1) != 0) {
    if ((uVar20 & 1) == 0) {
      InfVal_set_exponent_0x6000096(puVar14,0);
      if (*(int *)(*(long *)PTR_DAT_05e58fe0 + 0xe4) == 0) {
        func_0x029f5bd0();
      }
      auVar25 = BigInteger_op_Implicit_0x600003d(0,0);
      puVar1 = PTR_DAT_05e58fe0;
      if ((bRam0000000006260a1e & 1) == 0) {
        func_0x029f5a50(PTR_DAT_05e58fe0);
        bRam0000000006260a1e = 1;
      }
      pauVar23 = (undefined1 (*) [16])(puVar14 + 2);
      uVar9 = *(undefined8 *)*pauVar23;
      uVar10 = puVar14[3];
      if (*(int *)(*(long *)puVar1 + 0xe4) == 0) {
        func_0x029f5bd0();
      }
      uVar20 = BigInteger_op_Equality_0x600005f(uVar9,uVar10,auVar25._0_8_,auVar25._8_8_,0);
      if ((uVar20 & 1) != 0) {
        return;
      }
      *pauVar23 = auVar25;
      Managed_WriteBarrier(puVar14 + 3,0);
      if (*(int *)(*(long *)puVar1 + 0xe4) == 0) {
        func_0x029f5bd0();
      }
      uVar9 = BigInteger_ToString_0x6000032(pauVar23,0);
      *puVar14 = uVar9;
      if (iRam0000000006484da8 != 0) {
        func_0x02ae4790(1L << ((ulong)puVar14 >> 0xc & 0x3f),
                        ((ulong)puVar14 >> 0x12 & 0x7fff) * 8 + 0x62b8d80);
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
      uVar15 = 0;
      uVar22 = *(ulong *)(lVar24 + 0x18) & 0xffffffff;
      do {
        if (uVar22 <= uVar15) goto code_r0x046558f8;
        uVar9 = *(undefined8 *)(lVar24 + 0x20 + uVar15 * 8);
        uVar22 = String_IsNullOrWhiteSpace_0x6000278(uVar9,0);
        if ((uVar22 & 1) == 0) {
          uVar9 = String_Concat_0x6000298(uVar9,uVar9,0);
          if (lVar18 == 0) goto code_r0x046558fc;
          lVar16 = 0;
          uVar22 = String_Contains_0x60002d7(lVar18,uVar9,0);
          if ((uVar22 & 1) != 0) goto code_r0x04655900;
        }
        uVar22 = (ulong)*(uint *)(lVar24 + 0x18);
        uVar15 = uVar15 + 1;
      } while ((long)uVar15 < (long)(int)*(uint *)(lVar24 + 0x18));
    }
  }
  puVar1 = PTR_DAT_05e58a10;
  lVar16 = puVar19[1];
  if (lVar16 == 0) goto code_r0x046558fc;
  if (0 < (int)*(ulong *)(lVar16 + 0x18)) {
    uVar15 = 0;
    uVar22 = *(ulong *)(lVar16 + 0x18) & 0xffffffff;
    do {
      if (uVar22 <= uVar15) {
code_r0x046558f8:
                    /* WARNING: Subroutine does not return */
        Throw_Index_Wrapper();
      }
      uVar9 = *(undefined8 *)(lVar16 + 0x20 + uVar15 * 8);
      uVar22 = String_IsNullOrWhiteSpace_0x6000278(uVar9,0);
      if ((uVar22 & 1) == 0) {
        if (lVar18 == 0) goto code_r0x046558fc;
        lVar18 = String_Replace_0x60002b3
                           (lVar18,uVar9,**(undefined8 **)(*(long *)(puVar1 + 0x90) + 0xb8),0);
      }
      uVar22 = (ulong)*(uint *)(lVar16 + 0x18);
      uVar15 = uVar15 + 1;
    } while ((long)uVar15 < (long)(int)*(uint *)(lVar16 + 0x18));
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
      uVar15 = Char_IsDigit_0x600049f(uVar8,0);
      iVar6 = *(int *)(lVar18 + 0x10);
    } while (((uVar15 & 1) != 0) && (iVar5 = iVar5 + 1, iVar5 < iVar6));
  }
  if ((iVar5 < iVar6) &&
     (uVar15 = InfVal_IsFollowedBy_0x60000b9(lVar18,iVar5,*puVar19,(long)&uStack_d8 + 4),
     (uVar15 & 1) != 0)) {
    lVar18 = String_Remove_0x60002b0(lVar18,iVar5,uStack_d8._4_4_,0);
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
      uVar15 = Char_IsDigit_0x600049f(uVar8,0);
      if ((uVar15 & 1) == 0) goto code_r0x04655900;
    }
    puVar1 = PTR_DAT_05e58a10;
    if (*(int *)(lVar18 + 0x10) <= iVar5) goto code_r0x0465579c;
    iVar6 = 0;
    do {
      uVar8 = String_get_Chars_0x6000310(lVar18,iVar5,0);
      if (*(int *)(*(long *)(puVar1 + 0x88) + 0xe4) == 0) {
        func_0x029f5bd0(*(long *)(puVar1 + 0x88));
      }
      uVar15 = Char_IsDigit_0x600049f(uVar8,0);
      if ((uVar15 & 1) == 0) break;
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
  uVar15 = BigInteger_TryParse_0x6000018(uVar9,&uStack_f0,0);
  if ((uVar15 & 1) != 0) {
    InfVal_set_digits_0x6000094(puVar14,uStack_f0,uStack_e8);
    lVar18 = String_Substring_0x60002c2(lVar18,iVar5,0);
    if (lVar18 == 0) {
code_r0x046558fc:
                    /* WARNING: Subroutine does not return */
      Throw_NullReference_Wrapper();
    }
    if (*(int *)(lVar18 + 0x10) != 0) {
      if ((lVar13 == 0) ||
         (iVar5 = func_0x032b04d4(lVar13,lVar18,*(undefined8 *)PTR_DAT_05e5fe98), iVar5 < 0)) {
        lVar16 = puVar19[2];
        uVar15 = InfVal_IsFollowedBy_0x60000b9(lVar18,0,lVar16,&uStack_d8);
        if ((uVar15 & 1) != 0) {
          uVar9 = String_Substring_0x60002c2(lVar18,uStack_d8 & 0xffffffff,0);
          lVar16 = 0;
          uVar15 = Int32_TryParse_0x6000818(uVar9,&iStack_f4,0);
          if ((uVar15 & 1) != 0) {
            iVar6 = iStack_f4 + iVar6;
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
    *(int *)(puVar14 + 1) = iVar6;
    return;
  }
  if ((uVar20 & 1) == 0) {
    InfVal_set_exponent_0x6000096(puVar14,0);
    if (*(int *)(*(long *)puVar1 + 0xe4) == 0) {
      func_0x029f5bd0();
    }
    auVar25 = BigInteger_op_Implicit_0x600003d(0,0);
    InfVal_set_digits_0x6000094(puVar14,auVar25._0_8_,auVar25._8_8_);
    return;
  }
code_r0x04655900:
  func_0x029f5a64(PTR_DAT_05e69b58);
  uVar9 = func_0x029f5cec();
  FormatException__ctor_0x60006d3(uVar9,0);
  uVar10 = func_0x029f5a64(PTR_DAT_05e719a0);
  auVar25 = func_0x029f5bc0(uVar9,uVar10);
  puVar1 = PTR_DAT_05e58fe0;
  pcStack_130 = InfVal__ctor_0x600002b;
  lStack_128 = lVar18;
  lStack_120 = lVar13;
  puStack_118 = puVar19;
  uStack_110 = uVar20 & 0xffffffff;
  uStack_108 = uVar9;
  if ((bRam00000000062609dd & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e58fe0);
    bRam00000000062609dd = 1;
  }
  auStack_140._0_8_ = 0;
  auStack_140._8_8_ = 0;
  if (*(int *)(*(long *)puVar1 + 0xe4) == 0) {
    func_0x029f5bd0();
  }
  auStack_140 = BigInteger_op_Implicit_0x600003a(auVar25._8_8_ & 0xffffffff,0);
  InfVal__ctor_0x6000029(auVar25._0_8_,auStack_140,lVar16);
  return;
}

