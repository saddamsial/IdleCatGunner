/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b88ae4, Ghidra VA 02c88ae4. */

void Rebirth_Upgrade_Item_Reload(long param_1)

{
  int iVar1;
  undefined *puVar2;
  undefined *puVar3;
  int iVar4;
  uint uVar5;
  long lVar6;
  undefined8 uVar7;
  long lVar8;
  long *plVar9;
  undefined4 uVar10;
  undefined4 uVar11;
  undefined4 uVar12;
  undefined4 uVar13;
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
  
  puVar2 = PTR_DAT_05e5dd60;
  if ((bRam000000000625c397 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e5d338);
    func_0x029f5a50(PTR_DAT_05e58be8);
    func_0x029f5a50(PTR_DAT_05e5dd60);
    func_0x029f5a50(PTR_DAT_05e61f18);
    func_0x029f5a50(PTR_DAT_05e63080);
    func_0x029f5a50(PTR_DAT_05e63810);
    bRam000000000625c397 = 1;
  }
  puVar3 = PTR_DAT_05e63810;
  uStack_88 = 0;
  uStack_90 = 0;
  uStack_78 = 0;
  uStack_80 = 0;
  uStack_68 = 0;
  uStack_70 = 0;
  uStack_58 = 0;
  uStack_60 = 0;
  if ((**(long **)(*(long *)puVar2 + 0xb8) != 0) &&
     (lVar8 = *(long *)(**(long **)(*(long *)puVar2 + 0xb8) + 0x20), lVar8 != 0)) {
    if (*(uint *)(lVar8 + 0x18) <= *(uint *)(param_1 + 0x20)) {
                    /* WARNING: Subroutine does not return */
      Throw_Index_Wrapper();
    }
    lVar8 = *(long *)(lVar8 + (long)(int)*(uint *)(param_1 + 0x20) * 8 + 0x20);
    if (lVar8 != 0) {
      iVar4 = ObscuredInt_op_Implicit_0x6000412
                        (*(undefined8 *)(lVar8 + 0x18),*(undefined8 *)(lVar8 + 0x20),0);
      iVar1 = *(int *)(lVar8 + 0x28);
      Rebirth_Upgrade_Info_Price_return_0x6000c99(&uStack_b0,lVar8);
      puVar2 = PTR_DAT_05e5d338;
      uStack_68 = uStack_a8;
      uStack_70 = uStack_b0;
      uStack_58 = uStack_98;
      uStack_60 = uStack_a0;
      if (iVar4 < iVar1) {
        lVar6 = *(long *)PTR_DAT_05e5d338;
        if (*(int *)(lVar6 + 0xe4) == 0) {
          func_0x029f5bd0();
          lVar6 = *(long *)puVar2;
        }
        uVar5 = InfVal_op_GreaterThanOrEqual_0x6000081(*(long *)(lVar6 + 0xb8) + 0x70,&uStack_70,0);
      }
      else {
        uVar5 = 0;
      }
      plVar9 = *(long **)(param_1 + 0x28);
      Rebirth_Upgrade_Info_Value_return_0x6000c9a(&uStack_b0,lVar8);
      uStack_88 = uStack_a8;
      uStack_90 = uStack_b0;
      uStack_78 = uStack_98;
      uStack_80 = uStack_a0;
      uVar7 = InfVal_InfVal_change_0x60000a8(&uStack_90,0);
      uVar7 = String_Format_0x600029c(*(undefined8 *)puVar3,uVar7,0);
      puVar3 = PTR_DAT_05e61f18;
      puVar2 = PTR_DAT_05e58be8;
      if (plVar9 != (long *)0x0) {
        (**(code **)(*plVar9 + 0x558))(plVar9,uVar7,*(undefined8 *)(*plVar9 + 0x560));
        uStack_b8 = *(undefined8 *)(lVar8 + 0x20);
        uStack_c0 = *(undefined8 *)(lVar8 + 0x18);
        plVar9 = *(long **)(param_1 + 0x30);
        uVar7 = func_0x029f5bd8(*(undefined8 *)puVar2,&uStack_c0);
        uVar7 = String_Format_0x600029c(*(undefined8 *)puVar3,uVar7,0);
        if (plVar9 != (long *)0x0) {
          (**(code **)(*plVar9 + 0x558))(plVar9,uVar7,*(undefined8 *)(*plVar9 + 0x560));
          plVar9 = *(long **)(param_1 + 0x38);
          if (iVar4 < iVar1) {
            uVar7 = InfVal_InfVal_change_0x60000a8(&uStack_70,0);
          }
          else {
            uVar7 = *(undefined8 *)PTR_DAT_05e63080;
          }
          if (plVar9 != (long *)0x0) {
            (**(code **)(*plVar9 + 0x558))(plVar9,uVar7,*(undefined8 *)(*plVar9 + 0x560));
            uVar13 = 0x3f800000;
            uVar12 = 0x3f800000;
            plVar9 = *(long **)(param_1 + 0x38);
            uVar11 = 0x3f800000;
            uVar10 = 0x3f800000;
            if ((uVar5 & 1) == 0) {
              uVar10 = *(undefined4 *)(param_1 + 0x40);
              uVar11 = *(undefined4 *)(param_1 + 0x44);
              uVar12 = *(undefined4 *)(param_1 + 0x48);
              uVar13 = *(undefined4 *)(param_1 + 0x4c);
            }
            if (plVar9 != (long *)0x0) {
              (**(code **)(*plVar9 + 0x2a8))
                        (uVar10,uVar11,uVar12,uVar13,plVar9,*(undefined8 *)(*plVar9 + 0x2b0));
              if (*(long *)(param_1 + 0x50) != 0) {
                Selectable_set_interactable_0x6000435(*(long *)(param_1 + 0x50),uVar5 & 1,0);
                return;
              }
            }
          }
        }
      }
    }
  }
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

