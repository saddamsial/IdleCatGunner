/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b604c8, Ghidra VA 02c604c8. */

void Fish_Info_UI_Reload(long param_1,uint param_2)

{
  undefined *puVar1;
  undefined *puVar2;
  ulong uVar3;
  long lVar4;
  ulong uVar5;
  long lVar6;
  uint uVar7;
  undefined8 uVar8;
  long *plVar9;
  undefined8 uStack_170;
  undefined8 uStack_168;
  undefined8 uStack_160;
  undefined8 uStack_158;
  undefined8 uStack_150;
  undefined8 uStack_148;
  undefined8 uStack_140;
  undefined8 uStack_138;
  undefined8 uStack_130;
  undefined8 uStack_128;
  undefined8 uStack_120;
  undefined8 uStack_118;
  undefined8 uStack_110;
  undefined8 uStack_108;
  undefined8 uStack_100;
  undefined8 uStack_f8;
  undefined8 uStack_f0;
  undefined8 uStack_e8;
  undefined8 uStack_e0;
  undefined8 uStack_d8;
  undefined8 uStack_d0;
  undefined8 uStack_c8;
  undefined8 uStack_c0;
  undefined8 uStack_b8;
  undefined8 uStack_b0;
  undefined8 uStack_a8;
  undefined8 uStack_a0;
  undefined8 uStack_98;
  undefined8 uStack_90;
  undefined8 uStack_88;
  undefined8 uStack_80;
  undefined8 uStack_78;
  undefined8 uStack_70;
  undefined8 uStack_68;
  undefined8 uStack_60;
  undefined8 uStack_58;
  
  puVar2 = PTR_DAT_05e5dd38;
  puVar1 = PTR_DAT_05e591c0;
  if ((bRam000000000625c21c & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e5dd38);
    func_0x029f5a50(PTR_DAT_05e5d4c8);
    func_0x029f5a50(PTR_DAT_05e620b8);
    func_0x029f5a50(PTR_DAT_05e591c0);
    func_0x029f5a50(PTR_DAT_05e63810);
    bRam000000000625c21c = 1;
  }
  uStack_e8 = 0;
  uStack_f0 = 0;
  uStack_d8 = 0;
  uStack_e0 = 0;
  uStack_c8 = 0;
  uStack_d0 = 0;
  uStack_b8 = 0;
  uStack_c0 = 0;
  uStack_a8 = 0;
  uStack_b0 = 0;
  uStack_98 = 0;
  uStack_a0 = 0;
  uStack_88 = 0;
  uStack_90 = 0;
  uStack_78 = 0;
  uStack_80 = 0;
  uStack_68 = 0;
  uStack_70 = 0;
  uStack_58 = 0;
  uStack_60 = 0;
  uVar8 = **(undefined8 **)(*(long *)puVar2 + 0xb8);
  if (*(int *)(*(long *)puVar1 + 0xe4) == 0) {
    func_0x029f5bd0();
  }
  uVar3 = Object_op_Equality_0x6000dec(uVar8,0,0);
  if ((uVar3 & 1) != 0) {
    return;
  }
  if (**(long **)(*(long *)puVar2 + 0xb8) == 0) goto LAB_02c608ec;
  if ((int)param_2 < 0) {
    return;
  }
  lVar6 = *(long *)(**(long **)(*(long *)puVar2 + 0xb8) + 0x20);
  if (lVar6 == 0) {
    return;
  }
  if (*(int *)(lVar6 + 0x18) <= (int)param_2) {
    return;
  }
  lVar4 = *(long *)puVar1;
  *(uint *)(param_1 + 0x70) = param_2;
  uVar8 = *(undefined8 *)(param_1 + 0x20);
  uVar3 = (ulong)param_2;
  lVar6 = *(long *)(lVar6 + (ulong)param_2 * 8 + 0x20);
  if (*(int *)(lVar4 + 0xe4) == 0) {
    func_0x029f5bd0();
  }
  uVar5 = Object_op_Inequality_0x6000ded(uVar8,0,0);
  if ((uVar5 & 1) != 0) {
    if (**(long **)(*(long *)puVar2 + 0xb8) == 0) goto LAB_02c608ec;
    lVar4 = *(long *)(**(long **)(*(long *)puVar2 + 0xb8) + 0x28);
    if ((lVar4 != 0) && ((int)param_2 < *(int *)(lVar4 + 0x18))) {
      uVar8 = *(undefined8 *)(lVar4 + uVar3 * 8 + 0x20);
      if (*(int *)(*(long *)puVar1 + 0xe4) == 0) {
        func_0x029f5bd0();
      }
      uVar5 = Object_op_Inequality_0x6000ded(uVar8,0,0);
      if ((uVar5 & 1) != 0) {
        if ((**(long **)(*(long *)puVar2 + 0xb8) == 0) ||
           (lVar4 = *(long *)(**(long **)(*(long *)puVar2 + 0xb8) + 0x28), lVar4 == 0))
        goto LAB_02c608ec;
        if (*(uint *)(lVar4 + 0x18) <= param_2) {
LAB_02c609c8:
                    /* WARNING: Subroutine does not return */
          Throw_Index_Wrapper();
        }
        if (*(long *)(param_1 + 0x20) == 0) goto LAB_02c608ec;
        Image_set_sprite_0x600013f
                  (*(long *)(param_1 + 0x20),*(undefined8 *)(lVar4 + uVar3 * 8 + 0x20),0);
      }
    }
  }
  if (lVar6 != 0) {
    InfVal_op_Implicit_0x600003f(&uStack_110,*(undefined4 *)(lVar6 + 0x18),0);
    uStack_68 = uStack_108;
    uStack_70 = uStack_110;
    uStack_58 = uStack_f8;
    uStack_60 = uStack_100;
    InfVal_op_Implicit_0x600003f(&uStack_130,*(undefined4 *)(lVar6 + 0x1c),0);
    uStack_88 = uStack_128;
    uStack_90 = uStack_130;
    uStack_78 = uStack_118;
    uStack_80 = uStack_120;
    InfVal_op_Implicit_0x600003f(&uStack_150,*(undefined4 *)(lVar6 + 0x20),0);
    uVar8 = *(undefined8 *)(param_1 + 0x38);
    uStack_a8 = uStack_148;
    uStack_b0 = uStack_150;
    uStack_98 = uStack_138;
    uStack_a0 = uStack_140;
    if (*(int *)(*(long *)puVar1 + 0xe4) == 0) {
      func_0x029f5bd0();
    }
    uVar5 = Object_op_Inequality_0x6000ded(uVar8,0,0);
    if ((uVar5 & 1) != 0) {
      plVar9 = *(long **)(param_1 + 0x38);
      uVar8 = InfVal_InfVal_change_0x60000a8(&uStack_70,0);
      uVar8 = String_Format_0x600029c(*(undefined8 *)PTR_DAT_05e63810,uVar8,0);
      if (plVar9 == (long *)0x0) goto LAB_02c608ec;
      (**(code **)(*plVar9 + 0x558))(plVar9,uVar8,*(undefined8 *)(*plVar9 + 0x560));
    }
    uVar8 = *(undefined8 *)(param_1 + 0x40);
    if (*(int *)(*(long *)puVar1 + 0xe4) == 0) {
      func_0x029f5bd0();
    }
    uVar5 = Object_op_Inequality_0x6000ded(uVar8,0,0);
    if ((uVar5 & 1) != 0) {
      plVar9 = *(long **)(param_1 + 0x40);
      InfVal_op_Implicit_0x600003f(&uStack_110,0,0);
      uStack_c8 = uStack_108;
      uStack_d0 = uStack_110;
      uStack_b8 = uStack_f8;
      uStack_c0 = uStack_100;
      InfVal_op_Implicit_0x600003f(&uStack_130,100,0);
      uStack_e8 = uStack_128;
      uStack_f0 = uStack_130;
      uStack_d8 = uStack_118;
      uStack_e0 = uStack_120;
      if (*(int *)(*(long *)PTR_DAT_05e620b8 + 0xe4) == 0) {
        func_0x029f5bd0();
      }
      MathInfVal_Clamp_0x60000d9(&uStack_150,&uStack_90,&uStack_d0,&uStack_f0,0);
      uStack_168 = uStack_148;
      uStack_170 = uStack_150;
      uStack_158 = uStack_138;
      uStack_160 = uStack_140;
      uVar8 = func_0x029f5bd8(*(undefined8 *)PTR_DAT_05e5d4c8,&uStack_170);
      uVar8 = String_Format_0x600029c(*(undefined8 *)PTR_DAT_05e63810,uVar8,0);
      if (plVar9 == (long *)0x0) goto LAB_02c608ec;
      (**(code **)(*plVar9 + 0x558))(plVar9,uVar8,*(undefined8 *)(*plVar9 + 0x560));
    }
    uVar8 = *(undefined8 *)(param_1 + 0x48);
    if (*(int *)(*(long *)puVar1 + 0xe4) == 0) {
      func_0x029f5bd0();
    }
    uVar5 = Object_op_Inequality_0x6000ded(uVar8,0,0);
    if ((uVar5 & 1) != 0) {
      plVar9 = *(long **)(param_1 + 0x48);
      uVar8 = InfVal_InfVal_change_0x60000a8(&uStack_b0,0);
      uVar8 = String_Format_0x600029c(*(undefined8 *)PTR_DAT_05e63810,uVar8,0);
      if (plVar9 == (long *)0x0) goto LAB_02c608ec;
      (**(code **)(*plVar9 + 0x558))(plVar9,uVar8,*(undefined8 *)(*plVar9 + 0x560));
    }
    lVar6 = *(long *)(param_1 + 0x50);
    if (lVar6 != 0) {
      lVar4 = 0;
      do {
        uVar7 = (uint)lVar4;
        if ((int)*(uint *)(lVar6 + 0x18) <= (int)uVar7) {
          lVar6 = *(long *)(param_1 + 0x58);
          if (lVar6 == 0) break;
          if (*(uint *)(lVar6 + 0x18) <= param_2) goto LAB_02c609c8;
          plVar9 = *(long **)(param_1 + 0x28);
          if (plVar9 == (long *)0x0) break;
          lVar6 = lVar6 + uVar3 * 0x10;
          (**(code **)(*plVar9 + 0x2a8))
                    (*(undefined4 *)(lVar6 + 0x20),*(undefined4 *)(lVar6 + 0x24),
                     *(undefined4 *)(lVar6 + 0x28),*(undefined4 *)(lVar6 + 0x2c),plVar9,
                     *(undefined8 *)(*plVar9 + 0x2b0));
          uVar8 = *(undefined8 *)(param_1 + 0x60);
          if (*(int *)(*(long *)puVar1 + 0xe4) == 0) {
            func_0x029f5bd0();
          }
          uVar3 = Object_op_Inequality_0x6000ded(uVar8,0,0);
          if ((uVar3 & 1) != 0) {
            if (*(long *)(param_1 + 0x60) == 0) break;
            GameObject_SetActive_0x6000cfe(*(long *)(param_1 + 0x60),param_2 != 0,0);
          }
          uVar8 = *(undefined8 *)(param_1 + 0x68);
          if (*(int *)(*(long *)puVar1 + 0xe4) == 0) {
            func_0x029f5bd0();
          }
          uVar3 = Object_op_Inequality_0x6000ded(uVar8,0,0);
          if ((uVar3 & 1) != 0) {
            if (*(long *)(param_1 + 0x68) == 0) break;
            GameObject_SetActive_0x6000cfe(*(long *)(param_1 + 0x68),(int)param_2 < 0xc,0);
          }
          lVar6 = Component_get_gameObject_0x6000c83(param_1,0);
          if (lVar6 != 0) {
            GameObject_SetActive_0x6000cfe(lVar6,1,0);
            return;
          }
          break;
        }
        if (*(uint *)(lVar6 + 0x18) <= uVar7) goto LAB_02c609c8;
        lVar6 = *(long *)(lVar6 + lVar4 * 8 + 0x20);
        if (lVar6 == 0) break;
        GameObject_SetActive_0x6000cfe(lVar6,param_2 == uVar7,0);
        lVar6 = *(long *)(param_1 + 0x50);
        lVar4 = lVar4 + 1;
      } while (lVar6 != 0);
    }
  }
LAB_02c608ec:
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

