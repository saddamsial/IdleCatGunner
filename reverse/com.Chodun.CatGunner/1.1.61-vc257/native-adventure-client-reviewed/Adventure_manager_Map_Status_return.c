/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b2e5f8, Ghidra VA 02c2e5f8. */

undefined4
Adventure_manager_Map_Status_return(undefined8 param_1,undefined4 param_2,undefined4 param_3)

{
  ulong uVar1;
  undefined4 uVar2;
  
  uVar1 = Adventure_manager_is_Unlock_return(param_1,param_3);
  if ((uVar1 & 1) == 0) {
    uVar2 = 0;
  }
  else {
    uVar1 = Adventure_manager_is_Entered_return(param_1,param_2,param_3);
    if ((uVar1 & 1) == 0) {
      uVar2 = 1;
    }
    else {
      uVar1 = Adventure_manager_is_Finish_return(param_1,param_2,param_3);
      uVar2 = 2;
      if ((uVar1 & 1) != 0) {
        uVar2 = 3;
      }
    }
  }
  return uVar2;
}

