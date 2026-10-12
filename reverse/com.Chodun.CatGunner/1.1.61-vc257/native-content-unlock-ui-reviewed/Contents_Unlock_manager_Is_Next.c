/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2a9e348, Ghidra VA 02b9e348. */

bool Contents_Unlock_manager_Is_Next(undefined4 param_1)

{
  undefined *puVar1;
  bool bVar2;
  int iVar3;
  int iVar4;
  ulong uVar5;
  
  puVar1 = PTR_DAT_05e5e4d0;
  if ((bRam000000000625b9e7 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e5e4d0);
    bRam000000000625b9e7 = 1;
  }
  if (*(int *)(*(long *)puVar1 + 0xe4) == 0) {
    func_0x029f5bd0();
  }
  uVar5 = Contents_Unlock_manager_Is_Unlocked(param_1);
  if ((uVar5 & 1) == 0) {
    if (*(int *)(*(long *)puVar1 + 0xe4) == 0) {
      func_0x029f5bd0();
    }
    iVar3 = Contents_Unlock_manager_Unlock_Stage_return(param_1);
    iVar4 = Contents_Unlock_manager_Next_Unlock_Stage_return();
    bVar2 = iVar3 == iVar4;
  }
  else {
    bVar2 = false;
  }
  return bVar2;
}

