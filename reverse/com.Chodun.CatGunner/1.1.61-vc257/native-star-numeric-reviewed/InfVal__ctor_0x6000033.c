/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x4555d94, Ghidra VA 04655d94. */

void InfVal__ctor_0x6000033(undefined4 param_1,undefined8 *param_2,ulong param_3)

{
  uint uVar1;
  undefined *puVar2;
  undefined *puVar3;
  undefined *puVar4;
  int iVar5;
  int iVar6;
  int iVar7;
  uint uVar8;
  undefined8 uVar9;
  long lVar10;
  long *plVar11;
  long lVar12;
  long lVar13;
  undefined8 uVar14;
  undefined8 uVar15;
  undefined8 uVar16;
  undefined8 *puVar17;
  ulong uVar18;
  long lVar19;
  ulong extraout_x1;
  ulong uVar20;
  undefined8 *extraout_x8;
  undefined8 extraout_d0;
  undefined1 auVar21 [16];
  undefined8 uStack_1c8;
  long lStack_1c0;
  ulong uStack_1b8;
  ulong uStack_1b0;
  undefined8 *puStack_1a8;
  undefined8 uStack_1a0;
  undefined8 uStack_198;
  undefined8 uStack_190;
  undefined8 uStack_188;
  undefined8 uStack_180;
  undefined8 uStack_178;
  ulong uStack_170;
  undefined8 uStack_168;
  undefined8 uStack_160;
  long lStack_158;
  code *pcStack_150;
  undefined8 uStack_100;
  undefined8 uStack_f8;
  undefined8 uStack_f0;
  undefined8 uStack_e8;
  undefined8 uStack_e0;
  undefined8 uStack_d8;
  undefined8 uStack_d0;
  ulong uStack_c8;
  code *pcStack_c0;
  undefined *puStack_b8;
  undefined *puStack_b0;
  long lStack_a8;
  long lStack_a0;
  undefined8 uStack_98;
  undefined8 uStack_90;
  undefined8 uStack_88;
  undefined8 uStack_80;
  undefined8 uStack_78;
  undefined8 uStack_70;
  undefined8 uStack_68;
  undefined8 uStack_60;
  undefined8 uStack_58;
  undefined4 uStack_4c;
  ulong uStack_48;
  
  puVar3 = PTR_DAT_05e59760;
  uStack_4c = param_1;
  uStack_48 = param_3;
  if ((bRam00000000062609e5 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e718d8);
    func_0x029f5a50(PTR_DAT_05e59760);
    func_0x029f5a50(PTR_DAT_05e5a298);
    func_0x029f5a50(PTR_DAT_05e66730);
    func_0x029f5a50(PTR_DAT_05e58a90);
    func_0x029f5a50(PTR_DAT_05e71980);
    func_0x029f5a50(PTR_DAT_05e719a8);
    bRam00000000062609e5 = 1;
  }
  param_2[1] = 0;
  *param_2 = 0;
  param_2[3] = 0;
  param_2[2] = 0;
  puVar4 = PTR_DAT_05e719a8;
  puVar2 = PTR_DAT_05e58a90;
  if (*(int *)(*(long *)puVar3 + 0xe4) == 0) {
    func_0x029f5bd0();
  }
  uVar9 = CultureInfo_get_InvariantCulture_0x6002ba4(0);
  uVar9 = Single_ToString_0x60009fc(&uStack_4c,*(undefined8 *)puVar4,uVar9,0);
  lVar10 = func_0x029f5b40(*(undefined8 *)puVar2,1);
  plVar11 = (long *)CultureInfo_get_InvariantCulture_0x6002ba4(0);
  if (plVar11 == (long *)0x0) {
LAB_04655ffc:
                    /* WARNING: Subroutine does not return */
    Throw_NullReference_Wrapper();
  }
  lVar12 = (**(code **)(*plVar11 + 0x218))(plVar11,*(undefined8 *)(*plVar11 + 0x220));
  if ((lVar12 == 0) || (lVar10 == 0)) goto LAB_04655ffc;
  if (*(int *)(lVar10 + 0x18) == 0) {
LAB_04656000:
                    /* WARNING: Subroutine does not return */
    Throw_Index_Wrapper();
  }
  *(undefined8 *)(lVar10 + 0x20) = *(undefined8 *)(lVar12 + 0x38);
  Managed_WriteBarrier();
  lVar12 = func_0x029f5b40(*(undefined8 *)puVar2,1);
  plVar11 = (long *)CultureInfo_get_InvariantCulture_0x6002ba4(0);
  if (plVar11 == (long *)0x0) goto LAB_04655ffc;
  lVar13 = (**(code **)(*plVar11 + 0x218))(plVar11,*(undefined8 *)(*plVar11 + 0x220));
  puVar2 = PTR_DAT_05e71980;
  puVar3 = PTR_DAT_05e718d8;
  if ((lVar13 == 0) || (lVar12 == 0)) goto LAB_04655ffc;
  if (*(int *)(lVar12 + 0x18) == 0) goto LAB_04656000;
  *(undefined8 *)(lVar12 + 0x20) = *(undefined8 *)(lVar13 + 0x40);
  Managed_WriteBarrier();
  lVar13 = *(long *)puVar3;
  if (*(int *)(lVar13 + 0xe4) == 0) {
    func_0x029f5bd0();
    lVar13 = *(long *)puVar3;
  }
  uStack_68 = 0;
  uStack_60 = 0;
  uStack_58 = 0;
  func_0x03baabe0(&uStack_68,lVar10,lVar12,*(undefined8 *)(*(long *)(lVar13 + 0xb8) + 8),
                  *(undefined8 *)puVar2);
  uStack_78 = uStack_60;
  uStack_80 = uStack_68;
  uStack_70 = uStack_58;
  InfVal_SetValueFromString_0x60000b8(param_2,uVar9,0,&uStack_80,0);
  puVar4 = PTR_DAT_05e66730;
  if ((param_3 & 0xff) == 0) {
    iVar5 = *(int *)(param_2 + 1);
    iVar7 = InfVal_get_precision_0x6000097(param_2);
    iVar5 = iVar5 + iVar7 + -9;
LAB_04655fdc:
    InfVal_set_exponent_0x6000096(param_2,iVar5);
    return;
  }
  iVar5 = func_0x035f6da8(&uStack_48,*(undefined8 *)PTR_DAT_05e66730);
  if (0 < iVar5) {
    iVar7 = *(int *)(param_2 + 1);
    iVar6 = InfVal_get_precision_0x6000097(param_2);
    iVar5 = func_0x035f6da8(&uStack_48,*(undefined8 *)puVar4);
    iVar5 = (iVar6 + iVar7) - iVar5;
    goto LAB_04655fdc;
  }
  func_0x029f5a64(PTR_DAT_05e65dc8);
  uVar14 = func_0x029f5cec();
  uVar15 = func_0x029f5a64(PTR_DAT_05e71960);
  uVar16 = func_0x029f5a64(PTR_DAT_05e71968);
  ArgumentException__ctor_0x60003e7(uVar14,uVar15,uVar16,0);
  uVar16 = func_0x029f5a64(PTR_DAT_05e719b0);
  puVar17 = (undefined8 *)func_0x029f5bc0(uVar14,uVar16);
  puVar4 = PTR_DAT_05e59760;
  pcStack_c0 = InfVal__ctor_0x6000034;
  puStack_b8 = puVar3;
  puStack_b0 = puVar2;
  uStack_d0 = extraout_d0;
  uStack_c8 = extraout_x1;
  lStack_a8 = lVar12;
  lStack_a0 = lVar10;
  uStack_98 = uVar9;
  uStack_90 = uVar15;
  uStack_88 = uVar14;
  if ((bRam00000000062609e6 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e718d8);
    func_0x029f5a50(PTR_DAT_05e59760);
    func_0x029f5a50(PTR_DAT_05e5a298);
    func_0x029f5a50(PTR_DAT_05e66730);
    func_0x029f5a50(PTR_DAT_05e58a90);
    func_0x029f5a50(PTR_DAT_05e71980);
    func_0x029f5a50(PTR_DAT_05e719b8);
    bRam00000000062609e6 = 1;
  }
  puVar17[1] = 0;
  *puVar17 = 0;
  puVar17[3] = 0;
  puVar17[2] = 0;
  puVar2 = PTR_DAT_05e719b8;
  puVar3 = PTR_DAT_05e58a90;
  if (*(int *)(*(long *)puVar4 + 0xe4) == 0) {
    func_0x029f5bd0();
  }
  uVar9 = CultureInfo_get_InvariantCulture_0x6002ba4(0);
  uVar9 = Double_ToString_0x60006ab(&uStack_d0,*(undefined8 *)puVar2,uVar9,0);
  lVar10 = func_0x029f5b40(*(undefined8 *)puVar3,1);
  plVar11 = (long *)CultureInfo_get_InvariantCulture_0x6002ba4(0);
  if (plVar11 == (long *)0x0) {
LAB_046562c8:
                    /* WARNING: Subroutine does not return */
    Throw_NullReference_Wrapper();
  }
  lVar12 = (**(code **)(*plVar11 + 0x218))(plVar11,*(undefined8 *)(*plVar11 + 0x220));
  if ((lVar12 == 0) || (lVar10 == 0)) goto LAB_046562c8;
  if (*(int *)(lVar10 + 0x18) == 0) {
LAB_046562cc:
                    /* WARNING: Subroutine does not return */
    Throw_Index_Wrapper();
  }
  *(undefined8 *)(lVar10 + 0x20) = *(undefined8 *)(lVar12 + 0x38);
  Managed_WriteBarrier();
  lVar12 = func_0x029f5b40(*(undefined8 *)puVar3,1);
  plVar11 = (long *)CultureInfo_get_InvariantCulture_0x6002ba4(0);
  if (plVar11 == (long *)0x0) goto LAB_046562c8;
  lVar13 = (**(code **)(*plVar11 + 0x218))(plVar11,*(undefined8 *)(*plVar11 + 0x220));
  puVar2 = PTR_DAT_05e71980;
  puVar3 = PTR_DAT_05e718d8;
  if ((lVar13 == 0) || (lVar12 == 0)) goto LAB_046562c8;
  if (*(int *)(lVar12 + 0x18) == 0) goto LAB_046562cc;
  *(undefined8 *)(lVar12 + 0x20) = *(undefined8 *)(lVar13 + 0x40);
  Managed_WriteBarrier();
  lVar13 = *(long *)puVar3;
  if (*(int *)(lVar13 + 0xe4) == 0) {
    func_0x029f5bd0();
    lVar13 = *(long *)puVar3;
  }
  uStack_e8 = 0;
  uStack_e0 = 0;
  uStack_d8 = 0;
  func_0x03baabe0(&uStack_e8,lVar10,lVar12,*(undefined8 *)(*(long *)(lVar13 + 0xb8) + 8),
                  *(undefined8 *)puVar2);
  uStack_f8 = uStack_e0;
  uStack_100 = uStack_e8;
  uStack_f0 = uStack_d8;
  InfVal_SetValueFromString_0x60000b8(puVar17,uVar9,0,&uStack_100,0);
  puVar3 = PTR_DAT_05e66730;
  if ((extraout_x1 & 0xff) == 0) {
    iVar5 = *(int *)(puVar17 + 1);
    iVar7 = InfVal_get_precision_0x6000097(puVar17);
    iVar5 = iVar5 + iVar7 + -0x11;
LAB_046562a8:
    InfVal_set_exponent_0x6000096(puVar17,iVar5);
    return;
  }
  iVar5 = func_0x035f6da8(&uStack_c8,*(undefined8 *)PTR_DAT_05e66730);
  if (0 < iVar5) {
    iVar7 = *(int *)(puVar17 + 1);
    iVar6 = InfVal_get_precision_0x6000097(puVar17);
    iVar5 = func_0x035f6da8(&uStack_c8,*(undefined8 *)puVar3);
    iVar5 = (iVar6 + iVar7) - iVar5;
    goto LAB_046562a8;
  }
  func_0x029f5a64(PTR_DAT_05e65dc8);
  uVar9 = func_0x029f5cec();
  uVar14 = func_0x029f5a64(PTR_DAT_05e71960);
  uVar15 = func_0x029f5a64(PTR_DAT_05e71968);
  uVar20 = 0;
  ArgumentException__ctor_0x60003e7(uVar9,uVar14);
  uVar14 = func_0x029f5a64(PTR_DAT_05e719c0);
  auVar21 = func_0x029f5bc0(uVar9,uVar14);
  puVar3 = PTR_DAT_05e59760;
  uStack_168 = auVar21._8_8_;
  puVar17 = auVar21._0_8_;
  pcStack_150 = InfVal__ctor_0x6000035;
  lVar10 = tpidr_el0;
  lStack_158 = *(long *)(lVar10 + 0x28);
  uStack_170 = uVar20;
  uStack_160 = uVar15;
  if ((bRam00000000062609e7 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e718d8);
    func_0x029f5a50(PTR_DAT_05e59760);
    func_0x029f5a50(PTR_DAT_05e59930);
    func_0x029f5a50(PTR_DAT_05e5a298);
    func_0x029f5a50(PTR_DAT_05e66730);
    func_0x029f5a50(PTR_DAT_05e58a90);
    func_0x029f5a50(PTR_DAT_05e71980);
    bRam00000000062609e7 = 1;
  }
  puVar17[1] = 0;
  *puVar17 = 0;
  puVar17[3] = 0;
  puVar17[2] = 0;
  puVar2 = PTR_DAT_05e59930;
  if (*(int *)(*(long *)puVar3 + 0xe4) == 0) {
    func_0x029f5bd0();
  }
  puVar3 = PTR_DAT_05e58a90;
  uVar9 = CultureInfo_get_InvariantCulture_0x6002ba4(0);
  if (*(int *)(*(long *)puVar2 + 0xe4) == 0) {
    func_0x029f5bd0(*(long *)puVar2);
  }
  uVar18 = Decimal_ToString_0x600110c(&uStack_168,uVar9,0);
  lVar12 = func_0x029f5b40(*(undefined8 *)puVar3,1);
  plVar11 = (long *)CultureInfo_get_InvariantCulture_0x6002ba4(0);
  if (plVar11 != (long *)0x0) {
    lVar13 = (**(code **)(*plVar11 + 0x218))(plVar11,*(undefined8 *)(*plVar11 + 0x220));
    if ((lVar13 != 0) && (lVar12 != 0)) {
      if (*(int *)(lVar12 + 0x18) == 0) {
LAB_046565e0:
        if (*(long *)(lVar10 + 0x28) == lStack_158) {
                    /* WARNING: Subroutine does not return */
          Throw_Index_Wrapper();
        }
        goto LAB_04656660;
      }
      *(undefined8 *)(lVar12 + 0x20) = *(undefined8 *)(lVar13 + 0x38);
      Managed_WriteBarrier();
      lVar13 = func_0x029f5b40(*(undefined8 *)puVar3,1);
      plVar11 = (long *)CultureInfo_get_InvariantCulture_0x6002ba4(0);
      if (plVar11 != (long *)0x0) {
        lVar19 = (**(code **)(*plVar11 + 0x218))(plVar11,*(undefined8 *)(*plVar11 + 0x220));
        puVar2 = PTR_DAT_05e71980;
        puVar3 = PTR_DAT_05e718d8;
        if ((lVar19 != 0) && (lVar13 != 0)) {
          if (*(int *)(lVar13 + 0x18) != 0) {
            *(undefined8 *)(lVar13 + 0x20) = *(undefined8 *)(lVar19 + 0x40);
            Managed_WriteBarrier();
            lVar19 = *(long *)puVar3;
            if (*(int *)(lVar19 + 0xe4) == 0) {
              func_0x029f5bd0();
              lVar19 = *(long *)puVar3;
            }
            uStack_188 = 0;
            uStack_180 = 0;
            uStack_178 = 0;
            func_0x03baabe0(&uStack_188,lVar12,lVar13,*(undefined8 *)(*(long *)(lVar19 + 0xb8) + 8),
                            *(undefined8 *)puVar2);
            uStack_198 = uStack_180;
            uStack_1a0 = uStack_188;
            uStack_190 = uStack_178;
            InfVal_SetValueFromString_0x60000b8(puVar17,uVar18,0,&uStack_1a0,0);
            puVar3 = PTR_DAT_05e66730;
            if ((uVar20 & 0xff) == 0) {
              uVar8 = *(uint *)(puVar17 + 1);
              iVar5 = InfVal_get_precision_0x6000097(puVar17);
              iVar5 = uVar8 + iVar5 + -0x1d;
            }
            else {
              iVar5 = func_0x035f6da8(&uStack_170,*(undefined8 *)PTR_DAT_05e66730);
              if (iVar5 < 1) {
                func_0x029f5a64(PTR_DAT_05e65dc8);
                puVar17 = (undefined8 *)func_0x029f5cec();
                uVar20 = func_0x029f5a64(PTR_DAT_05e71960);
                uVar9 = func_0x029f5a64(PTR_DAT_05e71968);
                ArgumentException__ctor_0x60003e7(puVar17,uVar20,uVar9,0);
                uVar9 = func_0x029f5a64(PTR_DAT_05e719c8);
                if (*(long *)(lVar10 + 0x28) == lStack_158) {
                  func_0x029f5bc0(puVar17,uVar9);
                }
                goto LAB_04656660;
              }
              uVar1 = *(uint *)(puVar17 + 1);
              uVar18 = (ulong)uVar1;
              uVar8 = InfVal_get_precision_0x6000097(puVar17);
              iVar5 = func_0x035f6da8(&uStack_170,*(undefined8 *)puVar3);
              iVar5 = (uVar8 + uVar1) - iVar5;
            }
            uVar20 = (ulong)uVar8;
            InfVal_set_exponent_0x6000096(puVar17,iVar5);
            if (*(long *)(lVar10 + 0x28) == lStack_158) {
              return;
            }
            goto LAB_04656660;
          }
          goto LAB_046565e0;
        }
      }
    }
  }
  if (*(long *)(lVar10 + 0x28) == lStack_158) {
                    /* WARNING: Subroutine does not return */
    Throw_NullReference_Wrapper();
  }
LAB_04656660:
  lVar10 = func_0x05afb240();
  puVar3 = PTR_DAT_05e5a290;
  lStack_1c0 = lVar12;
  uStack_1b8 = uVar18;
  uStack_1b0 = uVar20;
  puStack_1a8 = puVar17;
  if ((bRam00000000062609e8 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e5a290);
    bRam00000000062609e8 = 1;
  }
  uStack_1c8 = 0;
  func_0x035f6d90(&uStack_1c8,*(undefined4 *)(lVar10 + 0x20),*(undefined8 *)puVar3);
  extraout_x8[1] = 0;
  *extraout_x8 = 0;
  extraout_x8[3] = 0;
  extraout_x8[2] = 0;
  InfVal__ctor_0x6000028(extraout_x8,lVar10,uStack_1c8);
  return;
}

