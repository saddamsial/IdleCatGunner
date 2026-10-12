/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b0b798, Ghidra VA 02c0b798. */

void Particle_Polling_Awake(long param_1)

{
  undefined *puVar1;
  long *plVar2;
  int iVar3;
  
  if ((bRam000000000625be9a & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e62148);
    bRam000000000625be9a = 1;
  }
  puVar1 = PTR_DAT_05e62148;
  iVar3 = *(int *)(param_1 + 0x20);
  if (iVar3 == 0) {
    **(long **)(*(long *)PTR_DAT_05e62148 + 0xb8) = param_1;
    Managed_WriteBarrier(*(undefined8 *)(*(long *)puVar1 + 0xb8),param_1);
    iVar3 = *(int *)(param_1 + 0x20);
  }
  if (iVar3 == 1) {
    plVar2 = (long *)(*(long *)(*(long *)puVar1 + 0xb8) + 8);
    *plVar2 = param_1;
    Managed_WriteBarrier(plVar2,param_1);
    iVar3 = *(int *)(param_1 + 0x20);
  }
  if (iVar3 == 2) {
    plVar2 = (long *)(*(long *)(*(long *)puVar1 + 0xb8) + 0x10);
    *plVar2 = param_1;
    Managed_WriteBarrier(plVar2,param_1);
    return;
  }
  return;
}

