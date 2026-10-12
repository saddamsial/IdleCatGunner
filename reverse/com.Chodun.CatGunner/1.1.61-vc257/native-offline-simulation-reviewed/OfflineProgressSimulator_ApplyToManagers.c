/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b07084, Ghidra VA 02c07084. */

void OfflineProgressSimulator_ApplyToManagers(long param_1)

{
  uint uVar1;
  undefined *puVar2;
  undefined *puVar3;
  undefined *puVar4;
  long lVar5;
  long lVar6;
  undefined8 uVar7;
  undefined8 uVar8;
  undefined8 uVar9;
  undefined8 uStack_90;
  undefined8 uStack_88;
  undefined8 uStack_80;
  undefined8 uStack_78;
  undefined8 uStack_70;
  undefined8 uStack_68;
  undefined8 uStack_60;
  undefined8 uStack_58;
  undefined8 uStack_50;
  undefined8 uStack_48;
  undefined8 uStack_40;
  undefined8 uStack_38;
  
  if ((bRam000000000625be7e & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e5d338);
    func_0x029f5a50(PTR_DAT_05e5d790);
    func_0x029f5a50(PTR_DAT_05e5dc20);
    func_0x029f5a50(PTR_DAT_05e5d4e8);
    bRam000000000625be7e = 1;
  }
  puVar3 = PTR_DAT_05e5d4e8;
  puVar2 = PTR_DAT_05e5d338;
  if (param_1 == 0) {
    return;
  }
  uStack_48 = *(undefined8 *)(param_1 + 0x40);
  uStack_50 = *(undefined8 *)(param_1 + 0x38);
  uStack_38 = *(undefined8 *)(param_1 + 0x50);
  uStack_40 = *(undefined8 *)(param_1 + 0x48);
  lVar5 = *(long *)PTR_DAT_05e5d338;
  if (*(int *)(lVar5 + 0xe4) == 0) {
    func_0x029f5bd0();
    lVar5 = *(long *)puVar2;
  }
  lVar6 = *(long *)(lVar5 + 0xb8);
  *(undefined8 *)(lVar6 + 0x38) = uStack_48;
  *(undefined8 *)(lVar6 + 0x30) = uStack_50;
  *(undefined8 *)(lVar6 + 0x48) = uStack_38;
  *(undefined8 *)(lVar6 + 0x40) = uStack_40;
  puVar4 = PTR_DAT_05e5d790;
  Managed_WriteBarrier(*(long *)(lVar5 + 0xb8) + 0x30,0);
  lVar5 = *(long *)puVar2;
  uVar7 = *(undefined8 *)(param_1 + 0x58);
  uVar9 = *(undefined8 *)(param_1 + 0x70);
  uVar8 = *(undefined8 *)(param_1 + 0x68);
  lVar6 = *(long *)(lVar5 + 0xb8);
  *(undefined8 *)(lVar6 + 0x58) = *(undefined8 *)(param_1 + 0x60);
  *(undefined8 *)(lVar6 + 0x50) = uVar7;
  *(undefined8 *)(lVar6 + 0x68) = uVar9;
  *(undefined8 *)(lVar6 + 0x60) = uVar8;
  Managed_WriteBarrier(*(long *)(lVar5 + 0xb8) + 0x50,0);
  Gamemanager_InvalidateMoneyCache_0x6000071(0);
  InfVal_op_Implicit_0x600003f(&uStack_70,0,0);
  uStack_88 = uStack_68;
  uStack_90 = uStack_70;
  uStack_78 = uStack_58;
  uStack_80 = uStack_60;
  Gamemanager_Get_Money_0x6000074(&uStack_90,0);
  lVar5 = *(long *)puVar3;
  if (*(int *)(lVar5 + 0xe4) == 0) {
    func_0x029f5bd0();
    lVar5 = *(long *)puVar3;
  }
  lVar6 = **(long **)(lVar5 + 0xb8);
  lVar5 = func_0x029f5b40(*(undefined8 *)puVar4,3);
  if (lVar5 != 0) {
    uVar1 = *(uint *)(lVar5 + 0x18);
    if (((uVar1 == 0) ||
        (*(undefined4 *)(lVar5 + 0x20) = *(undefined4 *)(param_1 + 0x78), uVar1 == 1)) ||
       (*(undefined4 *)(lVar5 + 0x24) = *(undefined4 *)(param_1 + 0x7c), uVar1 < 3)) {
                    /* WARNING: Subroutine does not return */
      Throw_Index_Wrapper();
    }
    *(undefined4 *)(lVar5 + 0x28) = *(undefined4 *)(param_1 + 0x80);
    puVar2 = PTR_DAT_05e5dc20;
    if (lVar6 != 0) {
      Upgrade_manager_Firse_reload_0x6000f8a(lVar6,lVar5,0);
      lVar5 = *(long *)puVar2;
      if (*(int *)(lVar5 + 0xe4) == 0) {
        func_0x029f5bd0();
        lVar5 = *(long *)puVar2;
      }
      lVar5 = *(long *)(*(long *)(lVar5 + 0xb8) + 0x10);
      if (lVar5 != 0) {
        *(undefined8 *)(lVar5 + 0x28) = *(undefined8 *)(param_1 + 0x90);
        *(undefined4 *)(lVar5 + 0x30) = *(undefined4 *)(param_1 + 0x98);
        Tree_manager_Contents_Lock_Reload_0x6000efe(lVar5,0);
        return;
      }
    }
  }
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

