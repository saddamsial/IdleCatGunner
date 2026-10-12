/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b8b4e4, Ghidra VA 02c8b4e4. */

bool DailyGun_Is_Purchasable(undefined8 param_1,uint param_2)

{
  int iVar1;
  
  if (param_2 < 3) {
    DailyGun_Week_Refresh();
    iVar1 = DailyGun_Remain_Count_return(param_1,param_2);
    return 0 < iVar1;
  }
  return false;
}

