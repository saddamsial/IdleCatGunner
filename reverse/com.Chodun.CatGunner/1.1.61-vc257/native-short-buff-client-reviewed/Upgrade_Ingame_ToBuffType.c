/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2bb0de8, Ghidra VA 02cb0de8. */

ulong Upgrade_Ingame_ToBuffType(uint param_1)

{
  undefined4 uVar1;
  undefined *puVar2;
  int iVar3;
  undefined8 uVar4;
  undefined8 uVar5;
  long lVar6;
  ulong uVar7;
  
  if (param_1 < 3) {
    return (ulong)*(uint *)(&UNK_011b07ec + (ulong)param_1 * 4);
  }
  func_0x029f5a64(PTR_DAT_05e59ae0);
  uVar4 = func_0x029f5cec();
  uVar5 = func_0x029f5a64(PTR_DAT_05e64b68);
  ArgumentOutOfRangeException__ctor_0x60003f0(uVar4,uVar5,0);
  uVar5 = func_0x029f5a64(PTR_DAT_05e64b70);
  lVar6 = func_0x029f5bc0(uVar4,uVar5);
  puVar2 = PTR_DAT_05e5d4e8;
  if ((bRam000000000625c547 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e5d4e8);
    bRam000000000625c547 = 1;
  }
  uVar1 = *(undefined4 *)(lVar6 + 0x20);
  if (*(int *)(*(long *)puVar2 + 0xe4) == 0) {
    func_0x029f5bd0();
  }
  iVar3 = Upgrade_manager_Lv_return_0x6000f92(uVar1);
  if (iVar3 != *(int *)(lVar6 + 0xbc)) {
    Upgrade_Ingame_Reload_Level_0x6000f71(lVar6,iVar3);
  }
  Upgrade_Ingame_Reload_Money_0x6000f72(lVar6);
  uVar7 = Upgrade_Ingame_Reload_Buff(lVar6);
  return uVar7;
}

