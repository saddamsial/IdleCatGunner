/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2a75c54, Ghidra VA 02b75c54. */

void DOTweenAnimation_CreateTween
               (undefined1 param_1 [16],undefined4 param_2,undefined4 param_3,long param_4,
               ulong param_5,ulong param_6)

{
  undefined1 uVar1;
  undefined1 uVar2;
  byte bVar3;
  undefined *puVar4;
  int iVar5;
  long lVar6;
  ulong uVar7;
  undefined8 uVar8;
  long *plVar9;
  undefined8 *puVar10;
  long *plVar11;
  long extraout_x8;
  long *plVar12;
  undefined8 uVar13;
  long lVar14;
  undefined8 uVar15;
  undefined4 uVar16;
  undefined4 uVar17;
  undefined4 uVar18;
  undefined4 uVar19;
  undefined4 uVar20;
  undefined4 uVar21;
  undefined4 uVar22;
  
  if ((bRam000000000625b84d & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e5d030);
    func_0x029f5a50(PTR_DAT_05e5d038);
    func_0x029f5a50(PTR_DAT_05e5d040);
    func_0x029f5a50(PTR_DAT_05e58f08);
    func_0x029f5a50(PTR_DAT_05e5d048);
    func_0x029f5a50(PTR_DAT_05e5d050);
    func_0x029f5a50(PTR_DAT_05e5d058);
    func_0x029f5a50(PTR_DAT_05e591c0);
    func_0x029f5a50(PTR_DAT_05e5bfa8);
    func_0x029f5a50(PTR_DAT_05e5d060);
    func_0x029f5a50(PTR_DAT_05e5d068);
    func_0x029f5a50(PTR_DAT_05e5d008);
    func_0x029f5a50(PTR_DAT_05e5d070);
    func_0x029f5a50(PTR_DAT_05e5d078);
    func_0x029f5a50(PTR_DAT_05e5b368);
    func_0x029f5a50(PTR_DAT_05e5c860);
    func_0x029f5a50(PTR_DAT_05e5d080);
    func_0x029f5a50(PTR_DAT_05e5d088);
    func_0x029f5a50(PTR_DAT_05e5d090);
    func_0x029f5a50(PTR_DAT_05e5d098);
    func_0x029f5a50(PTR_DAT_05e5d0a0);
    func_0x029f5a50(PTR_DAT_05e5d0a8);
    func_0x029f5a50(PTR_DAT_05e5d0b0);
    func_0x029f5a50(PTR_DAT_05e5d0b8);
    func_0x029f5a50(PTR_DAT_05e5d0c0);
    func_0x029f5a50(PTR_DAT_05e5c870);
    func_0x029f5a50(PTR_DAT_05e5d0c8);
    func_0x029f5a50(PTR_DAT_05e5d0d0);
    func_0x029f5a50(PTR_DAT_05e5d0d8);
    func_0x029f5a50(PTR_DAT_05e5d0e0);
    func_0x029f5a50(PTR_DAT_05e5d0e8);
    func_0x029f5a50(PTR_DAT_05e5d0f0);
    func_0x029f5a50(PTR_DAT_05e5d0f8);
    func_0x029f5a50(PTR_DAT_05e5d100);
    func_0x029f5a50(PTR_DAT_05e5d108);
    func_0x029f5a50(PTR_DAT_05e5d110);
    func_0x029f5a50(PTR_DAT_05e5d118);
    func_0x029f5a50(PTR_DAT_05e5d120);
    func_0x029f5a50(PTR_DAT_05e5d128);
    func_0x029f5a50(PTR_DAT_05e5d130);
    func_0x029f5a50(PTR_DAT_05e5d138);
    func_0x029f5a50(PTR_DAT_05e5d140);
    func_0x029f5a50(PTR_DAT_05e5d148);
    func_0x029f5a50(PTR_DAT_05e5d150);
    bRam000000000625b84d = 1;
  }
  if (*(char *)(param_4 + 0xae) == '\0') {
    if ((param_5 & 1) == 0) {
      return;
    }
    lVar6 = Component_get_gameObject_0x6000c83(param_4,0);
    if (lVar6 != 0) {
      uVar13 = Object_get_name_0x6000daa(lVar6,0);
      puVar10 = (undefined8 *)PTR_DAT_05e5d138;
      goto LAB_02b75fec;
    }
    goto LAB_02b77144;
  }
  plVar12 = (long *)(param_4 + 0x68);
  lVar6 = *plVar12;
  if (lVar6 != 0) {
    if (*(char *)(lVar6 + 0xe8) != '\0') {
      if ((param_5 & 1) == 0) {
        return;
      }
      TweenExtensions_Kill_0x60000a6(lVar6,0,0);
    }
    *plVar12 = 0;
    Managed_WriteBarrier(plVar12,0);
  }
  puVar4 = PTR_DAT_05e591c0;
  if (*(char *)(param_4 + 0x70) == '\0') {
    lVar6 = *(long *)(param_4 + 0x78);
  }
  else {
    lVar6 = Component_get_gameObject_0x6000c83(param_4,0);
  }
  uVar13 = *(undefined8 *)(param_4 + 0xb0);
  if (*(int *)(*(long *)puVar4 + 0xe4) == 0) {
    func_0x029f5bd0();
  }
  uVar7 = Object_op_Equality_0x6000dec(uVar13,0,0);
  if ((uVar7 & 1) != 0) {
LAB_02b75f78:
    if (*(char *)(param_4 + 0x70) != '\0') {
      uVar13 = *(undefined8 *)(param_4 + 0xb0);
      if (*(int *)(*(long *)puVar4 + 0xe4) == 0) {
        func_0x029f5bd0();
      }
      uVar7 = Object_op_Equality_0x6000dec(uVar13,0,0);
      if ((uVar7 & 1) != 0) {
        lVar6 = Component_get_gameObject_0x6000c83(param_4,0);
        if (lVar6 != 0) {
          uVar13 = Object_get_name_0x6000daa(lVar6,0);
          puVar10 = (undefined8 *)PTR_DAT_05e5d140;
          goto LAB_02b75fec;
        }
        goto LAB_02b77144;
      }
    }
    lVar6 = Component_get_gameObject_0x6000c83(param_4,0);
    if (lVar6 != 0) {
      uVar13 = Object_get_name_0x6000daa(lVar6,0);
      puVar10 = (undefined8 *)PTR_DAT_05e5d130;
LAB_02b75fec:
      uVar13 = String_Format_0x600029c(*puVar10,uVar13,0);
      uVar8 = Component_get_gameObject_0x6000c83(param_4,0);
      if (*(int *)(*(long *)PTR_DAT_05e58f08 + 0xe4) == 0) {
        func_0x029f5bd0(*(long *)PTR_DAT_05e58f08);
      }
      Debug_LogWarning_0x6000347(uVar13,uVar8,0);
      return;
    }
LAB_02b77144:
                    /* WARNING: Subroutine does not return */
    Throw_NullReference_Wrapper();
  }
  if (*(int *)(*(long *)puVar4 + 0xe4) == 0) {
    func_0x029f5bd0();
  }
  uVar7 = Object_op_Equality_0x6000dec(lVar6,0,0);
  if ((uVar7 & 1) != 0) goto LAB_02b75f78;
  iVar5 = *(int *)(param_4 + 0xc0);
  if (iVar5 == 0) {
    iVar5 = *(int *)(param_4 + 0xbc);
    if (iVar5 == 0) {
      if (*(long *)(param_4 + 0xb0) == 0) goto LAB_02b77144;
      Object_GetType_0x6001011(*(long *)(param_4 + 0xb0),0);
      iVar5 = DOTweenAnimation_TypeToDOTargetType_0x600017a();
      goto LAB_02b76064;
    }
  }
  else {
LAB_02b76064:
    *(int *)(param_4 + 0xbc) = iVar5;
  }
  switch(*(undefined4 *)(param_4 + 0xb8)) {
  case 1:
    if (*(char *)(param_4 + 0xc5) != '\0') {
      lVar6 = *(long *)puVar4;
      uVar13 = *(undefined8 *)(param_4 + 0x108);
      *(undefined1 *)(param_4 + 0xa8) = 0;
      if (*(int *)(lVar6 + 0xe4) == 0) {
        func_0x029f5bd0();
      }
      uVar7 = Object_op_Equality_0x6000dec(uVar13,0,0);
      if ((uVar7 & 1) == 0) {
        plVar9 = *(long **)(param_4 + 0x108);
        if (*(int *)(param_4 + 0xbc) == 5) {
          if (plVar9 == (long *)0x0) {
            plVar9 = (long *)0x0;
          }
          else if (*plVar9 != *(long *)PTR_DAT_05e5bfa8) {
            plVar9 = (long *)0x0;
          }
          if (*(int *)(*(long *)puVar4 + 0xe4) == 0) {
            func_0x029f5bd0();
          }
          uVar7 = Object_op_Equality_0x6000dec(plVar9,0,0);
          if ((uVar7 & 1) == 0) {
            plVar11 = *(long **)(param_4 + 0xb0);
            if (plVar11 == (long *)0x0) {
              plVar11 = (long *)0x0;
            }
            else if (*plVar11 != *(long *)PTR_DAT_05e5bfa8) {
              plVar11 = (long *)0x0;
            }
            if (*(int *)(*(long *)puVar4 + 0xe4) == 0) {
              func_0x029f5bd0();
            }
            uVar7 = Object_op_Equality_0x6000dec(plVar11,0,0);
            if ((uVar7 & 1) == 0) {
              uVar17 = Utils_SwitchToRectTransform_0x600009d(plVar9,plVar11);
              *(undefined4 *)(param_4 + 0xd4) = 0;
              *(undefined4 *)(param_4 + 0xcc) = uVar17;
              *(undefined4 *)(param_4 + 0xd0) = param_2;
            }
            else {
              lVar6 = Component_get_gameObject_0x6000c83(param_4,0);
              if (lVar6 == 0) goto LAB_02b77144;
              uVar13 = Object_get_name_0x6000daa(lVar6,0);
              uVar13 = String_Format_0x600029c(*(undefined8 *)PTR_DAT_05e5d150,uVar13,0);
              uVar8 = Component_get_gameObject_0x6000c83(param_4,0);
              if (*(int *)(*(long *)PTR_DAT_05e58f08 + 0xe4) == 0) {
                func_0x029f5bd0(*(long *)PTR_DAT_05e58f08);
              }
              Debug_LogWarning_0x6000347(uVar13,uVar8,0);
            }
            goto code_r0x02b76980;
          }
          lVar6 = Component_get_gameObject_0x6000c83(param_4,0);
          if (lVar6 == 0) goto LAB_02b77144;
          uVar13 = Object_get_name_0x6000daa(lVar6,0);
          puVar10 = (undefined8 *)PTR_DAT_05e5d128;
          goto code_r0x02b760f0;
        }
        if (plVar9 == (long *)0x0) goto LAB_02b77144;
        uVar17 = Transform_get_position_0x6000f4d(plVar9,0);
      }
      else {
        lVar6 = Component_get_gameObject_0x6000c83(param_4,0);
        if (lVar6 == 0) goto LAB_02b77144;
        uVar13 = Object_get_name_0x6000daa(lVar6,0);
        puVar10 = (undefined8 *)PTR_DAT_05e5d148;
code_r0x02b760f0:
        uVar13 = String_Format_0x600029c(*puVar10,uVar13,0);
        uVar8 = Component_get_gameObject_0x6000c83(param_4,0);
        if (*(int *)(*(long *)PTR_DAT_05e58f08 + 0xe4) == 0) {
          func_0x029f5bd0(*(long *)PTR_DAT_05e58f08);
        }
        Debug_LogWarning_0x6000347(uVar13,uVar8,0);
        uVar17 = func_0x02b79238(0);
      }
      *(undefined4 *)(param_4 + 0xcc) = uVar17;
      *(undefined4 *)(param_4 + 0xd0) = param_2;
      *(undefined4 *)(param_4 + 0xd4) = param_3;
    }
code_r0x02b76980:
    iVar5 = *(int *)(param_4 + 0xbc);
    if (iVar5 < 9) {
      if (iVar5 == 5) {
        plVar9 = *(long **)(param_4 + 0xb0);
        if ((plVar9 != (long *)0x0) && (*plVar9 != *(long *)PTR_DAT_05e5bfa8)) goto LAB_02b77148;
        lVar6 = DOTweenModuleUI_DOAnchorPos3D_0x6000083
                          (*(undefined4 *)(param_4 + 0xcc),*(undefined4 *)(param_4 + 0xd0),
                           *(undefined4 *)(param_4 + 0xd4),*(undefined4 *)(param_4 + 0x88),plVar9,
                           *(char *)(param_4 + 0x110) != '\0');
      }
      else {
        if (iVar5 != 8) goto LAB_02b76b70;
        uVar17 = *(undefined4 *)(param_4 + 0xcc);
        uVar19 = *(undefined4 *)(param_4 + 0xd0);
        uVar16 = *(undefined4 *)(param_4 + 0xd4);
        uVar18 = *(undefined4 *)(param_4 + 0x88);
        uVar1 = *(undefined1 *)(param_4 + 0x110);
        uVar13 = func_0x0262f548(*(undefined8 *)(param_4 + 0xb0),*(undefined8 *)PTR_DAT_05e5d008);
        lVar6 = DOTweenModulePhysics_DOMove_0x600001b(uVar17,uVar19,uVar16,uVar18,uVar13,uVar1);
      }
    }
    else if (iVar5 == 9) {
      plVar9 = *(long **)(param_4 + 0xb0);
      if ((plVar9 != (long *)0x0) && (*plVar9 != *(long *)PTR_DAT_05e5d068)) goto LAB_02b77148;
      lVar6 = DOTweenModulePhysics2D_DOMove_0x6000042
                        (*(undefined4 *)(param_4 + 0xcc),*(undefined4 *)(param_4 + 0xd0),
                         *(undefined4 *)(param_4 + 0x88),plVar9,*(char *)(param_4 + 0x110) != '\0');
    }
    else {
      if (iVar5 != 0xb) goto LAB_02b76b70;
      uVar17 = *(undefined4 *)(param_4 + 0xcc);
      uVar19 = *(undefined4 *)(param_4 + 0xd0);
      uVar16 = *(undefined4 *)(param_4 + 0xd4);
      uVar18 = *(undefined4 *)(param_4 + 0x88);
      uVar1 = *(undefined1 *)(param_4 + 0x110);
      uVar13 = func_0x0262f548(*(undefined8 *)(param_4 + 0xb0),*(undefined8 *)PTR_DAT_05e5b368);
      lVar6 = ShortcutExtensions_DOMove_0x60000fa(uVar17,uVar19,uVar16,uVar18,uVar13,uVar1,0);
    }
    break;
  case 2:
    if (lVar6 == 0) goto LAB_02b77144;
    uVar13 = GameObject_get_transform_0x6000cfb(lVar6,0);
    lVar6 = ShortcutExtensions_DOLocalMove_0x60000fe
                      (*(undefined4 *)(param_4 + 0xcc),*(undefined4 *)(param_4 + 0xd0),
                       *(undefined4 *)(param_4 + 0xd4),*(undefined4 *)(param_4 + 0x88),uVar13,
                       *(undefined1 *)(param_4 + 0x110),0);
    break;
  case 3:
    if (iVar5 == 8) {
      uVar19 = *(undefined4 *)(param_4 + 0xcc);
      uVar16 = *(undefined4 *)(param_4 + 0xd0);
      uVar18 = *(undefined4 *)(param_4 + 0xd4);
      uVar20 = *(undefined4 *)(param_4 + 0x88);
      uVar17 = *(undefined4 *)(param_4 + 0x11c);
      uVar13 = func_0x0262f548(*(undefined8 *)(param_4 + 0xb0),*(undefined8 *)PTR_DAT_05e5d008);
      lVar6 = DOTweenModulePhysics_DORotate_0x600001f(uVar19,uVar16,uVar18,uVar20,uVar13,uVar17);
    }
    else if (iVar5 == 9) {
      if ((*(long **)(param_4 + 0xb0) != (long *)0x0) &&
         (**(long **)(param_4 + 0xb0) != *(long *)PTR_DAT_05e5d068)) goto LAB_02b77148;
      lVar6 = DOTweenModulePhysics2D_DORotate_0x6000045
                        (*(undefined4 *)(param_4 + 200),*(undefined4 *)(param_4 + 0x88));
    }
    else {
      if (iVar5 != 0xb) goto LAB_02b76b70;
      uVar19 = *(undefined4 *)(param_4 + 0xcc);
      uVar16 = *(undefined4 *)(param_4 + 0xd0);
      uVar18 = *(undefined4 *)(param_4 + 0xd4);
      uVar20 = *(undefined4 *)(param_4 + 0x88);
      uVar17 = *(undefined4 *)(param_4 + 0x11c);
      uVar13 = func_0x0262f548(*(undefined8 *)(param_4 + 0xb0),*(undefined8 *)PTR_DAT_05e5b368);
      lVar6 = ShortcutExtensions_DORotate_0x6000102(uVar19,uVar16,uVar18,uVar20,uVar13,uVar17,0);
    }
    break;
  case 4:
    if (lVar6 == 0) goto LAB_02b77144;
    uVar13 = GameObject_get_transform_0x6000cfb(lVar6,0);
    lVar6 = ShortcutExtensions_DOLocalRotate_0x6000104
                      (*(undefined4 *)(param_4 + 0xcc),*(undefined4 *)(param_4 + 0xd0),
                       *(undefined4 *)(param_4 + 0xd4),*(undefined4 *)(param_4 + 0x88),uVar13,
                       *(undefined4 *)(param_4 + 0x11c),0);
    break;
  case 5:
    if (lVar6 == 0) goto LAB_02b77144;
    uVar13 = GameObject_get_transform_0x6000cfb(lVar6,0);
    if (*(char *)(param_4 + 0x110) == '\0') {
      uVar16 = *(undefined4 *)(param_4 + 0xcc);
      uVar17 = *(undefined4 *)(param_4 + 0xd0);
      uVar19 = *(undefined4 *)(param_4 + 0xd4);
    }
    else {
      uVar16 = *(undefined4 *)(param_4 + 200);
      uVar17 = uVar16;
      uVar19 = uVar16;
    }
    lVar6 = ShortcutExtensions_DOScale_0x6000106
                      (uVar16,uVar17,uVar19,*(undefined4 *)(param_4 + 0x88),uVar13,0);
    break;
  case 6:
    *(undefined1 *)(param_4 + 0xa8) = 0;
    puVar4 = PTR_DAT_05e5d060;
    if (iVar5 < 6) {
      if (iVar5 == 3) {
        uVar17 = *(undefined4 *)(param_4 + 0xe0);
        uVar19 = *(undefined4 *)(param_4 + 0xe4);
        uVar16 = *(undefined4 *)(param_4 + 0xe8);
        uVar18 = *(undefined4 *)(param_4 + 0xec);
        uVar20 = *(undefined4 *)(param_4 + 0x88);
        func_0x0262f548(*(undefined8 *)(param_4 + 0xb0),*(undefined8 *)PTR_DAT_05e5d048);
        lVar6 = DOTweenModuleUI_DOColor_0x6000074(uVar17,uVar19,uVar16,uVar18,uVar20);
      }
      else {
        if (iVar5 != 4) goto LAB_02b76b70;
        plVar9 = *(long **)(param_4 + 0xb0);
        if ((plVar9 != (long *)0x0) && (*plVar9 != *(long *)PTR_DAT_05e5d058)) goto LAB_02b77148;
        lVar6 = ShortcutExtensions_DOColor_0x60000e6
                          (*(undefined4 *)(param_4 + 0xe0),*(undefined4 *)(param_4 + 0xe4),
                           *(undefined4 *)(param_4 + 0xe8),*(undefined4 *)(param_4 + 0xec),
                           *(undefined4 *)(param_4 + 0x88),plVar9,0);
      }
    }
    else if (iVar5 == 10) {
      uVar17 = *(undefined4 *)(param_4 + 0xe0);
      uVar19 = *(undefined4 *)(param_4 + 0xe4);
      uVar16 = *(undefined4 *)(param_4 + 0xe8);
      uVar18 = *(undefined4 *)(param_4 + 0xec);
      uVar20 = *(undefined4 *)(param_4 + 0x88);
      func_0x0262f548(*(undefined8 *)(param_4 + 0xb0),*(undefined8 *)PTR_DAT_05e5d078);
      lVar6 = DOTweenModuleUI_DOColor_0x6000095(uVar17,uVar19,uVar16,uVar18,uVar20);
    }
    else if (iVar5 == 7) {
      if ((*(long **)(param_4 + 0xb0) != (long *)0x0) &&
         (**(long **)(param_4 + 0xb0) != *(long *)PTR_DAT_05e5d070)) goto LAB_02b77148;
      lVar6 = DOTweenModuleSprite_DOColor_0x6000066
                        (*(undefined4 *)(param_4 + 0xe0),*(undefined4 *)(param_4 + 0xe4),
                         *(undefined4 *)(param_4 + 0xe8),*(undefined4 *)(param_4 + 0xec),
                         *(undefined4 *)(param_4 + 0x88));
    }
    else {
      if (iVar5 != 6) goto LAB_02b76b70;
      uVar13 = *(undefined8 *)(param_4 + 0xb0);
      lVar6 = func_0x0262f548(uVar13,*(undefined8 *)PTR_DAT_05e5d060);
      if (lVar6 == 0) goto LAB_02b77144;
      uVar13 = func_0x0262f548(uVar13,*(undefined8 *)puVar4);
      uVar13 = Renderer_get_material_0x600054c(uVar13,0);
      lVar6 = ShortcutExtensions_DOColor_0x60000ea
                        (*(undefined4 *)(param_4 + 0xe0),*(undefined4 *)(param_4 + 0xe4),
                         *(undefined4 *)(param_4 + 0xe8),*(undefined4 *)(param_4 + 0xec),
                         *(undefined4 *)(param_4 + 0x88),uVar13,0);
    }
    break;
  case 7:
    *(undefined1 *)(param_4 + 0xa8) = 0;
    puVar4 = PTR_DAT_05e5d060;
    if (iVar5 < 6) {
      if (iVar5 == 2) {
        if ((*(long **)(param_4 + 0xb0) != (long *)0x0) &&
           (**(long **)(param_4 + 0xb0) != *(long *)PTR_DAT_05e5d038)) goto LAB_02b77148;
        lVar6 = DOTweenModuleUI_DOFade_0x6000073
                          (*(undefined4 *)(param_4 + 200),*(undefined4 *)(param_4 + 0x88));
      }
      else if (iVar5 == 3) {
        uVar17 = *(undefined4 *)(param_4 + 200);
        uVar19 = *(undefined4 *)(param_4 + 0x88);
        func_0x0262f548(*(undefined8 *)(param_4 + 0xb0),*(undefined8 *)PTR_DAT_05e5d048);
        lVar6 = DOTweenModuleUI_DOFade_0x6000075(uVar17,uVar19);
      }
      else {
        if (iVar5 != 4) goto LAB_02b76b70;
        plVar9 = *(long **)(param_4 + 0xb0);
        if ((plVar9 != (long *)0x0) && (*plVar9 != *(long *)PTR_DAT_05e5d058)) goto LAB_02b77148;
        lVar6 = ShortcutExtensions_DOIntensity_0x60000e7
                          (*(undefined4 *)(param_4 + 200),*(undefined4 *)(param_4 + 0x88),plVar9,0);
      }
    }
    else if (iVar5 == 10) {
      uVar17 = *(undefined4 *)(param_4 + 200);
      uVar19 = *(undefined4 *)(param_4 + 0x88);
      func_0x0262f548(*(undefined8 *)(param_4 + 0xb0),*(undefined8 *)PTR_DAT_05e5d078);
      lVar6 = DOTweenModuleUI_DOFade_0x6000097(uVar17,uVar19);
    }
    else if (iVar5 == 7) {
      if ((*(long **)(param_4 + 0xb0) != (long *)0x0) &&
         (**(long **)(param_4 + 0xb0) != *(long *)PTR_DAT_05e5d070)) goto LAB_02b77148;
      lVar6 = DOTweenModuleSprite_DOFade_0x6000067
                        (*(undefined4 *)(param_4 + 200),*(undefined4 *)(param_4 + 0x88));
    }
    else {
      if (iVar5 != 6) goto LAB_02b76b70;
      uVar13 = *(undefined8 *)(param_4 + 0xb0);
      lVar6 = func_0x0262f548(uVar13,*(undefined8 *)PTR_DAT_05e5d060);
      if (lVar6 == 0) goto LAB_02b77144;
      uVar13 = func_0x0262f548(uVar13,*(undefined8 *)puVar4);
      uVar13 = Renderer_get_material_0x600054c(uVar13,0);
      lVar6 = ShortcutExtensions_DOFade_0x60000ed
                        (*(undefined4 *)(param_4 + 200),*(undefined4 *)(param_4 + 0x88),uVar13,0);
    }
    break;
  case 8:
    if (iVar5 == 10) {
      uVar8 = *(undefined8 *)(param_4 + 0xf0);
      uVar19 = *(undefined4 *)(param_4 + 0x88);
      uVar1 = *(undefined1 *)(param_4 + 0x110);
      uVar17 = *(undefined4 *)(param_4 + 0x120);
      uVar15 = *(undefined8 *)(param_4 + 0x128);
      uVar13 = func_0x0262f548(*(undefined8 *)(param_4 + 0xb0),*(undefined8 *)PTR_DAT_05e5d078);
      lVar6 = DOTweenModuleUI_DOText_0x6000098(uVar19,uVar13,uVar8,uVar1,uVar17,uVar15);
      break;
    }
    goto LAB_02b76b70;
  case 9:
    if (iVar5 == 5) {
      plVar9 = *(long **)(param_4 + 0xb0);
      if ((plVar9 != (long *)0x0) && (lVar6 = *(long *)PTR_DAT_05e5bfa8, *plVar9 != lVar6))
      goto code_r0x02b7714c;
      lVar6 = DOTweenModuleUI_DOPunchAnchorPos_0x600008d
                        (*(undefined4 *)(param_4 + 0xcc),*(undefined4 *)(param_4 + 0xd0),
                         *(undefined4 *)(param_4 + 0x88),*(undefined4 *)(param_4 + 0x114),plVar9,
                         *(undefined4 *)(param_4 + 0x118),*(char *)(param_4 + 0x110) != '\0');
    }
    else {
      if (iVar5 != 0xb) goto LAB_02b76b70;
      uVar19 = *(undefined4 *)(param_4 + 0xcc);
      uVar16 = *(undefined4 *)(param_4 + 0xd0);
      uVar18 = *(undefined4 *)(param_4 + 0xd4);
      uVar20 = *(undefined4 *)(param_4 + 0x88);
      uVar17 = *(undefined4 *)(param_4 + 0x118);
      uVar21 = *(undefined4 *)(param_4 + 0x114);
      uVar1 = *(undefined1 *)(param_4 + 0x110);
      uVar13 = func_0x0262f548(*(undefined8 *)(param_4 + 0xb0),*(undefined8 *)PTR_DAT_05e5b368);
      lVar6 = ShortcutExtensions_DOPunchPosition_0x600010e
                        (uVar19,uVar16,uVar18,uVar20,uVar21,uVar13,uVar17,uVar1,0);
    }
    break;
  case 10:
    if (lVar6 == 0) goto LAB_02b77144;
    uVar13 = GameObject_get_transform_0x6000cfb(lVar6,0);
    lVar6 = ShortcutExtensions_DOPunchRotation_0x6000110
                      (*(undefined4 *)(param_4 + 0xcc),*(undefined4 *)(param_4 + 0xd0),
                       *(undefined4 *)(param_4 + 0xd4),*(undefined4 *)(param_4 + 0x88),
                       *(undefined4 *)(param_4 + 0x114),uVar13,*(undefined4 *)(param_4 + 0x118),0);
    break;
  case 0xb:
    if (lVar6 == 0) goto LAB_02b77144;
    uVar13 = GameObject_get_transform_0x6000cfb(lVar6,0);
    lVar6 = ShortcutExtensions_DOPunchScale_0x600010f
                      (*(undefined4 *)(param_4 + 0xcc),*(undefined4 *)(param_4 + 0xd0),
                       *(undefined4 *)(param_4 + 0xd4),*(undefined4 *)(param_4 + 0x88),
                       *(undefined4 *)(param_4 + 0x114),uVar13,*(undefined4 *)(param_4 + 0x118),0);
    break;
  case 0xc:
    if (iVar5 == 5) {
      plVar9 = *(long **)(param_4 + 0xb0);
      if ((plVar9 != (long *)0x0) && (lVar6 = *(long *)PTR_DAT_05e5bfa8, *plVar9 != lVar6))
      goto code_r0x02b7714c;
      lVar6 = DOTweenModuleUI_DOShakeAnchorPos_0x600008f
                        (*(undefined4 *)(param_4 + 0x88),*(undefined4 *)(param_4 + 0xcc),
                         *(undefined4 *)(param_4 + 0xd0),*(undefined4 *)(param_4 + 0x114),plVar9,
                         *(undefined4 *)(param_4 + 0x118),*(char *)(param_4 + 0x110) != '\0',
                         *(char *)(param_4 + 0x111) != '\0',*(undefined4 *)(param_4 + 0x124));
    }
    else {
      if (iVar5 != 0xb) goto LAB_02b76b70;
      uVar16 = *(undefined4 *)(param_4 + 0x88);
      uVar18 = *(undefined4 *)(param_4 + 0xcc);
      uVar20 = *(undefined4 *)(param_4 + 0xd0);
      uVar21 = *(undefined4 *)(param_4 + 0xd4);
      uVar17 = *(undefined4 *)(param_4 + 0x118);
      uVar22 = *(undefined4 *)(param_4 + 0x114);
      uVar1 = *(undefined1 *)(param_4 + 0x110);
      uVar2 = *(undefined1 *)(param_4 + 0x111);
      uVar19 = *(undefined4 *)(param_4 + 0x124);
      uVar13 = func_0x0262f548(*(undefined8 *)(param_4 + 0xb0),*(undefined8 *)PTR_DAT_05e5b368);
      lVar6 = ShortcutExtensions_DOShakePosition_0x6000112
                        (uVar16,uVar18,uVar20,uVar21,uVar22,uVar13,uVar17,uVar1,uVar2,uVar19,0);
    }
    break;
  case 0xd:
    if (lVar6 == 0) goto LAB_02b77144;
    uVar13 = GameObject_get_transform_0x6000cfb(lVar6,0);
    lVar6 = ShortcutExtensions_DOShakeRotation_0x6000114
                      (*(undefined4 *)(param_4 + 0x88),*(undefined4 *)(param_4 + 0xcc),
                       *(undefined4 *)(param_4 + 0xd0),*(undefined4 *)(param_4 + 0xd4),
                       *(undefined4 *)(param_4 + 0x114),uVar13,*(undefined4 *)(param_4 + 0x118),
                       *(undefined1 *)(param_4 + 0x111),*(undefined4 *)(param_4 + 0x124),0);
    break;
  case 0xe:
    if (lVar6 == 0) goto LAB_02b77144;
    uVar13 = GameObject_get_transform_0x6000cfb(lVar6,0);
    lVar6 = ShortcutExtensions_DOShakeScale_0x6000116
                      (*(undefined4 *)(param_4 + 0x88),*(undefined4 *)(param_4 + 0xcc),
                       *(undefined4 *)(param_4 + 0xd0),*(undefined4 *)(param_4 + 0xd4),
                       *(undefined4 *)(param_4 + 0x114),uVar13,*(undefined4 *)(param_4 + 0x118),
                       *(undefined1 *)(param_4 + 0x111),*(undefined4 *)(param_4 + 0x124),0);
    break;
  case 0xf:
    plVar9 = *(long **)(param_4 + 0xb0);
    if ((plVar9 == (long *)0x0) || (*plVar9 == *(long *)PTR_DAT_05e5d030)) {
      lVar6 = ShortcutExtensions_DOAspect_0x60000da
                        (*(undefined4 *)(param_4 + 200),*(undefined4 *)(param_4 + 0x88),plVar9,0);
      break;
    }
    goto LAB_02b77148;
  case 0x10:
    plVar9 = *(long **)(param_4 + 0xb0);
    if ((plVar9 == (long *)0x0) || (*plVar9 == *(long *)PTR_DAT_05e5d030)) {
      lVar6 = ShortcutExtensions_DOColor_0x60000db
                        (*(undefined4 *)(param_4 + 0xe0),*(undefined4 *)(param_4 + 0xe4),
                         *(undefined4 *)(param_4 + 0xe8),*(undefined4 *)(param_4 + 0xec),
                         *(undefined4 *)(param_4 + 0x88),plVar9,0);
      break;
    }
    goto LAB_02b77148;
  case 0x11:
    plVar9 = *(long **)(param_4 + 0xb0);
    if ((plVar9 == (long *)0x0) || (*plVar9 == *(long *)PTR_DAT_05e5d030)) {
      lVar6 = ShortcutExtensions_DOFieldOfView_0x60000dd
                        (*(undefined4 *)(param_4 + 200),*(undefined4 *)(param_4 + 0x88),plVar9,0);
      break;
    }
    goto LAB_02b77148;
  case 0x12:
    plVar9 = *(long **)(param_4 + 0xb0);
    if ((plVar9 == (long *)0x0) || (*plVar9 == *(long *)PTR_DAT_05e5d030)) {
      lVar6 = ShortcutExtensions_DOOrthoSize_0x60000df
                        (*(undefined4 *)(param_4 + 200),*(undefined4 *)(param_4 + 0x88),plVar9,0);
      break;
    }
    goto LAB_02b77148;
  case 0x13:
    plVar9 = *(long **)(param_4 + 0xb0);
    if ((plVar9 == (long *)0x0) || (*plVar9 == *(long *)PTR_DAT_05e5d030)) {
      lVar6 = ShortcutExtensions_DOPixelRect_0x60000e0
                        (*(undefined4 *)(param_4 + 0xf8),*(undefined4 *)(param_4 + 0xfc),
                         *(undefined4 *)(param_4 + 0x100),*(undefined4 *)(param_4 + 0x104),
                         *(undefined4 *)(param_4 + 0x88),plVar9,0);
      break;
    }
    goto LAB_02b77148;
  case 0x14:
    plVar9 = *(long **)(param_4 + 0xb0);
    if ((plVar9 == (long *)0x0) || (*plVar9 == *(long *)PTR_DAT_05e5d030)) {
      lVar6 = ShortcutExtensions_DORect_0x60000e1
                        (*(undefined4 *)(param_4 + 0xf8),*(undefined4 *)(param_4 + 0xfc),
                         *(undefined4 *)(param_4 + 0x100),*(undefined4 *)(param_4 + 0x104),
                         *(undefined4 *)(param_4 + 0x88),plVar9,0);
      break;
    }
    goto LAB_02b77148;
  case 0x15:
    plVar9 = *(long **)(param_4 + 0xb0);
    if (*(char *)(param_4 + 0x110) == '\0') {
      if ((plVar9 == (long *)0x0) || (*plVar9 == *(long *)PTR_DAT_05e5bfa8)) {
        uVar19 = *(undefined4 *)(param_4 + 0xd8);
        uVar17 = *(undefined4 *)(param_4 + 0xdc);
        goto code_r0x02b76760;
      }
    }
    else if ((plVar9 == (long *)0x0) || (*plVar9 == *(long *)PTR_DAT_05e5bfa8)) {
      uVar19 = *(undefined4 *)(param_4 + 200);
      uVar17 = uVar19;
code_r0x02b76760:
      lVar6 = DOTweenModuleUI_DOSizeDelta_0x600008c
                        (uVar19,uVar17,*(undefined4 *)(param_4 + 0x88),plVar9,0);
      break;
    }
    goto LAB_02b77148;
  case 0x16:
    uVar17 = *(undefined4 *)(param_4 + 200);
    uVar19 = *(undefined4 *)(param_4 + 0x88);
    func_0x0262f548(*(undefined8 *)(param_4 + 0xb0),*(undefined8 *)PTR_DAT_05e5d050);
    lVar6 = DOTweenModuleUI_DOFillAmount_0x6000078(uVar17,uVar19);
    break;
  default:
    goto LAB_02b76b70;
  }
  *plVar12 = lVar6;
  Managed_WriteBarrier(plVar12,lVar6);
LAB_02b76b70:
  plVar9 = (long *)*plVar12;
  if (plVar9 != (long *)0x0) {
    if (*(char *)(param_4 + 0xa9) == '\0') {
      func_0x0327c020(plVar9,*(char *)(param_4 + 0xa8) != '\0',*(undefined8 *)PTR_DAT_05e5d0f8);
    }
    else {
      bVar3 = *(byte *)(*(long *)PTR_DAT_05e5d118 + 0x130);
      if ((*(byte *)(*plVar9 + 0x130) < bVar3) ||
         (*(long *)(*(long *)(*plVar9 + 200) + (ulong)bVar3 * 8 + -8) != *(long *)PTR_DAT_05e5d118))
      {
LAB_02b77148:
        plVar9 = (long *)func_0x029f607c();
        lVar6 = extraout_x8;
code_r0x02b7714c:
        lVar6 = func_0x029f607c(plVar9,lVar6);
        if (*(char *)(lVar6 + 0x130) != '\0') {
          return;
        }
        if ((*(char *)(lVar6 + 0xad) != '\0') && (*(char *)(lVar6 + 0xac) != '\0')) {
          DOTweenAnimation_CreateTween(lVar6,0,*(undefined1 *)(lVar6 + 0xc4));
          *(undefined1 *)(lVar6 + 0x130) = 1;
        }
        return;
      }
      func_0x0327b150(plVar9,*(char *)(param_4 + 0xa8) != '\0',*(undefined8 *)PTR_DAT_05e5d090);
    }
    if ((*(char *)(param_4 + 0x70) == '\0') && (*(char *)(param_4 + 0x80) != '\0')) {
      uVar13 = *(undefined8 *)(param_4 + 0x78);
    }
    else {
      uVar13 = Component_get_gameObject_0x6000c83(param_4,0);
    }
    uVar13 = func_0x0327c09c(*(undefined8 *)(param_4 + 0x68),uVar13,*(undefined8 *)PTR_DAT_05e5d108)
    ;
    uVar13 = func_0x0327b8ec(*(undefined4 *)(param_4 + 0x84),uVar13,*(undefined8 *)PTR_DAT_05e5d0d0)
    ;
    uVar13 = func_0x0327bf64(uVar13,*(undefined4 *)(param_4 + 0x9c),*(undefined4 *)(param_4 + 0x98),
                             *(undefined8 *)PTR_DAT_05e5d0f0);
    uVar13 = func_0x0327b8c8(uVar13,*(undefined1 *)(param_4 + 0xab),*(undefined8 *)PTR_DAT_05e5d0c8)
    ;
    puVar4 = PTR_DAT_05e5c860;
    uVar8 = func_0x029f5cec(*(undefined8 *)PTR_DAT_05e5c860);
    TweenCallback__ctor_0x6000005(uVar8,param_4,*(undefined8 *)PTR_DAT_05e5d040,0);
    func_0x0327b358(uVar13,uVar8,*(undefined8 *)PTR_DAT_05e5d0a0);
    if (*(char *)(param_4 + 0x24) != '\0') {
      func_0x0327c054(*plVar12,*(undefined8 *)PTR_DAT_05e5d100);
    }
    if (*(int *)(param_4 + 0x8c) == 0x25) {
      func_0x0327ba34(*(undefined8 *)(param_4 + 0x68),*(undefined8 *)(param_4 + 0x90),
                      *(undefined8 *)PTR_DAT_05e5d0d8);
    }
    else {
      func_0x0327bafc(*(undefined8 *)(param_4 + 0x68),*(int *)(param_4 + 0x8c),
                      *(undefined8 *)PTR_DAT_05e5d0e0);
    }
    uVar7 = String_IsNullOrEmpty_0x6000277(*(undefined8 *)(param_4 + 0xa0),0);
    if ((uVar7 & 1) == 0) {
      func_0x0327bcc4(*(undefined8 *)(param_4 + 0x68),*(undefined8 *)(param_4 + 0xa0),
                      *(undefined8 *)PTR_DAT_05e5d0e8);
    }
    func_0x0327c1dc(*(undefined8 *)(param_4 + 0x68),*(undefined1 *)(param_4 + 0xaa),
                    *(undefined8 *)PTR_DAT_05e5d110);
    if (*(char *)(param_4 + 0x25) == '\0') {
      *(undefined8 *)(param_4 + 0x30) = 0;
      Managed_WriteBarrier(param_4 + 0x30,0);
    }
    else {
      lVar6 = *(long *)(param_4 + 0x30);
      if (lVar6 != 0) {
        lVar14 = *plVar12;
        uVar13 = func_0x029f5cec(*(undefined8 *)puVar4);
        TweenCallback__ctor_0x6000005(uVar13,lVar6,*(undefined8 *)PTR_DAT_05e5d120,0);
        func_0x0327b408(lVar14,uVar13,*(undefined8 *)PTR_DAT_05e5d0b8);
      }
    }
    if (*(char *)(param_4 + 0x26) == '\0') {
      *(undefined8 *)(param_4 + 0x38) = 0;
      Managed_WriteBarrier(param_4 + 0x38,0);
    }
    else {
      lVar6 = *(long *)(param_4 + 0x38);
      if (lVar6 != 0) {
        lVar14 = *plVar12;
        uVar13 = func_0x029f5cec(*(undefined8 *)puVar4);
        TweenCallback__ctor_0x6000005(uVar13,lVar6,*(undefined8 *)PTR_DAT_05e5d120,0);
        func_0x0327b3b0(lVar14,uVar13,*(undefined8 *)PTR_DAT_05e5d0a8);
      }
    }
    if (*(char *)(param_4 + 0x27) == '\0') {
      *(undefined8 *)(param_4 + 0x40) = 0;
      Managed_WriteBarrier(param_4 + 0x40,0);
    }
    else {
      lVar6 = *(long *)(param_4 + 0x40);
      if (lVar6 != 0) {
        lVar14 = *plVar12;
        uVar13 = func_0x029f5cec(*(undefined8 *)puVar4);
        TweenCallback__ctor_0x6000005(uVar13,lVar6,*(undefined8 *)PTR_DAT_05e5d120,0);
        func_0x0327b460(lVar14,uVar13,*(undefined8 *)PTR_DAT_05e5c870);
      }
    }
    if (*(char *)(param_4 + 0x28) == '\0') {
      *(undefined8 *)(param_4 + 0x48) = 0;
      Managed_WriteBarrier(param_4 + 0x48,0);
    }
    else {
      lVar6 = *(long *)(param_4 + 0x48);
      if (lVar6 != 0) {
        lVar14 = *plVar12;
        uVar13 = func_0x029f5cec(*(undefined8 *)puVar4);
        TweenCallback__ctor_0x6000005(uVar13,lVar6,*(undefined8 *)PTR_DAT_05e5d120,0);
        func_0x0327b434(lVar14,uVar13,*(undefined8 *)PTR_DAT_05e5d0c0);
      }
    }
    if (*(char *)(param_4 + 0x29) == '\0') {
      *(undefined8 *)(param_4 + 0x50) = 0;
      Managed_WriteBarrier(param_4 + 0x50,0);
    }
    else {
      lVar6 = *(long *)(param_4 + 0x50);
      if (lVar6 != 0) {
        lVar14 = *plVar12;
        uVar13 = func_0x029f5cec(*(undefined8 *)puVar4);
        TweenCallback__ctor_0x6000005(uVar13,lVar6,*(undefined8 *)PTR_DAT_05e5d120,0);
        func_0x0327b32c(lVar14,uVar13,*(undefined8 *)PTR_DAT_05e5d098);
      }
    }
    if (*(char *)(param_4 + 0x2b) == '\0') {
      *(undefined8 *)(param_4 + 0x60) = 0;
      Managed_WriteBarrier(param_4 + 0x60,0);
    }
    else {
      lVar6 = *(long *)(param_4 + 0x60);
      if (lVar6 != 0) {
        lVar14 = *plVar12;
        uVar13 = func_0x029f5cec(*(undefined8 *)puVar4);
        TweenCallback__ctor_0x6000005(uVar13,lVar6,*(undefined8 *)PTR_DAT_05e5d120,0);
        func_0x0327b3dc(lVar14,uVar13,*(undefined8 *)PTR_DAT_05e5d0b0);
      }
    }
    if ((param_6 & 1) == 0) {
      func_0x03273a14(*plVar12,*(undefined8 *)PTR_DAT_05e5d080);
    }
    else {
      func_0x03273b6c(*plVar12,*(undefined8 *)PTR_DAT_05e5d088);
    }
    if ((*(char *)(param_4 + 0x2a) != '\0') && (*(long *)(param_4 + 0x58) != 0)) {
      UnityEvent_Invoke_0x6001051(*(long *)(param_4 + 0x58),0);
      return;
    }
  }
  return;
}

