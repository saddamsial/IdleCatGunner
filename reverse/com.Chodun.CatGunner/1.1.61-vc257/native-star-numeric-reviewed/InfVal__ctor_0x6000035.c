/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x455632c, Ghidra VA 0465632c. */

void InfVal__ctor_0x6000035(undefined8 *param_1,undefined8 param_2,undefined8 param_3,ulong param_4)

{
  uint uVar1;
  undefined *puVar2;
  undefined *puVar3;
  int iVar4;
  uint uVar5;
  undefined8 uVar6;
  ulong uVar7;
  long lVar8;
  long *plVar9;
  long lVar10;
  long lVar11;
  long lVar12;
  undefined8 *extraout_x8;
  undefined8 uStack_c8;
  long lStack_c0;
  ulong uStack_b8;
  ulong uStack_b0;
  undefined8 *puStack_a8;
  undefined8 uStack_a0;
  undefined8 uStack_98;
  undefined8 uStack_90;
  undefined8 uStack_88;
  undefined8 uStack_80;
  undefined8 uStack_78;
  ulong uStack_70;
  undefined8 uStack_68;
  undefined8 uStack_60;
  long lStack_58;
  
  puVar2 = PTR_DAT_05e59760;
  lVar12 = tpidr_el0;
  lStack_58 = *(long *)(lVar12 + 0x28);
  uStack_70 = param_4;
  uStack_68 = param_2;
  uStack_60 = param_3;
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
  param_1[1] = 0;
  *param_1 = 0;
  param_1[3] = 0;
  param_1[2] = 0;
  puVar3 = PTR_DAT_05e59930;
  if (*(int *)(*(long *)puVar2 + 0xe4) == 0) {
    func_0x029f5bd0();
  }
  puVar2 = PTR_DAT_05e58a90;
  uVar6 = CultureInfo_get_InvariantCulture_0x6002ba4(0);
  if (*(int *)(*(long *)puVar3 + 0xe4) == 0) {
    func_0x029f5bd0(*(long *)puVar3);
  }
  uVar7 = Decimal_ToString_0x600110c(&uStack_68,uVar6,0);
  lVar8 = func_0x029f5b40(*(undefined8 *)puVar2,1);
  plVar9 = (long *)CultureInfo_get_InvariantCulture_0x6002ba4(0);
  if (plVar9 != (long *)0x0) {
    lVar10 = (**(code **)(*plVar9 + 0x218))(plVar9,*(undefined8 *)(*plVar9 + 0x220));
    if ((lVar10 != 0) && (lVar8 != 0)) {
      if (*(int *)(lVar8 + 0x18) == 0) {
LAB_046565e0:
        if (*(long *)(lVar12 + 0x28) == lStack_58) {
                    /* WARNING: Subroutine does not return */
          Throw_Index_Wrapper();
        }
        goto LAB_04656660;
      }
      *(undefined8 *)(lVar8 + 0x20) = *(undefined8 *)(lVar10 + 0x38);
      Managed_WriteBarrier();
      lVar10 = func_0x029f5b40(*(undefined8 *)puVar2,1);
      plVar9 = (long *)CultureInfo_get_InvariantCulture_0x6002ba4(0);
      if (plVar9 != (long *)0x0) {
        lVar11 = (**(code **)(*plVar9 + 0x218))(plVar9,*(undefined8 *)(*plVar9 + 0x220));
        puVar3 = PTR_DAT_05e71980;
        puVar2 = PTR_DAT_05e718d8;
        if ((lVar11 != 0) && (lVar10 != 0)) {
          if (*(int *)(lVar10 + 0x18) != 0) {
            *(undefined8 *)(lVar10 + 0x20) = *(undefined8 *)(lVar11 + 0x40);
            Managed_WriteBarrier();
            lVar11 = *(long *)puVar2;
            if (*(int *)(lVar11 + 0xe4) == 0) {
              func_0x029f5bd0();
              lVar11 = *(long *)puVar2;
            }
            uStack_88 = 0;
            uStack_80 = 0;
            uStack_78 = 0;
            func_0x03baabe0(&uStack_88,lVar8,lVar10,*(undefined8 *)(*(long *)(lVar11 + 0xb8) + 8),
                            *(undefined8 *)puVar3);
            uStack_98 = uStack_80;
            uStack_a0 = uStack_88;
            uStack_90 = uStack_78;
            InfVal_SetValueFromString_0x60000b8(param_1,uVar7,0,&uStack_a0,0);
            puVar2 = PTR_DAT_05e66730;
            if ((param_4 & 0xff) == 0) {
              uVar5 = *(uint *)(param_1 + 1);
              iVar4 = InfVal_get_precision_0x6000097(param_1);
              iVar4 = uVar5 + iVar4 + -0x1d;
            }
            else {
              iVar4 = func_0x035f6da8(&uStack_70,*(undefined8 *)PTR_DAT_05e66730);
              if (iVar4 < 1) {
                func_0x029f5a64(PTR_DAT_05e65dc8);
                param_1 = (undefined8 *)func_0x029f5cec();
                param_4 = func_0x029f5a64(PTR_DAT_05e71960);
                uVar6 = func_0x029f5a64(PTR_DAT_05e71968);
                ArgumentException__ctor_0x60003e7(param_1,param_4,uVar6,0);
                uVar6 = func_0x029f5a64(PTR_DAT_05e719c8);
                if (*(long *)(lVar12 + 0x28) == lStack_58) {
                  func_0x029f5bc0(param_1,uVar6);
                }
                goto LAB_04656660;
              }
              uVar1 = *(uint *)(param_1 + 1);
              uVar7 = (ulong)uVar1;
              uVar5 = InfVal_get_precision_0x6000097(param_1);
              iVar4 = func_0x035f6da8(&uStack_70,*(undefined8 *)puVar2);
              iVar4 = (uVar5 + uVar1) - iVar4;
            }
            param_4 = (ulong)uVar5;
            InfVal_set_exponent_0x6000096(param_1,iVar4);
            if (*(long *)(lVar12 + 0x28) == lStack_58) {
              return;
            }
            goto LAB_04656660;
          }
          goto LAB_046565e0;
        }
      }
    }
  }
  if (*(long *)(lVar12 + 0x28) == lStack_58) {
                    /* WARNING: Subroutine does not return */
    Throw_NullReference_Wrapper();
  }
LAB_04656660:
  lVar12 = func_0x05afb240();
  puVar2 = PTR_DAT_05e5a290;
  lStack_c0 = lVar8;
  uStack_b8 = uVar7;
  uStack_b0 = param_4;
  puStack_a8 = param_1;
  if ((bRam00000000062609e8 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e5a290);
    bRam00000000062609e8 = 1;
  }
  uStack_c8 = 0;
  func_0x035f6d90(&uStack_c8,*(undefined4 *)(lVar12 + 0x20),*(undefined8 *)puVar2);
  extraout_x8[1] = 0;
  *extraout_x8 = 0;
  extraout_x8[3] = 0;
  extraout_x8[2] = 0;
  InfVal__ctor_0x6000028(extraout_x8,lVar12,uStack_c8);
  return;
}

