/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b95830, Ghidra VA 02c95830. */

uint Shop_manager_ApplyCoreReward(undefined8 param_1,undefined8 param_2)

{
  undefined *puVar1;
  undefined *puVar2;
  int iVar3;
  uint uVar4;
  uint uVar5;
  undefined8 uVar6;
  undefined8 uVar7;
  long lVar8;
  uint uStack_28;
  int iStack_24;
  
  if ((bRam000000000625c42f & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e5dd28);
    func_0x029f5a50(PTR_DAT_05e5d920);
    param_1 = func_0x029f5a50(PTR_DAT_05e5d3c0);
    bRam000000000625c42f = 1;
  }
  iStack_24 = 0;
  uVar4 = Shop_manager_TryGetCoreTypeFromId(param_1,param_2,&iStack_24);
  iVar3 = iStack_24;
  puVar2 = PTR_DAT_05e5dd28;
  puVar1 = PTR_DAT_05e5d920;
  if ((uVar4 & 1) != 0) {
    if (*(int *)(*(long *)PTR_DAT_05e5d920 + 0xe4) == 0) {
      func_0x029f5bd0();
    }
    uVar5 = Shop_manager_Core_Amount_return(iVar3);
    if (*(int *)(*(long *)puVar2 + 0xe4) == 0) {
      func_0x029f5bd0(*(long *)puVar2);
    }
    Adventure_manager_Core_Get_0x600062d(3,uVar5,0);
    if (iVar3 == 6) {
      if (*(int *)(*(long *)PTR_DAT_05e5d3c0 + 0xe4) == 0) {
        func_0x029f5bd0();
      }
      uVar6 = Time_manager_get_Now_0x6000579(0);
      lVar8 = *(long *)puVar1;
      if (*(int *)(lVar8 + 0xe4) == 0) {
        func_0x029f5bd0(lVar8);
        lVar8 = *(long *)puVar1;
      }
      *(undefined8 *)(*(long *)(lVar8 + 0xb8) + 0x20) = uVar6;
    }
    else if (iVar3 == 5) {
      if (*(int *)(*(long *)PTR_DAT_05e5d3c0 + 0xe4) == 0) {
        func_0x029f5bd0();
      }
      uVar6 = Time_manager_get_Now_0x6000579(0);
      lVar8 = *(long *)puVar1;
      if (*(int *)(lVar8 + 0xe4) == 0) {
        func_0x029f5bd0(lVar8);
        lVar8 = *(long *)puVar1;
      }
      *(undefined8 *)(*(long *)(lVar8 + 0xb8) + 0x18) = uVar6;
    }
    else if (iVar3 == 4) {
      if (*(int *)(*(long *)PTR_DAT_05e5d3c0 + 0xe4) == 0) {
        func_0x029f5bd0();
      }
      uVar6 = Time_manager_get_Now_0x6000579(0);
      lVar8 = *(long *)puVar1;
      if (*(int *)(lVar8 + 0xe4) == 0) {
        func_0x029f5bd0(lVar8);
        lVar8 = *(long *)puVar1;
      }
      *(undefined8 *)(*(long *)(lVar8 + 0xb8) + 0x10) = uVar6;
    }
    SaveSystem_Save_0x600048a(0);
    uVar6 = Alarm_get_PurchaseCore_0x60012fa(0);
    uStack_28 = uVar5;
    uVar7 = func_0x029f5bd8(*(undefined8 *)(PTR_DAT_05e58a10 + 0x48),&uStack_28);
    uVar6 = String_Format_0x600029c(uVar6,uVar7,0);
    if (*(int *)(*(long *)puVar1 + 0xe4) == 0) {
      func_0x029f5bd0(*(long *)puVar1);
    }
    Shop_manager_SafeAlert_0x6000da6(uVar6);
    lVar8 = *(long *)(*(long *)(*(long *)puVar1 + 0xb8) + 0x58);
    if (lVar8 != 0) {
      (**(code **)(lVar8 + 0x18))(*(undefined8 *)(lVar8 + 0x40),*(undefined8 *)(lVar8 + 0x28));
    }
  }
  return uVar4 & 1;
}

