/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b8aac0, Ghidra VA 02c8aac0. */

void DailyGun_Awake(long param_1)

{
  undefined *puVar1;
  long lVar2;
  long *plVar3;
  
  puVar1 = PTR_DAT_05e62660;
  if ((bRam000000000625c3a3 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e62660);
    func_0x029f5a50(PTR_DAT_05e5d790);
    bRam000000000625c3a3 = 1;
  }
  lVar2 = *(long *)puVar1;
  if (*(int *)(lVar2 + 0xe4) == 0) {
    func_0x029f5bd0();
    lVar2 = *(long *)puVar1;
  }
  **(long **)(lVar2 + 0xb8) = param_1;
  Managed_WriteBarrier(*(undefined8 *)(*(long *)puVar1 + 0xb8),param_1);
  plVar3 = (long *)(param_1 + 0x20);
  if ((*plVar3 != 0) && (*(int *)(*plVar3 + 0x18) == 3)) {
    return;
  }
  lVar2 = func_0x029f5b40(*(undefined8 *)PTR_DAT_05e5d790,3);
  *plVar3 = lVar2;
  Managed_WriteBarrier(plVar3);
  return;
}

