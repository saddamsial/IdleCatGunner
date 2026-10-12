/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b7ca5c, Ghidra VA 02c7ca5c. */

void Pet_manager_LoadLockGroups(long param_1,undefined8 param_2,undefined8 param_3)

{
  undefined8 uVar1;
  undefined4 uVar2;
  
  if (*(long *)(param_1 + 0x38) == 0) {
    uVar2 = 0;
  }
  else {
    uVar2 = *(undefined4 *)(*(long *)(param_1 + 0x38) + 0x18);
  }
  uVar1 = Pet_manager_FitLockArray(param_1,param_2,uVar2);
  *(undefined8 *)(param_1 + 0x40) = uVar1;
  uVar1 = Managed_WriteBarrier((undefined8 *)(param_1 + 0x40),uVar1);
  if (*(long *)(param_1 + 0x30) == 0) {
    uVar2 = 0;
  }
  else {
    uVar2 = *(undefined4 *)(*(long *)(param_1 + 0x30) + 0x18);
  }
  uVar1 = Pet_manager_FitLockArray(uVar1,param_3,uVar2);
  *(undefined8 *)(param_1 + 0x48) = uVar1;
  Managed_WriteBarrier((undefined8 *)(param_1 + 0x48),uVar1);
  return;
}

