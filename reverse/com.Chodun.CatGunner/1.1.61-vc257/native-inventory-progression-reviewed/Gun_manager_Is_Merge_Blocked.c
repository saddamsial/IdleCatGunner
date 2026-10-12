/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b68364, Ghidra VA 02c68364. */

undefined8 Gun_manager_Is_Merge_Blocked(undefined8 param_1,undefined8 param_2,undefined4 param_3)

{
  ulong uVar1;
  undefined8 uVar2;
  
  uVar1 = Gun_manager_Is_Owned_Paused_0x6000a4c();
  if ((uVar1 & 1) != 0) {
    return 1;
  }
  uVar2 = Gun_manager_Is_Owned_Paused_0x6000a4c(param_1,param_3);
  return uVar2;
}

