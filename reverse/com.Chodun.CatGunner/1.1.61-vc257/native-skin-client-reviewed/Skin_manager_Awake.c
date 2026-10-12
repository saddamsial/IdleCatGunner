/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2ba7500, Ghidra VA 02ca7500. */

void Skin_manager_Awake(undefined8 param_1)

{
  undefined *puVar1;
  undefined8 *puVar2;
  
  puVar1 = PTR_DAT_05e5d4e0;
  if ((bRam000000000625c4e1 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e5d4e0);
    bRam000000000625c4e1 = 1;
  }
  puVar2 = (undefined8 *)(*(long *)(*(long *)puVar1 + 0xb8) + 0x10);
  *puVar2 = param_1;
  Managed_WriteBarrier(puVar2,param_1);
  return;
}

