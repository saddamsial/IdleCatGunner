/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2a9e130, Ghidra VA 02b9e130. */

bool Contents_Unlock_manager_Is_Unlocked(undefined4 param_1)

{
  undefined *puVar1;
  int iVar2;
  int iVar3;
  
  puVar1 = PTR_DAT_05e5e4d0;
  if ((bRam000000000625b9e4 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e5e4d0);
    bRam000000000625b9e4 = 1;
  }
  if (*(int *)(*(long *)puVar1 + 0xe4) == 0) {
    func_0x029f5bd0();
  }
  iVar2 = Contents_Unlock_manager_get_MaxStage_Display();
  iVar3 = Contents_Unlock_manager_Unlock_Stage_return(param_1);
  return iVar3 <= iVar2;
}

