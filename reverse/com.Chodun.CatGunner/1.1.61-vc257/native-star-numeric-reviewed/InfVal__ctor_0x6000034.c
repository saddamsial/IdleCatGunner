/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x4556060, Ghidra VA 04656060. */

void InfVal__ctor_0x6000034(undefined8 param_1,undefined8 *param_2,ulong param_3)

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
  ulong uVar16;
  long lVar17;
  undefined8 *puVar18;
  ulong uVar19;
  undefined8 *extraout_x8;
  undefined1 auVar20 [16];
  undefined8 uStack_148;
  long lStack_140;
  ulong uStack_138;
  ulong uStack_130;
  undefined8 *puStack_128;
  undefined8 uStack_120;
  undefined8 uStack_118;
  undefined8 uStack_110;
  undefined8 uStack_108;
  undefined8 uStack_100;
  undefined8 uStack_f8;
  ulong uStack_f0;
  undefined8 uStack_e8;
  undefined8 uStack_e0;
  long lStack_d8;
  code *pcStack_d0;
  undefined8 uStack_80;
  undefined8 uStack_78;
  undefined8 uStack_70;
  undefined8 uStack_68;
  undefined8 uStack_60;
  undefined8 uStack_58;
  undefined8 uStack_50;
  ulong uStack_48;
  
  puVar3 = PTR_DAT_05e59760;
  uStack_50 = param_1;
  uStack_48 = param_3;
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
  param_2[1] = 0;
  *param_2 = 0;
  param_2[3] = 0;
  param_2[2] = 0;
  puVar4 = PTR_DAT_05e719b8;
  puVar2 = PTR_DAT_05e58a90;
  if (*(int *)(*(long *)puVar3 + 0xe4) == 0) {
    func_0x029f5bd0();
  }
  uVar9 = CultureInfo_get_InvariantCulture_0x6002ba4(0);
  uVar9 = Double_ToString_0x60006ab(&uStack_50,*(undefined8 *)puVar4,uVar9,0);
  lVar10 = func_0x029f5b40(*(undefined8 *)puVar2,1);
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
  lVar12 = func_0x029f5b40(*(undefined8 *)puVar2,1);
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
  uStack_68 = 0;
  uStack_60 = 0;
  uStack_58 = 0;
  func_0x03baabe0(&uStack_68,lVar10,lVar12,*(undefined8 *)(*(long *)(lVar13 + 0xb8) + 8),
                  *(undefined8 *)puVar2);
  uStack_78 = uStack_60;
  uStack_80 = uStack_68;
  uStack_70 = uStack_58;
  InfVal_SetValueFromString_0x60000b8(param_2,uVar9,0,&uStack_80,0);
  puVar3 = PTR_DAT_05e66730;
  if ((param_3 & 0xff) == 0) {
    iVar5 = *(int *)(param_2 + 1);
    iVar7 = InfVal_get_precision_0x6000097(param_2);
    iVar5 = iVar5 + iVar7 + -0x11;
LAB_046562a8:
    InfVal_set_exponent_0x6000096(param_2,iVar5);
    return;
  }
  iVar5 = func_0x035f6da8(&uStack_48,*(undefined8 *)PTR_DAT_05e66730);
  if (0 < iVar5) {
    iVar7 = *(int *)(param_2 + 1);
    iVar6 = InfVal_get_precision_0x6000097(param_2);
    iVar5 = func_0x035f6da8(&uStack_48,*(undefined8 *)puVar3);
    iVar5 = (iVar6 + iVar7) - iVar5;
    goto LAB_046562a8;
  }
  func_0x029f5a64(PTR_DAT_05e65dc8);
  uVar9 = func_0x029f5cec();
  uVar14 = func_0x029f5a64(PTR_DAT_05e71960);
  uVar15 = func_0x029f5a64(PTR_DAT_05e71968);
  uVar19 = 0;
  ArgumentException__ctor_0x60003e7(uVar9,uVar14);
  uVar14 = func_0x029f5a64(PTR_DAT_05e719c0);
  auVar20 = func_0x029f5bc0(uVar9,uVar14);
  puVar3 = PTR_DAT_05e59760;
  uStack_e8 = auVar20._8_8_;
  puVar18 = auVar20._0_8_;
  pcStack_d0 = InfVal__ctor_0x6000035;
  lVar10 = tpidr_el0;
  lStack_d8 = *(long *)(lVar10 + 0x28);
  uStack_f0 = uVar19;
  uStack_e0 = uVar15;
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
  puVar18[1] = 0;
  *puVar18 = 0;
  puVar18[3] = 0;
  puVar18[2] = 0;
  puVar2 = PTR_DAT_05e59930;
  if (*(int *)(*(long *)puVar3 + 0xe4) == 0) {
    func_0x029f5bd0();
  }
  puVar3 = PTR_DAT_05e58a90;
  uVar9 = CultureInfo_get_InvariantCulture_0x6002ba4(0);
  if (*(int *)(*(long *)puVar2 + 0xe4) == 0) {
    func_0x029f5bd0(*(long *)puVar2);
  }
  uVar16 = Decimal_ToString_0x600110c(&uStack_e8,uVar9,0);
  lVar12 = func_0x029f5b40(*(undefined8 *)puVar3,1);
  plVar11 = (long *)CultureInfo_get_InvariantCulture_0x6002ba4(0);
  if (plVar11 != (long *)0x0) {
    lVar13 = (**(code **)(*plVar11 + 0x218))(plVar11,*(undefined8 *)(*plVar11 + 0x220));
    if ((lVar13 != 0) && (lVar12 != 0)) {
      if (*(int *)(lVar12 + 0x18) == 0) {
LAB_046565e0:
        if (*(long *)(lVar10 + 0x28) == lStack_d8) {
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
        lVar17 = (**(code **)(*plVar11 + 0x218))(plVar11,*(undefined8 *)(*plVar11 + 0x220));
        puVar2 = PTR_DAT_05e71980;
        puVar3 = PTR_DAT_05e718d8;
        if ((lVar17 != 0) && (lVar13 != 0)) {
          if (*(int *)(lVar13 + 0x18) != 0) {
            *(undefined8 *)(lVar13 + 0x20) = *(undefined8 *)(lVar17 + 0x40);
            Managed_WriteBarrier();
            lVar17 = *(long *)puVar3;
            if (*(int *)(lVar17 + 0xe4) == 0) {
              func_0x029f5bd0();
              lVar17 = *(long *)puVar3;
            }
            uStack_108 = 0;
            uStack_100 = 0;
            uStack_f8 = 0;
            func_0x03baabe0(&uStack_108,lVar12,lVar13,*(undefined8 *)(*(long *)(lVar17 + 0xb8) + 8),
                            *(undefined8 *)puVar2);
            uStack_118 = uStack_100;
            uStack_120 = uStack_108;
            uStack_110 = uStack_f8;
            InfVal_SetValueFromString_0x60000b8(puVar18,uVar16,0,&uStack_120,0);
            puVar3 = PTR_DAT_05e66730;
            if ((uVar19 & 0xff) == 0) {
              uVar8 = *(uint *)(puVar18 + 1);
              iVar5 = InfVal_get_precision_0x6000097(puVar18);
              iVar5 = uVar8 + iVar5 + -0x1d;
            }
            else {
              iVar5 = func_0x035f6da8(&uStack_f0,*(undefined8 *)PTR_DAT_05e66730);
              if (iVar5 < 1) {
                func_0x029f5a64(PTR_DAT_05e65dc8);
                puVar18 = (undefined8 *)func_0x029f5cec();
                uVar19 = func_0x029f5a64(PTR_DAT_05e71960);
                uVar9 = func_0x029f5a64(PTR_DAT_05e71968);
                ArgumentException__ctor_0x60003e7(puVar18,uVar19,uVar9,0);
                uVar9 = func_0x029f5a64(PTR_DAT_05e719c8);
                if (*(long *)(lVar10 + 0x28) == lStack_d8) {
                  func_0x029f5bc0(puVar18,uVar9);
                }
                goto LAB_04656660;
              }
              uVar1 = *(uint *)(puVar18 + 1);
              uVar16 = (ulong)uVar1;
              uVar8 = InfVal_get_precision_0x6000097(puVar18);
              iVar5 = func_0x035f6da8(&uStack_f0,*(undefined8 *)puVar3);
              iVar5 = (uVar8 + uVar1) - iVar5;
            }
            uVar19 = (ulong)uVar8;
            InfVal_set_exponent_0x6000096(puVar18,iVar5);
            if (*(long *)(lVar10 + 0x28) == lStack_d8) {
              return;
            }
            goto LAB_04656660;
          }
          goto LAB_046565e0;
        }
      }
    }
  }
  if (*(long *)(lVar10 + 0x28) == lStack_d8) {
                    /* WARNING: Subroutine does not return */
    Throw_NullReference_Wrapper();
  }
LAB_04656660:
  lVar10 = func_0x05afb240();
  puVar3 = PTR_DAT_05e5a290;
  lStack_140 = lVar12;
  uStack_138 = uVar16;
  uStack_130 = uVar19;
  puStack_128 = puVar18;
  if ((bRam00000000062609e8 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e5a290);
    bRam00000000062609e8 = 1;
  }
  uStack_148 = 0;
  func_0x035f6d90(&uStack_148,*(undefined4 *)(lVar10 + 0x20),*(undefined8 *)puVar3);
  extraout_x8[1] = 0;
  *extraout_x8 = 0;
  extraout_x8[3] = 0;
  extraout_x8[2] = 0;
  InfVal__ctor_0x6000028(extraout_x8,lVar10,uStack_148);
  return;
}

