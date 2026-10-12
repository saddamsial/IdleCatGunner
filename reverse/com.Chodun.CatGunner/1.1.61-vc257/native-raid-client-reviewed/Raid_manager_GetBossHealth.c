/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b59584, Ghidra VA 02c59584. */

void Raid_manager_GetBossHealth(undefined8 *param_1,long param_2)

{
  undefined4 uVar1;
  undefined *puVar2;
  undefined8 uStack_50;
  undefined8 uStack_48;
  undefined8 uStack_40;
  undefined8 uStack_38;
  
  puVar2 = PTR_DAT_05e5e070;
  if ((bRam000000000625c1b6 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e5e070);
    bRam000000000625c1b6 = 1;
  }
  uVar1 = *(undefined4 *)(param_2 + 0xb0);
  if (*(int *)(*(long *)puVar2 + 0xe4) == 0) {
    func_0x029f5bd0();
  }
  Raid_manager_Boss_Health_return(&uStack_50,uVar1);
  param_1[1] = uStack_48;
  *param_1 = uStack_50;
  param_1[3] = uStack_38;
  param_1[2] = uStack_40;
  return;
}

