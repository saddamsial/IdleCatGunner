/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b7e07c, Ghidra VA 02c7e07c. */

uint Pet_manager_get_Is_AD_Daily_Pet_Able(undefined8 param_1)

{
  uint uVar1;
  ulong uVar2;
  
  uVar2 = Pet_manager_get_Is_AD_Daily_Pet_Unlocked();
  if ((uVar2 & 1) == 0) {
    uVar1 = 0;
  }
  else {
    uVar1 = Pet_manager_get_Is_AD_Daily_Pet_Used_Today_0x6000be9(param_1);
    uVar1 = uVar1 ^ 1;
  }
  return uVar1 & 1;
}

