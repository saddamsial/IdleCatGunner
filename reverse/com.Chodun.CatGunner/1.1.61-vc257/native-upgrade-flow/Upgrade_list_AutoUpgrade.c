/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2bb2130, Ghidra VA 02cb2130. */

void Upgrade_list_AutoUpgrade(long param_1)

{
  undefined4 uVar1;
  undefined *puVar2;
  undefined *puVar3;
  int iVar4;
  ulong uVar5;
  long lVar6;
  long lVar7;
  ulong uVar8;
  uint uVar9;
  int iVar10;
  int iVar11;
  undefined8 uStack_90;
  undefined8 uStack_88;
  undefined8 uStack_80;
  undefined8 uStack_78;
  undefined8 uStack_70;
  undefined8 uStack_68;
  undefined8 uStack_60;
  undefined8 uStack_58;
  
  if ((bRam000000000625c551 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e5d338);
    func_0x029f5a50(PTR_DAT_05e5d4e8);
    bRam000000000625c551 = 1;
  }
  puVar3 = PTR_DAT_05e5d4e8;
  puVar2 = PTR_DAT_05e5d338;
  lVar7 = *(long *)(param_1 + 0x20);
  uStack_68 = 0;
  uStack_70 = 0;
  uStack_58 = 0;
  uStack_60 = 0;
  if (lVar7 != 0) {
    uVar9 = 0;
    iVar10 = 0x7fffffff;
    uVar8 = 0xffffffff;
    iVar11 = 0x7fffffff;
    do {
      while ((int)*(uint *)(lVar7 + 0x18) <= (int)uVar9) {
        if ((int)(uint)uVar8 < 0) {
          return;
        }
        lVar6 = *(long *)puVar3;
        if (*(int *)(lVar6 + 0xe4) == 0) {
          func_0x029f5bd0();
          lVar7 = *(long *)(param_1 + 0x20);
          if (lVar7 == 0) goto LAB_02cb22ec;
          lVar6 = *(long *)puVar3;
        }
        if (*(uint *)(lVar7 + 0x18) <= (uint)uVar8) goto LAB_02cb230c;
        lVar7 = *(long *)(lVar7 + uVar8 * 8 + 0x20);
        if ((lVar7 == 0) || (**(long **)(lVar6 + 0xb8) == 0)) goto LAB_02cb22ec;
        Upgrade_manager_Upgrade_0x6000f8d(**(long **)(lVar6 + 0xb8),*(undefined4 *)(lVar7 + 0x20));
        lVar7 = *(long *)(param_1 + 0x20);
        uVar9 = 0;
        iVar10 = 0x7fffffff;
        uVar8 = 0xffffffff;
        iVar11 = 0x7fffffff;
        if (lVar7 == 0) goto LAB_02cb22ec;
      }
      if (*(uint *)(lVar7 + 0x18) <= uVar9) {
LAB_02cb230c:
                    /* WARNING: Subroutine does not return */
        Throw_Index_Wrapper();
      }
      lVar7 = *(long *)(lVar7 + (long)(int)uVar9 * 8 + 0x20);
      if (lVar7 == 0) break;
      uVar1 = *(undefined4 *)(lVar7 + 0x20);
      if (*(int *)(*(long *)puVar3 + 0xe4) == 0) {
        func_0x029f5bd0();
      }
      uVar5 = Upgrade_manager_is_MaxLv(uVar1);
      if ((uVar5 & 1) == 0) {
        uVar1 = *(undefined4 *)(lVar7 + 0x20);
        if (*(int *)(*(long *)puVar3 + 0xe4) == 0) {
          func_0x029f5bd0();
        }
        Upgrade_manager_Price_return_0x6000f93(&uStack_90,uVar1);
        lVar6 = *(long *)puVar2;
        uStack_68 = uStack_88;
        uStack_70 = uStack_90;
        uStack_58 = uStack_78;
        uStack_60 = uStack_80;
        if (*(int *)(lVar6 + 0xe4) == 0) {
          func_0x029f5bd0();
          lVar6 = *(long *)puVar2;
        }
        uVar5 = InfVal_op_LessThan_0x600007e(*(long *)(lVar6 + 0xb8) + 0x30,&uStack_70,0);
        if ((uVar5 & 1) == 0) {
          uVar1 = *(undefined4 *)(lVar7 + 0x20);
          if (*(int *)(*(long *)puVar3 + 0xe4) == 0) {
            func_0x029f5bd0();
          }
          iVar4 = Upgrade_manager_Lv_return_0x6000f92(uVar1);
          if ((iVar4 < iVar10) || ((iVar4 == iVar10 && (*(int *)(lVar7 + 0x20) < iVar11)))) {
            uVar8 = (ulong)uVar9;
            iVar10 = iVar4;
            iVar11 = *(int *)(lVar7 + 0x20);
          }
        }
      }
      lVar7 = *(long *)(param_1 + 0x20);
      uVar9 = uVar9 + 1;
    } while (lVar7 != 0);
  }
LAB_02cb22ec:
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

