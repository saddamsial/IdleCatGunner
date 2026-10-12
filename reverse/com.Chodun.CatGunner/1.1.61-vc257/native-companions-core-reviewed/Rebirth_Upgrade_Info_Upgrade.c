/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b876cc, Ghidra VA 02c876cc. */

uint Rebirth_Upgrade_Info_Upgrade(long param_1)

{
  undefined *puVar1;
  undefined *puVar2;
  uint uVar3;
  int iVar4;
  undefined8 uVar5;
  long lVar6;
  undefined1 auVar7 [16];
  undefined8 uStack_70;
  undefined8 uStack_68;
  undefined8 uStack_60;
  undefined8 uStack_58;
  undefined8 uStack_50;
  undefined8 uStack_48;
  undefined8 uStack_40;
  undefined8 uStack_38;
  
  if ((bRam000000000625c38e & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e5d5b0);
    func_0x029f5a50(PTR_DAT_05e5d338);
    bRam000000000625c38e = 1;
  }
  uVar3 = Rebirth_Upgrade_Info_UpgradeAble_return_0x6000c9c(param_1);
  puVar2 = PTR_DAT_05e5d5b0;
  puVar1 = PTR_DAT_05e5d338;
  if ((uVar3 & 1) == 0) {
    if (cRam000000000625ba57 == '\0') {
      func_0x029f5a50(PTR_DAT_05e5dd70);
      cRam000000000625ba57 = '\x01';
    }
    lVar6 = **(long **)(*(long *)PTR_DAT_05e5dd70 + 0xb8);
    if (lVar6 != 0) {
      uVar5 = 5;
LAB_02c87834:
      Sound_manager_PlaySfx_0x600054a(0x3f800000,lVar6,uVar5,0,0);
      return uVar3 & 1;
    }
  }
  else {
    Rebirth_Upgrade_Info_Price_return_0x6000c99(&uStack_50,param_1);
    if (*(int *)(*(long *)puVar1 + 0xe4) == 0) {
      func_0x029f5bd0();
    }
    uStack_68 = uStack_48;
    uStack_70 = uStack_50;
    uStack_58 = uStack_38;
    uStack_60 = uStack_40;
    Gamemanager_Lose_Ruby_0x600007e(&uStack_70,0);
    iVar4 = ObscuredInt_op_Implicit_0x6000412
                      (*(undefined8 *)(param_1 + 0x18),*(undefined8 *)(param_1 + 0x20),0);
    auVar7 = ObscuredInt_op_Implicit_0x6000411(iVar4 + 1,0);
    *(undefined1 (*) [16])(param_1 + 0x18) = auVar7;
    iVar4 = ObscuredInt_op_Implicit_0x6000412(auVar7._0_8_,auVar7._8_8_,0);
    if (*(int *)(param_1 + 0x28) <= iVar4) {
      iVar4 = *(int *)(param_1 + 0x28);
    }
    auVar7 = ObscuredInt_op_Implicit_0x6000411(iVar4,0);
    lVar6 = *(long *)puVar2;
    *(undefined1 (*) [16])(param_1 + 0x18) = auVar7;
    lVar6 = *(long *)(*(long *)(lVar6 + 0xb8) + 8);
    if (lVar6 != 0) {
      Cat_manager_Balance_Reload_0x6000779(lVar6,0);
      if (cRam000000000625ba57 == '\0') {
        func_0x029f5a50(PTR_DAT_05e5dd70);
        cRam000000000625ba57 = '\x01';
      }
      lVar6 = **(long **)(*(long *)PTR_DAT_05e5dd70 + 0xb8);
      if (lVar6 != 0) {
        uVar5 = 4;
        goto LAB_02c87834;
      }
    }
  }
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

