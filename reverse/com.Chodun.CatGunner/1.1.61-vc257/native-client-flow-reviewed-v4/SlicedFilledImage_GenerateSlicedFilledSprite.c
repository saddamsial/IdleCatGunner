/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b28af0, Ghidra VA 02c28af0. */

/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */

void SlicedFilledImage_GenerateSlicedFilledSprite
               (undefined1 param_1 [16],undefined1 param_2 [16],float param_3,float param_4,
               long param_5,long param_6)

{
  ulong uVar1;
  int iVar2;
  undefined *puVar3;
  undefined8 uVar4;
  ulong uVar5;
  long lVar6;
  long lVar7;
  long lVar8;
  long lVar9;
  ulong uVar10;
  ulong uVar11;
  ulong uVar12;
  float fVar13;
  undefined4 uVar14;
  float fVar15;
  undefined4 uVar16;
  float fVar17;
  float fVar18;
  undefined4 uVar19;
  float fVar20;
  double dVar21;
  float fVar22;
  float fVar23;
  float fVar24;
  float fVar25;
  float fVar26;
  float fVar27;
  float fVar28;
  float fVar29;
  float fVar30;
  float fVar31;
  float fVar32;
  double dVar33;
  float fVar34;
  double dVar35;
  double dStack_58;
  
  if ((bRam000000000625bfd1 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e62d98);
    bRam000000000625bfd1 = 1;
  }
  if (param_6 == 0) {
LAB_02c29350:
                    /* WARNING: Subroutine does not return */
    Throw_NullReference_Wrapper();
  }
  VertexHelper_Clear_0x600051e(param_6,0);
  if (*(float *)(param_5 + 0xe4) < _UNK_0116c268) {
    return;
  }
  fVar22 = _UNK_0116c268;
  fVar13 = (float)Graphic_GetPixelAdjustedRect_0x6000114(param_5,0);
  fVar29 = param_4;
  fVar26 = param_3;
  fVar23 = fVar22;
  uVar4 = SlicedFilledImage_get_activeSprite_0x60005d8(param_5);
  uVar14 = DataUtility_GetOuterUV_0x60016c3(uVar4,0);
  fVar24 = fVar23;
  fVar27 = fVar26;
  fVar30 = fVar29;
  uVar4 = SlicedFilledImage_get_activeSprite_0x60005d8(param_5);
  fVar15 = (float)DataUtility_GetPadding_0x60016c4(uVar4,0);
  fVar20 = fVar27;
  fVar32 = fVar30;
  fVar34 = fVar24;
  uVar5 = SlicedFilledImage_get_hasBorder_0x60005da(param_5);
  lVar6 = SlicedFilledImage_get_activeSprite_0x60005d8(param_5);
  if ((uVar5 & 1) != 0) {
    uVar16 = DataUtility_GetInnerUV_0x60016c2(lVar6,0);
    fVar25 = fVar34;
    fVar28 = fVar20;
    fVar31 = fVar32;
    lVar6 = SlicedFilledImage_get_activeSprite_0x60005d8(param_5);
    if (lVar6 != 0) {
      fVar17 = (float)Sprite_get_border_0x60001b4(lVar6,0);
      fVar18 = (float)SlicedFilledImage_get_pixelsPerUnit_0x60005d5(param_5);
      fVar25 = fVar25 / fVar18;
      fVar28 = fVar28 / fVar18;
      fVar31 = fVar31 / fVar18;
      uVar19 = SlicedFilledImage_GetAdjustedBorders(fVar17 / fVar18,param_5);
      fVar17 = (float)SlicedFilledImage_get_pixelsPerUnit_0x60005d5(param_5);
      puVar3 = PTR_DAT_05e62d98;
      lVar6 = *(long *)PTR_DAT_05e62d98;
      if (*(int *)(lVar6 + 0xe4) == 0) {
        func_0x029f5bd0();
        lVar6 = *(long *)puVar3;
      }
      lVar6 = *(long *)(*(long *)(lVar6 + 0xb8) + 0x10);
      if (lVar6 != 0) {
        if (*(int *)(lVar6 + 0x18) != 0) {
          *(float *)(lVar6 + 0x20) = fVar15 / fVar17;
          *(float *)(lVar6 + 0x24) = fVar24 / fVar17;
          lVar6 = *(long *)(*(long *)(*(long *)puVar3 + 0xb8) + 0x10);
          if (lVar6 == 0) goto LAB_02c29350;
          if ((*(uint *)(lVar6 + 0x18) & 0xfffffffc) != 0) {
            *(float *)(lVar6 + 0x38) = param_3 - fVar27 / fVar17;
            *(float *)(lVar6 + 0x3c) = param_4 - fVar30 / fVar17;
            lVar6 = *(long *)puVar3;
            lVar7 = *(long *)(*(long *)(lVar6 + 0xb8) + 0x10);
            if (lVar7 == 0) goto LAB_02c29350;
            if (1 < *(uint *)(lVar7 + 0x18)) {
              *(undefined4 *)(lVar7 + 0x28) = uVar19;
              *(float *)(lVar7 + 0x2c) = fVar25;
              if (*(uint *)(lVar7 + 0x18) != 2) {
                uVar5 = 0;
                *(float *)(lVar7 + 0x30) = param_3 - fVar28;
                *(float *)(lVar7 + 0x34) = param_4 - fVar31;
                do {
                  if (*(int *)(lVar6 + 0xe4) == 0) {
                    func_0x029f5bd0();
                    lVar6 = *(long *)puVar3;
                  }
                  lVar8 = *(long *)(lVar6 + 0xb8);
                  lVar7 = *(long *)(lVar8 + 0x10);
                  if (lVar7 == 0) goto LAB_02c29350;
                  if (*(uint *)(lVar7 + 0x18) <= uVar5) goto LAB_02c2934c;
                  lVar7 = lVar7 + uVar5 * 8;
                  uVar5 = uVar5 + 1;
                  uVar4 = *(undefined8 *)(lVar7 + 0x20);
                  *(ulong *)(lVar7 + 0x20) =
                       CONCAT44(fVar22 + (float)((ulong)uVar4 >> 0x20),fVar13 + (float)uVar4);
                } while (uVar5 != 4);
                if (*(int *)(lVar6 + 0xe4) == 0) {
                  func_0x029f5bd0();
                  lVar8 = *(long *)(*(long *)puVar3 + 0xb8);
                }
                lVar6 = *(long *)(lVar8 + 0x18);
                if (lVar6 != 0) {
                  if (*(int *)(lVar6 + 0x18) == 0) goto LAB_02c2934c;
                  *(undefined4 *)(lVar6 + 0x20) = uVar14;
                  *(float *)(lVar6 + 0x24) = fVar23;
                  lVar6 = *(long *)(*(long *)(*(long *)puVar3 + 0xb8) + 0x18);
                  if (lVar6 != 0) {
                    if ((*(uint *)(lVar6 + 0x18) & 0xfffffffe) == 0) goto LAB_02c2934c;
                    *(undefined4 *)(lVar6 + 0x28) = uVar16;
                    *(float *)(lVar6 + 0x2c) = fVar34;
                    lVar6 = *(long *)(*(long *)(*(long *)puVar3 + 0xb8) + 0x18);
                    if (lVar6 != 0) {
                      if (*(uint *)(lVar6 + 0x18) < 3) goto LAB_02c2934c;
                      *(float *)(lVar6 + 0x30) = fVar20;
                      *(float *)(lVar6 + 0x34) = fVar32;
                      lVar6 = *(long *)(*(long *)(*(long *)puVar3 + 0xb8) + 0x18);
                      if (lVar6 != 0) {
                        if ((*(uint *)(lVar6 + 0x18) & 0xfffffffc) == 0) goto LAB_02c2934c;
                        *(float *)(lVar6 + 0x38) = fVar26;
                        *(float *)(lVar6 + 0x3c) = fVar29;
                        lVar6 = *(long *)puVar3;
                        if (*(uint *)(param_5 + 0xe0) < 2) {
                          if (*(int *)(lVar6 + 0xe4) == 0) {
                            func_0x029f5bd0();
                            lVar6 = *(long *)puVar3;
                          }
                          lVar6 = *(long *)(*(long *)(lVar6 + 0xb8) + 0x10);
                          if (lVar6 != 0) {
                            if ((*(uint *)(lVar6 + 0x18) != 0) && (3 < *(uint *)(lVar6 + 0x18))) {
                              fVar32 = *(float *)(lVar6 + 0x20);
                              fVar20 = *(float *)(lVar6 + 0x38);
LAB_02c28f28:
                              fVar34 = 1.0;
                              if (0.0 < fVar20 - fVar32) {
                                fVar34 = 1.0 / (fVar20 - fVar32);
                              }
                              uVar5 = 0;
                              do {
                                uVar1 = uVar5 + 1;
                                lVar6 = uVar5 * 8;
                                lVar7 = uVar1 * 8;
                                uVar12 = 0;
                                do {
                                  if (((uVar12 == 1) && (uVar5 == 1)) &&
                                     (*(char *)(param_5 + 0xe8) == '\0')) {
                                    uVar11 = 2;
                                  }
                                  else {
                                    iVar2 = *(int *)(param_5 + 0xe0);
                                    uVar11 = uVar12 + 1;
                                    if (iVar2 < 2) {
                                      if (iVar2 == 0) {
                                        lVar8 = *(long *)puVar3;
                                        if (*(int *)(lVar8 + 0xe4) == 0) {
                                          func_0x029f5bd0();
                                          lVar8 = *(long *)puVar3;
                                        }
                                        lVar8 = *(long *)(*(long *)(lVar8 + 0xb8) + 0x10);
                                        if (lVar8 == 0) goto LAB_02c29350;
                                        if ((*(uint *)(lVar8 + 0x18) <= uVar5) ||
                                           (*(uint *)(lVar8 + 0x18) <= uVar1)) goto LAB_02c2934c;
                                        fVar20 = *(float *)(lVar8 + 0x20 + lVar6);
LAB_02c290d4:
                                        fVar20 = fVar34 * (fVar20 - fVar32);
                                      }
                                      else {
                                        fVar20 = 0.0;
                                        if (iVar2 == 1) {
                                          lVar8 = *(long *)puVar3;
                                          if (*(int *)(lVar8 + 0xe4) == 0) {
                                            func_0x029f5bd0();
                                            lVar8 = *(long *)puVar3;
                                          }
                                          lVar8 = *(long *)(*(long *)(lVar8 + 0xb8) + 0x10);
                                          if (lVar8 == 0) goto LAB_02c29350;
                                          if (*(uint *)(lVar8 + 0x18) <= uVar1) goto LAB_02c2934c;
                                          fVar20 = *(float *)(lVar8 + 0x20 + lVar7);
LAB_02c2902c:
                                          fVar20 = 1.0 - fVar34 * (fVar20 - fVar32);
                                        }
                                      }
                                    }
                                    else {
                                      if (iVar2 == 2) {
                                        lVar8 = *(long *)puVar3;
                                        if (*(int *)(lVar8 + 0xe4) == 0) {
                                          func_0x029f5bd0();
                                          lVar8 = *(long *)puVar3;
                                        }
                                        lVar8 = *(long *)(*(long *)(lVar8 + 0xb8) + 0x10);
                                        if (lVar8 != 0) {
                                          if ((uVar12 < *(uint *)(lVar8 + 0x18)) &&
                                             (uVar11 < *(uint *)(lVar8 + 0x18))) {
                                            fVar20 = *(float *)(lVar8 + uVar12 * 8 + 0x24);
                                            goto LAB_02c290d4;
                                          }
                                          goto LAB_02c2934c;
                                        }
                                        goto LAB_02c29350;
                                      }
                                      fVar20 = 0.0;
                                      if (iVar2 == 3) {
                                        lVar8 = *(long *)puVar3;
                                        if (*(int *)(lVar8 + 0xe4) == 0) {
                                          func_0x029f5bd0();
                                          lVar8 = *(long *)puVar3;
                                        }
                                        lVar8 = *(long *)(*(long *)(lVar8 + 0xb8) + 0x10);
                                        if (lVar8 != 0) {
                                          if (uVar11 < *(uint *)(lVar8 + 0x18)) {
                                            fVar20 = *(float *)(lVar8 + uVar11 * 8 + 0x24);
                                            goto LAB_02c2902c;
                                          }
                                          goto LAB_02c2934c;
                                        }
                                        goto LAB_02c29350;
                                      }
                                    }
                                    if (fVar20 < *(float *)(param_5 + 0xe4)) {
                                      lVar8 = *(long *)puVar3;
                                      if (*(int *)(lVar8 + 0xe4) == 0) {
                                        func_0x029f5bd0();
                                        lVar8 = *(long *)puVar3;
                                      }
                                      lVar9 = *(long *)(*(long *)(lVar8 + 0xb8) + 0x10);
                                      if (lVar9 == 0) goto LAB_02c29350;
                                      uVar10 = (ulong)*(uint *)(lVar9 + 0x18);
                                      if ((((uVar10 <= uVar5) || (uVar10 <= uVar12)) ||
                                          (uVar10 <= uVar1)) || (uVar10 <= uVar11))
                                      goto LAB_02c2934c;
                                      lVar8 = *(long *)(*(long *)(lVar8 + 0xb8) + 0x18);
                                      if (lVar8 == 0) goto LAB_02c29350;
                                      uVar10 = (ulong)*(uint *)(lVar8 + 0x18);
                                      if (((uVar10 <= uVar5) || (uVar10 <= uVar12)) ||
                                         ((uVar10 <= uVar1 || (uVar10 <= uVar11))))
                                      goto LAB_02c2934c;
                                      lVar9 = lVar9 + 0x20;
                                      lVar8 = lVar8 + 0x20;
                                      SlicedFilledImage_GenerateFilledSprite
                                                (*(undefined4 *)(lVar9 + lVar6),
                                                 *(undefined4 *)(lVar9 + uVar12 * 8 + 4),
                                                 *(undefined4 *)(lVar9 + lVar7),
                                                 *(undefined4 *)(lVar9 + uVar11 * 8 + 4),
                                                 *(undefined4 *)(lVar8 + lVar6),
                                                 *(undefined4 *)(lVar8 + uVar12 * 8 + 4),
                                                 *(undefined4 *)(lVar8 + lVar7),
                                                 *(undefined4 *)(lVar8 + uVar11 * 8 + 4),param_5,
                                                 param_6);
                                    }
                                  }
                                  uVar12 = uVar11;
                                } while (uVar11 != 3);
                                uVar5 = uVar1;
                                if (uVar1 == 3) {
                                  return;
                                }
                              } while( true );
                            }
                            goto LAB_02c2934c;
                          }
                        }
                        else {
                          if (*(int *)(lVar6 + 0xe4) == 0) {
                            func_0x029f5bd0();
                            lVar6 = *(long *)puVar3;
                          }
                          lVar6 = *(long *)(*(long *)(lVar6 + 0xb8) + 0x10);
                          if (lVar6 != 0) {
                            if ((*(uint *)(lVar6 + 0x18) != 0) && (3 < *(uint *)(lVar6 + 0x18))) {
                              fVar32 = *(float *)(lVar6 + 0x24);
                              fVar20 = *(float *)(lVar6 + 0x3c);
                              goto LAB_02c28f28;
                            }
                            goto LAB_02c2934c;
                          }
                        }
                      }
                    }
                  }
                }
                goto LAB_02c29350;
              }
            }
          }
        }
LAB_02c2934c:
                    /* WARNING: Subroutine does not return */
        Throw_Index_Wrapper();
      }
    }
    goto LAB_02c29350;
  }
  if (lVar6 == 0) goto LAB_02c29350;
  Sprite_get_rect_0x60001b3(lVar6,0);
  if (cRam000000000625b95a == '\0') {
    func_0x029f5a50(PTR_DAT_05e59000);
    cRam000000000625b95a = '\x01';
  }
  puVar3 = PTR_DAT_05e59000;
  if (*(int *)(*(long *)PTR_DAT_05e59000 + 0xe4) == 0) {
    func_0x029f5bd0();
  }
  dVar35 = (double)fVar20;
  dVar21 = (double)func_0x05afb230(dVar35,&dStack_58);
  if (0.0 <= fVar20) {
    if (dVar21 == 0.5) {
      dVar21 = 1.0;
      goto LAB_02c28ee4;
    }
    dVar35 = (double)(long)(dVar35 + 0.5);
  }
  else if (dVar21 == -0.5) {
    dVar21 = -1.0;
LAB_02c28ee4:
    dVar35 = dStack_58;
    if (((long)dStack_58 & 1U) != 0) {
      dVar35 = dStack_58 + dVar21;
    }
  }
  else {
    dVar35 = (double)(long)(dVar35 + -0.5);
  }
  if (cRam000000000625b95a == '\0') {
    func_0x029f5a50(PTR_DAT_05e59000);
    cRam000000000625b95a = '\x01';
  }
  if (*(int *)(*(long *)puVar3 + 0xe4) == 0) {
    func_0x029f5bd0();
  }
  dVar33 = (double)fVar32;
  dVar21 = (double)func_0x05afb230(dVar33,&dStack_58);
  if (0.0 <= fVar32) {
    if (dVar21 != 0.5) {
      dStack_58 = (double)(long)(dVar33 + 0.5);
      goto LAB_02c29298;
    }
    dVar21 = 1.0;
  }
  else {
    if (dVar21 != -0.5) {
      dStack_58 = (double)(long)(dVar33 + -0.5);
      goto LAB_02c29298;
    }
    dVar21 = -1.0;
  }
  if (((long)dStack_58 & 1U) != 0) {
    dStack_58 = dStack_58 + dVar21;
  }
LAB_02c29298:
  fVar20 = -2.1474836e+09;
  if (dVar35 != INFINITY) {
    fVar20 = (float)(int)dVar35;
  }
  fVar32 = -2.1474836e+09;
  if (dStack_58 != INFINITY) {
    fVar32 = (float)(int)dStack_58;
  }
  SlicedFilledImage_GenerateFilledSprite
            (fVar13 + param_3 * (fVar15 / fVar20),fVar22 + param_4 * (fVar24 / fVar32),
             fVar13 + param_3 * ((fVar20 - fVar27) / fVar20),
             fVar22 + param_4 * ((fVar32 - fVar30) / fVar32),uVar14,fVar23,fVar26,fVar29,param_5,
             param_6);
  return;
}

