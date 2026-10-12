/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b7c8fc, Ghidra VA 02c7c8fc. */

void Pet_manager_InitLockArrays(long param_1)

{
  undefined8 uVar1;
  undefined4 uVar2;
  undefined8 *puVar3;
  
  if (*(long *)(param_1 + 0x38) != 0) {
    puVar3 = (undefined8 *)(param_1 + 0x40);
    uVar1 = Pet_manager_FitLockArray
                      (param_1,*puVar3,*(undefined4 *)(*(long *)(param_1 + 0x38) + 0x18));
    *puVar3 = uVar1;
    uVar1 = Managed_WriteBarrier(puVar3,uVar1);
    if (*(long *)(param_1 + 0x30) == 0) {
      uVar2 = 0;
    }
    else {
      uVar2 = *(undefined4 *)(*(long *)(param_1 + 0x30) + 0x18);
    }
    puVar3 = (undefined8 *)(param_1 + 0x48);
    uVar1 = Pet_manager_FitLockArray(uVar1,*puVar3,uVar2);
    *puVar3 = uVar1;
    Managed_WriteBarrier(puVar3);
    return;
  }
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

