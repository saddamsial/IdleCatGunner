/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b4a5ac, Ghidra VA 02c4a5ac. */

int Mine_manager_SweepReward_return(long param_1)

{
  int iVar1;
  int iVar2;
  undefined *puVar3;
  undefined *puVar4;
  ulong uVar5;
  float fVar6;
  
  puVar4 = PTR_DAT_05e5e0b8;
  if ((bRam000000000625c118 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e5e0b8);
    func_0x029f5a50(PTR_DAT_05e5d920);
    bRam000000000625c118 = 1;
  }
  puVar3 = PTR_DAT_05e5d920;
  iVar2 = *(int *)(param_1 + 0x60);
  if (*(int *)(*(long *)puVar4 + 0xe4) == 0) {
    func_0x029f5bd0();
  }
  fVar6 = (float)PlusPack_get_Reward_Mult_Mine_0x6000d2d(0);
  if (*(int *)(*(long *)puVar3 + 0xe4) == 0) {
    func_0x029f5bd0();
  }
  fVar6 = fVar6 * (float)iVar2;
  iVar2 = -0x80000000;
  if (fVar6 != INFINITY) {
    iVar2 = (int)fVar6;
  }
  uVar5 = Shop_manager_get_Is_RewardBonus_Auto_0x6000d61(0);
  iVar1 = iVar2 << 2;
  if ((uVar5 & 1) == 0) {
    iVar1 = iVar2;
  }
  return iVar1;
}

