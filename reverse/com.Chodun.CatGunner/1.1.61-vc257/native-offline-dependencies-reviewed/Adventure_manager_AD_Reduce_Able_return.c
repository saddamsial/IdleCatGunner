/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b2f174, Ghidra VA 02c2f174. */

bool Adventure_manager_AD_Reduce_Able_return(long param_1,undefined4 param_2,int param_3)

{
  undefined *puVar1;
  bool bVar2;
  int iVar3;
  ulong uVar4;
  
  puVar1 = PTR_DAT_05e5e0b8;
  if ((bRam000000000625c019 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e5e0b8);
    bRam000000000625c019 = 1;
  }
  if (*(int *)(*(long *)puVar1 + 0xe4) == 0) {
    func_0x029f5bd0();
  }
  uVar4 = PlusPack_Is_Active_0x6000d35(2,0);
  if ((((uVar4 & 1) == 0) &&
      (iVar3 = Adventure_manager_Max_Unlocked_Map_Index_return_0x6000655(param_1), iVar3 == param_3)
      ) && (iVar3 = Adventure_manager_Map_Status_return_0x6000645(param_1,param_2,param_3),
           iVar3 == 2)) {
    Adventure_manager_AD_Reduce_DayCheck(param_1);
    bVar2 = *(int *)(param_1 + 0x78) + -3 < -1;
  }
  else {
    bVar2 = false;
  }
  return bVar2;
}

