/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2ba87fc, Ghidra VA 02ca87fc. */

int SpeedRun_manager_GetStageTreeCount(long param_1)

{
  int iVar1;
  
  iVar1 = *(int *)(param_1 + 0x30) * 0xf + 0x14;
  if (0xbd < iVar1) {
    iVar1 = 0xbe;
  }
  if (iVar1 < 0x15) {
    iVar1 = 0x14;
  }
  return iVar1;
}

