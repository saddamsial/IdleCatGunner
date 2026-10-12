/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b549f0, Ghidra VA 02c549f0. */

void Raid_Mission_manager_SendLog_MissionRaid(long param_1,undefined4 param_2,undefined4 param_3)

{
  undefined1 uVar1;
  undefined *puVar2;
  
  puVar2 = PTR_DAT_05e5d540;
  if ((bRam000000000625c184 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e5d540);
    bRam000000000625c184 = 1;
  }
  uVar1 = *(undefined1 *)(param_1 + 0x48);
  if (*(int *)(*(long *)puVar2 + 0xe4) == 0) {
    func_0x029f5bd0();
  }
  AppsFlyerInit_SendLog_MissionRaid_0x6000226(param_2,uVar1,param_3,0);
  return;
}

