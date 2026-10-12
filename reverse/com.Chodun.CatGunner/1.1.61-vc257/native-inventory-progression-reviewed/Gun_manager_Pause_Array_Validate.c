/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b678d0, Ghidra VA 02c678d0. */

void Gun_manager_Pause_Array_Validate(long param_1)

{
  long lVar1;
  int iVar2;
  long *plVar3;
  
  if (*(long *)(param_1 + 0x40) == 0) {
    iVar2 = 0x10;
  }
  else {
    iVar2 = *(int *)(*(long *)(param_1 + 0x40) + 0x18);
  }
  plVar3 = (long *)(param_1 + 0x60);
  if ((*plVar3 == 0) || (iVar2 != *(int *)(*plVar3 + 0x18))) {
    lVar1 = Gun_manager_Resize_Bool_0x6000a4b();
    *plVar3 = lVar1;
    Managed_WriteBarrier(plVar3,lVar1);
  }
  if (*(long *)(param_1 + 0x28) == 0) {
    iVar2 = 0;
  }
  else {
    iVar2 = *(int *)(*(long *)(param_1 + 0x28) + 0x18);
  }
  plVar3 = (long *)(param_1 + 0x68);
  if ((*plVar3 != 0) && (iVar2 == *(int *)(*plVar3 + 0x18))) {
    return;
  }
  lVar1 = Gun_manager_Resize_Bool_0x6000a4b();
  *plVar3 = lVar1;
  Managed_WriteBarrier(plVar3);
  return;
}

