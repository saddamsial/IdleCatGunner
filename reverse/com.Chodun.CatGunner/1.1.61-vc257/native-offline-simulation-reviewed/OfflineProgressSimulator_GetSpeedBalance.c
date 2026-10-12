/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b08bd4, Ghidra VA 02c08bd4. */

int OfflineProgressSimulator_GetSpeedBalance(uint param_1)

{
  int iVar1;
  undefined *puVar2;
  long lVar3;
  
  puVar2 = PTR_DAT_05e5d4e8;
  if ((bRam000000000625be88 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e5d4e8);
    bRam000000000625be88 = 1;
  }
  lVar3 = *(long *)puVar2;
  if (9999 < (int)param_1) {
    param_1 = 10000;
  }
  if (*(int *)(lVar3 + 0xe4) == 0) {
    func_0x029f5bd0();
    lVar3 = *(long *)puVar2;
  }
  param_1 = param_1 & ((int)param_1 >> 0x1f ^ 0xffffffffU);
  if (((**(long **)(lVar3 + 0xb8) == 0) ||
      (lVar3 = *(long *)(**(long **)(lVar3 + 0xb8) + 0x48), lVar3 == 0)) ||
     (*(int *)(lVar3 + 0x18) <= (int)param_1)) {
    iVar1 = param_1 * 8 + 100;
  }
  else {
    iVar1 = *(int *)(lVar3 + (ulong)param_1 * 4 + 0x20);
  }
  return iVar1;
}

