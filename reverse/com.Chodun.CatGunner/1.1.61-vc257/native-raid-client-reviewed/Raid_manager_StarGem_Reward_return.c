/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b5704c, Ghidra VA 02c5704c. */

int Raid_manager_StarGem_Reward_return(int param_1)

{
  undefined *puVar1;
  int iVar2;
  int iVar3;
  int iVar4;
  
  if ((bRam000000000625c19d & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e5e070);
    bRam000000000625c19d = 1;
  }
  puVar1 = PTR_DAT_05e5e070;
  if (param_1 < 1) {
    iVar3 = 0;
  }
  else {
    iVar3 = 0;
    iVar4 = 1;
    do {
      if (*(int *)(*(long *)puVar1 + 0xe4) == 0) {
        func_0x029f5bd0();
      }
      iVar2 = Raid_manager_StarGem_Per_Level_return(iVar4);
      iVar4 = iVar4 + 1;
      iVar3 = iVar2 + iVar3;
    } while (iVar4 <= param_1);
  }
  return iVar3;
}

