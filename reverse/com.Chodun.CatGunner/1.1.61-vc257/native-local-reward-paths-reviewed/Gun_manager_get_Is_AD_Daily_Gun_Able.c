/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b6a0ac, Ghidra VA 02c6a0ac. */

uint Gun_manager_get_Is_AD_Daily_Gun_Able(long param_1)

{
  undefined *puVar1;
  uint uVar2;
  ulong uVar3;
  undefined8 uVar4;
  undefined8 uVar5;
  
  puVar1 = PTR_DAT_05e5d6a8;
  if ((bRam000000000625c274 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e5d6a8);
    bRam000000000625c274 = 1;
  }
  if (*(int *)(*(long *)puVar1 + 0xe4) == 0) {
    func_0x029f5bd0();
  }
  uVar3 = ServerConfig_manager_get_Weapon01AdOn_0x60004c0(0);
  if (((uVar3 & 1) == 0) || (uVar3 = Gun_manager_get_Is_AD_Daily_Gun_Unlocked(), (uVar3 & 1) == 0))
  {
    uVar2 = 0;
  }
  else {
    uVar5 = *(undefined8 *)(param_1 + 0xb8);
    uVar4 = Gun_manager_get_AD_Daily_TodayKey_0x6000a72();
    uVar2 = String_op_Equality_0x600025a(uVar5,uVar4,0);
    uVar2 = uVar2 ^ 1;
  }
  return uVar2 & 1;
}

