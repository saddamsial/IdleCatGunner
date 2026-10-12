/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b2c8bc, Ghidra VA 02c2c8bc. */

void Adventure_manager_Awake(undefined8 param_1)

{
  undefined *puVar1;
  long lVar2;
  undefined8 *puVar3;
  
  puVar1 = PTR_DAT_05e5dd28;
  if ((bRam000000000625bff7 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e5dd28);
    bRam000000000625bff7 = 1;
  }
  lVar2 = *(long *)puVar1;
  if (*(int *)(lVar2 + 0xe4) == 0) {
    func_0x029f5bd0();
    lVar2 = *(long *)puVar1;
  }
  puVar3 = (undefined8 *)(*(long *)(lVar2 + 0xb8) + 0x10);
  *puVar3 = param_1;
  Managed_WriteBarrier(puVar3,param_1);
  return;
}

