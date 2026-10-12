/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b6d6e4, Ghidra VA 02c6d6e4. */

void StarUpgrade_manager_EnsureArrays(long param_1)

{
  undefined *puVar1;
  long lVar2;
  long *plVar3;
  
  if ((bRam000000000625c2a6 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e5d790);
    bRam000000000625c2a6 = 1;
  }
  puVar1 = PTR_DAT_05e5d790;
  plVar3 = (long *)(param_1 + 0x30);
  if ((*plVar3 == 0) || (*(int *)(param_1 + 0x20) != *(int *)(*plVar3 + 0x18))) {
    lVar2 = func_0x029f5b40(*(undefined8 *)PTR_DAT_05e5d790);
    *plVar3 = lVar2;
    Managed_WriteBarrier(plVar3,lVar2);
  }
  plVar3 = (long *)(param_1 + 0x38);
  if ((*plVar3 != 0) && (*(int *)(param_1 + 0x20) == *(int *)(*plVar3 + 0x18))) {
    return;
  }
  lVar2 = func_0x029f5b40(*(undefined8 *)puVar1);
  *plVar3 = lVar2;
  Managed_WriteBarrier(plVar3);
  return;
}

